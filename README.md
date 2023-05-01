# [pd2-msim](https://modworkshop.net/mod/42084)
## INSTALL TO MODS
Payday 2 - The Management Simulator (MSIM) aims to improve the economy of the game by adding a fun management menu and giving currency more uses.
Read the ingame guide for more info.
# How to add more properties:
## Texture
Get a location from the game that makes sense to invest in.
Take a screenshot of it and process it through the crimenet icon filter:
https://modworkshop.net/mod/23634
Export as .dss with DXT5, then rename the extension to .texture
Drop the texture into pd2-msim/assets/textures/properties. Name it appropriately.
## propertiestweakdata
Open proertiestweakdata.lua, this is where you'll define the new property.
Copy and paste another property and begin editing the values.
* self.properties.[PROPERTY ID] {  -- ID of the property used internally.
* texture = "textures/properties/[TEXTURE NAME]", -- the filepath to your texture
* text = "msim_[PROPERTY NAME]", -- The localization string_id
* value = [VALUE PRECENT], -- The precentage of your spending cash that the property is valued at. Is also PP cost of buying
* min_value = [MINIMUM VALUE], -- The minimum valur that the property will cost no matter your spending cash
* feature = "[FEATURE ID]", -- The special perk of the property. [List of features](https://github.com/Oreztov/pd2-msim/new/main?readme=1#list-of-property-features)
* feature_value = [FEATURE VALUE] -- The amount of something the property does. I.e. discount properties by [FEATURE VALUE]%
## Localization
Now to localize the property name: Open loc/[LANGUAGE].yaml, add a newline and the string
* msim_[PROPERTY NAME]: "[LOCALIZED PROPERTY NAME]"
## Final step
Final step: Launch the game, go into the BeardLib mods manager and find The Management Simulator.
Click the settings icon on the mod and enable developer mode, when you restart, the add.xmk for your texture will be auto-generated.
That's it! Your property is now in the pool of random properties available to purchase.
Make sure to balance the values, and to have a wide range of features.
## List of property features
* msim_increase_max_props: "Increases maximum amount of properties owned by " 
* msim_increase_oftosp_rate: "Improves Offshore Funds to Spending Cash conversion rate by " 
* msim_increase_sptocc_rate: "Improves Spending Cash to Continental Coins conversion rate by " 
* msim_increase_sptoxp_rate: "Improves Spending Cash to Experience Points conversion rate by " 
* msim_increase_pprr: "Increases the Purchasing Power Recovery Rate (PPRR) by " 
* msim_discount_props: "Discounts property costs by "
# Credits
* Made by Oreztov
* With help from Xeletron and Hoppip
* Additional properties by TimeForSteve
