PropertiesTweakData = PropertiesTweakData or class()



function PropertiesTweakData:init()

	self.properties = {}

		self.properties.template = {
			texture = "textures/properties/template",
			text = "msim_template",
			value = 1,
			min_value = 7,
			feature = "msim_increase_sptoxp_rate",
			feature_value = 1
		}

		self.properties.nightclub = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/nightclub",
			text = "msim_nightclub",
			value = 15,
			min_value = 300000,
			feature = "msim_increase_oftosp_rate",
			feature_value = 10
		}

		self.properties.jewstore = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/jewelrystore",
			text = "msim_jewstore",
			value = 20,
			min_value = 500000,
			feature = "msim_increase_pprr",
			feature_value = 10
		}

		self.properties.yacht = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/yacht",
			text = "msim_yacht",
			value = 50,
			min_value = 7000000,
			feature = "msim_increase_sptocc_rate",
			feature_value = 0.01
		}

		self.properties.mansion = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/mansion",
			text = "msim_mansion",
			value = 75,
			min_value = 25000000,
			feature = "msim_increase_pprr",
			feature_value = 20
		}

		self.properties.laundromat = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/safehouse_old",
			text = "msim_laundromat",
			value = 10,
			min_value = 150000,
			feature = "msim_discount_props",
			feature_value = 5
		}

		self.properties.barn = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/goatsim_02",
			text = "msim_barn",
			value = 5,
			min_value = 75000,
			feature = "msim_increase_max_props",
			feature_value = 2
		}

		self.properties.motel = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/hotline_miami_01",
			text = "msim_motel",
			value = 25,
			min_value = 1500000,
			feature = "msim_increase_max_props",
			feature_value = 4
		}

		
end

tweak_data.msim = tweak_data.msim or PropertiesTweakData:new()
