PropertiesTweakData = PropertiesTweakData or class()



function PropertiesTweakData:init()

	self.properties = {}
	self.features = {}
	self.rates = {}

		self.properties.nightclub = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/nightclub",
			text = "nightclub",
			value = 25,
			min_value = 25000,
			feature = "N/A"
		}

		self.properties.jewstore = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/jewelrystore",
			text = "jewstore",
			value = 10,
			min_value = 100000,
			feature = "N/A 2"
		}

		self.properties.yacht = {
			texture = "guis/dlcs/bro/textures/pd2/crimenet/yacht",
			text = "yacht",
			value = 150,
			min_value = 70000000000,
			feature = "N/A 3"
		}

		self.properties.template = {
			texture = "textures/properties/template",
			text = "template",
			value = 1,
			min_value = 7,
			feature = "TODO"
		}
end

tweak_data.msim = tweak_data.msim or PropertiesTweakData:new()
