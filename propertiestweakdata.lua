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
	
	self.properties.scrapyard = {
		texture = "textures/properties/",
		text = "msim_scrapyard",
		value = 15,
		min_value = 500000,
		feature = "msim_increase_max_props",
		feature_value = 3
	}
	
	self.properties.cliffmansion = {
		texture = "textures/properties/",
		text = "msim_cliffmansion",
		value = 60,
		min_value = 20000000,
		feature = "msim_increase_pprr",
		feature_value = 15
	}
	
	self.properties.gallery = {
		texture = "textures/properties/",
		text = "msim_gallery",
		value = 10,
		min_value = 250000,
		feature = "msim_increase_pprr",
		feature_value = 15
	}
	
	self.properties.penthouse = {
		texture = "textures/properties/",
		text = "msim_penthouse",
		value = 40,
		min_value = 7500000,
		feature = "msim_increase_pprr",
		feature_value = 15
	}
	
	self.properties.airport = {
		texture = "textures/properties/",
		text = "msim_airport",
		value = 70,
		min_value = 20000000,
		feature = "msim_increase_pprr",
		feature_value = 15
	}
	
	self.properties.nycapartment = {
		texture = "textures/properties/",
		text = "msim_nycapartment",
		value = 10,
		min_value = 400000,
		feature = "msim_increase_pprr",
		feature_value = 15
	}
	
	self.properties.slaughterhouse = {
		texture = "textures/properties/",
		text = "msim_slaughterhouse",
		value = 35,
		min_value = 2250000,
		feature = "msim_increase_pprr",
		feature_value = 15
	}
	
	self.properties.pallets = {
		texture = "textures/properties/",
		text = "msim_pallets",
		value = 30,
		min_value = 1750000,
		feature = "msim_increase_pprr",
		feature_value = 15
	}
	
	self.properties.diner = {
		texture = "textures/properties/",
		text = "msim_diner",
		value = 5,
		min_value = 100000,
		feature = "msim_increase_pprr",
		feature_value = 15
	}
	
	self.properties.common = {
		texture = "textures/properties/",
		text = "msim_common",
		value = 10,
		min_value = 350000,
		feature = "msim_increase_pprr",
		feature_value = 15
	}
	
	self.properties.dinoil = {
		texture = "textures/properties/",
		text = "msim_dinoil",
		value = 10,
		min_value = 450000,
		feature = "msim_increase_pprr",
		feature_value = 15
	}
	
	self.properties.clubhouse = {
		texture = "textures/properties/",
		text = "msim_clubhouse",
		value = 30,
		min_value = 1250000,
		feature = "msim_increase_pprr",
		feature_value = 15
	}
	
	self.properties.ranch = {
		texture = "textures/properties/",
		text = "msim_ranch",
		value = 45,
		min_value = 5750000,
		feature = "msim_increase_pprr",
		feature_value = 15
	}
	
	self.properties.teashop = {
		texture = "textures/properties/",
		text = "msim_teashop",
		value = 25,
		min_value = 1050000,
		feature = "msim_increase_pprr",
		feature_value = 15
	}
	
	self.properties.carshop = {
		texture = "textures/properties/",
		text = "msim_carshop",
		value = 40,
		min_value = 4475000,
		feature = "msim_increase_pprr",
		feature_value = 15
	}

	self.themes = {}

	self.themes.crimenet = {
		color = Color.white,
		borders = false,
		prefix = "textures/themes/crimenet"
	}

	self.themes.devtexture = {
		color = Color.red,
		borders = true,
		prefix = "textures/themes/devtexture"
	}
end

tweak_data.msim = tweak_data.msim or PropertiesTweakData:new()
