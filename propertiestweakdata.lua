PropertiesTweakData = PropertiesTweakData or class()

function PropertiesTweakData:init()
	self.properties = {}

	--[[self.properties.template = {
		texture = "textures/properties/template",
		text = "msim_template",
		value = 1,
		min_value = 7,
		feature = "msim_increase_sptoxp_rate",
		feature_value = 1
	}]]
	--

	self.properties.nightclub = {
		texture = "guis/dlcs/bro/textures/pd2/crimenet/nightclub",
		text = "msim_nightclub",
		value = 20,
		min_value = 300000,
		feature = "msim_increase_oftosp_rate",
		feature_value = 10
	}

	self.properties.jewstore = {
		texture = "guis/dlcs/bro/textures/pd2/crimenet/jewelrystore",
		text = "msim_jewstore",
		value = 15,
		min_value = 500000,
		feature = "msim_increase_oftosp_rate",
		feature_value = 5
	}

	self.properties.yacht = {
		texture = "guis/dlcs/bro/textures/pd2/crimenet/yacht",
		text = "msim_yacht",
		value = 25,
		min_value = 7000000,
		feature = "msim_increase_oftosp_rate",
		feature_value = 20
	}

	self.properties.mansion = {
		texture = "guis/dlcs/bro/textures/pd2/crimenet/mansion",
		text = "msim_mansion",
		value = 30,
		min_value = 25000000,
		feature = "msim_increase_oftosp_rate",
		feature_value = 25
	}

	self.properties.laundromat = {
		texture = "guis/dlcs/bro/textures/pd2/crimenet/safehouse_old",
		text = "msim_laundromat",
		value = 10,
		min_value = 150000,
		feature = "msim_increase_sptocc_rate",
		feature_value = 0.02
	}

	self.properties.barn = {
		texture = "guis/dlcs/bro/textures/pd2/crimenet/goatsim_02",
		text = "msim_barn",
		value = 15,
		min_value = 75000,
		feature = "msim_increase_sptocc_rate",
		feature_value = 0.03
	}

	self.properties.motel = {
		texture = "guis/dlcs/bro/textures/pd2/crimenet/hotline_miami_01",
		text = "msim_motel",
		value = 20,
		min_value = 1500000,
		feature = "msim_increase_sptocc_rate",
		feature_value = 0.05
	}

	self.properties.scrapyard = {
		texture = "guis/dlcs/bro/textures/pd2/crimenet/bigoil_01",
		text = "msim_scrapyard",
		value = 10,
		min_value = 500000,
		feature = "msim_increase_sptocc_rate",
		feature_value = 0.01
	}

	self.properties.cliffmansion = {
		texture = "guis/dlcs/bro/textures/pd2/crimenet/bigoil_02",
		text = "msim_cliffmansion",
		value = 35,
		min_value = 20000000,
		feature = "msim_increase_sptoxp_rate",
		feature_value = 5
	}

	self.properties.gallery = {
		texture = "textures/properties/msim_gallery",
		text = "msim_gallery",
		value = 15,
		min_value = 250000,
		feature = "msim_increase_sptoxp_rate",
		feature_value = 1
	}

	self.properties.penthouse = {
		texture = "textures/properties/msim_penthouse",
		text = "msim_penthouse",
		value = 25,
		min_value = 7500000,
		feature = "msim_increase_sptoxp_rate",
		feature_value = 3
	}

	self.properties.airport = {
		texture = "guis/dlcs/bro/textures/pd2/crimenet/firestarter_01",
		text = "msim_airport",
		value = 40,
		min_value = 20000000,
		feature = "msim_increase_sptoxp_rate",
		feature_value = 7
	}

	self.properties.nycapartment = {
		texture = "textures/properties/msim_nycapartment",
		text = "msim_nycapartment",
		value = 10,
		min_value = 400000,
		feature = "msim_discount_props",
		feature_value = 3
	}

	self.properties.slaughterhouse = {
		texture = "textures/properties/msim_slaughterhouse",
		text = "msim_slaughterhouse",
		value = 20,
		min_value = 2250000,
		feature = "msim_discount_props",
		feature_value = 10
	}

	self.properties.pallets = {
		texture = "textures/properties/msim_pallets",
		text = "msim_pallets",
		value = 15,
		min_value = 1750000,
		feature = "msim_discount_props",
		feature_value = 7
	}

	self.properties.diner = {
		texture = "textures/properties/msim_diner",
		text = "msim_diner",
		value = 10,
		min_value = 100000,
		feature = "msim_discount_props",
		feature_value = 5
	}

	self.properties.common = {
		texture = "textures/properties/msim_common",
		text = "msim_common",
		value = 10,
		min_value = 350000,
		feature = "msim_increase_pprr",
		feature_value = 10
	}

	self.properties.dinoil = {
		texture = "textures/properties/msim_dinoil",
		text = "msim_dinoil",
		value = 15,
		min_value = 450000,
		feature = "msim_increase_pprr",
		feature_value = 15
	}

	self.properties.clubhouse = {
		texture = "guis/dlcs/bro/textures/pd2/crimenet/biker_01",
		text = "msim_clubhouse",
		value = 20,
		min_value = 1250000,
		feature = "msim_increase_pprr",
		feature_value = 25
	}

	self.properties.ranch = {
		texture = "guis/dlcs/ranc/textures/pd2/crimenet/ranc",
		text = "msim_ranch",
		value = 25,
		min_value = 5750000,
		feature = "msim_increase_max_props",
		feature_value = 4
	}

	self.properties.teashop = {
		texture = "guis/dlcs/chas/textures/pd2/crimenet/chas",
		text = "msim_teashop",
		value = 20,
		min_value = 1050000,
		feature = "msim_increase_max_props",
		feature_value = 3
	}

	self.properties.carshop = {
		texture = "textures/properties/msim_carshop",
		text = "msim_carshop",
		value = 30,
		min_value = 4475000,
		feature = "msim_increase_max_props",
		feature_value = 5
	}

	self.themes = {}

	self.themes.crimenet = {
		color = Color.white,
		borders = false,
		prefix = "textures/themes/crimenet",
		boxgui = true
	}

	self.themes.bigbucks = {
		color = Color(133, 187, 101) / 255,
		borders = true,
		prefix = "textures/themes/bigbucks",
		boxgui = false
	}

	self.themes.simulator = {
		color = Color(218, 165, 32) / 255,
		borders = false,
		prefix = "textures/themes/simulator",
		boxgui = false
	}

	self.themes.devtexture = {
		color = Color(0, 122, 243) / 255,
		borders = true,
		prefix = "textures/themes/devtexture",
		boxgui = false
	}
end

tweak_data.msim = tweak_data.msim or PropertiesTweakData:new()
