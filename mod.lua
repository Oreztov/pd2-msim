blt.forcepcalls(true)

if not msim then

	_G.msim = {}

	msim.mod_path = ModPath
	msim.save_path = SavePath
	msim.settings = {
		pp = 73,
		propsmax = 3,
		propsowned = 2,
		keys = {
			menu = "m"
		}
	}

	function msim:check_create_menu()

		if self.menu then
			return
		end

		self.menu_title_size = 22
		self.menu_items_size = 18
		self.menu_padding = 16
		self.menu_background_color = Color.black:with_alpha(0.75)
		self.menu_accent_color = BeardLib.Options:GetValue("MenuColor"):with_alpha(0.75)
		self.menu_highlight_color = self.menu_accent_color:with_alpha(0.075)
		self.menu_grid_item_color = Color.black:with_alpha(0.5)

		self.menu = MenuUI:new({
			name = "msimMenu",
			layer = 1000,
			background_blur = true,
			animate_toggle = true,
			text_offset = 3,
			show_help_time = 0.5,
			border_size = 1,
			accent_color = self.menu_accent_color,
			highlight_color = self.menu_highlight_color,
			--localized = true,
			use_default_close_key = true,
			disable_player_controls = true
		})

		local menu_w = self.menu._panel:w()
		local menu_h = self.menu._panel:h()

		self._menu_w_left = menu_w / 3.5 - self.menu_padding
		self._menu_w_right = menu_w - self._menu_w_left - self.menu_padding * 2

		local menu = self.menu:Menu({
			background_color = self.menu_background_color
		})

		local navbar = menu:Holder({
			name = "navbar",
			align_method = "grid",
			border_bottom = true,
			border_size = 20,
			inherit_values = {
				size_by_text = true,
				font_size = "35",
				offset = 20,
				full_bg_color = self.menu_background_color
			}
		})

		local pageholder = menu:Holder({
			name = "pageholder",
			align_method = "centered_grid",
			offset = {50, 10},
			inherit_values = {
				size_by_text = true
			}
		})

		self._pages = {
			props = MSIMPropertyPage:new(self, navbar, pageholder),
			xchange = MSIMExchangePage:new(self, navbar, pageholder),
			stats = MSIMStatisticsPage:new(self, navbar, pageholder)
		}

		self.pp_text = navbar:Divider({
			name = "pp_text",
			position = "Right",
			text = "PP: " ..tostring(msim.settings.pp) .."%"
		})
	end

	function msim:switch_pages(pagename, item)
		for name, page in pairs(self._pages) do
			page._menu:SetVisible(pagename == name)
			page._button:SetBorder({top = pagename == name})
		end
	end

	local floor = math.floor

	function msim:set_menu_state(enabled)
		self:check_create_menu()
		if enabled and not self.menu:Enabled() then
			self.menu:Enable()
		elseif not enabled then
			self.menu:Disable()
		end
	end

	Hooks:Add("MenuManagerPostInitialize", "MenuManagerPostInitializemsim", function(menu_manager, nodes)

		MenuCallbackHandler.msim_open_menu = function ()
			msim:set_menu_state(true)
		end

		MenuHelperPlus:AddButton({
			id = "msimMenu",
			title = "msim_menu_main_name",
			desc = "msim_menu_main_desc",
			node_name = "blt_options",
			callback = "msim_open_menu"
		})

		local mod = BLT.Mods:GetMod(msim.mod_path:gsub(".+/(.+)/$", "%1"))
		if not mod then
			log("[msim] ERROR: Could not get mod object to register keybinds!")
			return
		end
		BLT.Keybinds:register_keybind(mod, { id = "msim_menu", allow_menu = true, allow_game = true, show_in_menu = false, callback = function()
			msim:set_menu_state(true)
		end }):SetKey(msim.settings.keys.menu)

	end)

end

MSIMPropertyPage = MSIMPropertyPage or class()

function MSIMPropertyPage:init(parent, navbar, pageholder)
	self._button = navbar:Button({
		name = "Properties",
		text = "Properties",
		border_size = 3,
		border_top = true,
		on_callback = ClassClbk(parent, "switch_pages", "props")
	})

	self._menu = pageholder:Menu({
		name = "propsholder",
		scrollbar = true,
		auto_height = true
	})

	local ownedheader = self._menu:DivGroup({
		name = "ownedheader",
		text = "Owned Properties",
		align_method = "centered_grid",
		border_bottom = true,
		border_size = 5,
		font_size = 25,
		inherit_values = {
			font_size = 25
		}
	})

	local ownedtoolbar = ownedheader:GetToolbar()
	local ownedcount = ownedtoolbar:Divider({
		name = "ownedcount",
		offset = {50, 0},
		size_by_text = true,
		text = tostring(msim.settings.propsowned) .. "/" .. tostring(msim.settings.propsmax) .. " Owned",
		text_align = "right"
	})

end

MSIMExchangePage = MSIMExchangePage or class()

function MSIMExchangePage:init(parent, navbar, pageholder)
	self._button = navbar:Button({
		name = "Exchange",
		text = "Exchange",
		border_size = 3,
		on_callback = ClassClbk(parent, "switch_pages", "xchange")
	})

	self._menu = pageholder:Menu({
		name = "xchangeholder",
		scrollbar = true,
		auto_height = true,
		visible = "false"
	})
end

MSIMStatisticsPage = MSIMStatisticsPage or class()

function MSIMStatisticsPage:init(parent, navbar, pageholder)
	self._button = navbar:Button({
		name = "Statistics",
		text = "Statistics",
		border_size = 3,
		on_callback = ClassClbk(parent, "switch_pages", "stats")
	})

	self._menu = pageholder:Menu({
		name = "statsholder",
		scrollbar = true,
		auto_height = true,
		visible = "false"
	})
end