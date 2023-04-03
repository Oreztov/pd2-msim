PropertiesTweakData = PropertiesTweakData or class()



function PropertiesTweakData:init()

	self.properties = {}

		self.properties.nightclub = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/nightclub",
			text = "nightclub",
			value = 15,
			min_value = 300000,
			feature = "increase_oftosp_rate",
			feature_value = 10
		}

		self.properties.jewstore = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/jewelrystore",
			text = "jewstore",
			value = 20,
			min_value = 500000,
			feature = "increase_pprr",
			feature_value = 10
		}

		self.properties.yacht = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/yacht",
			text = "yacht",
			value = 50,
			min_value = 7000000,
			feature = "increase_sptocc_rate",
			feature_value = 0.01
		}

		self.properties.mansion = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/mansion",
			text = "mansion",
			value = 75,
			min_value = 25000000,
			feature = "increase_pprr",
			feature_value = 20
		}

		self.properties.laundromat = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/safehouse_old",
			text = "laundromat",
			value = 10,
			min_value = 150000,
			feature = "discount_props",
			feature_value = 5
		}

		self.properties.barn = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/goatsim_02",
			text = "barn",
			value = 5,
			min_value = 75000,
			feature = "increase_max_props",
			feature_value = 2
		}

		self.properties.motel = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/hotline_miami_01",
			text = "motel",
			value = 25,
			min_value = 1500000,
			feature = "increase_max_props",
			feature_value = 4
		}

		self.properties.template = {
			texture = "textures/properties/template",
			text = "template",
			value = 1,
			min_value = 7,
			feature = "increase_sptoxp_rate",
			feature_value = 1
		}
end

tweak_data.msim = tweak_data.msim or PropertiesTweakData:new()
