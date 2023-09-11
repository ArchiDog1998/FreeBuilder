local package = ...

local counter = 0
local counter1 = 0
local tbl = Map.GetSettings()
local resourcemode = tbl['resource_richness']

function package:init()
    for k, v in pairs( data.techs ) do
        if data.techs[ k ].progress_count == nil then
        else
        x = data.techs[ k ].progress_count
        data.techs[ k ].progress_count = x*0
        end
    end

    for k, v in pairs( data.components ) do
        if data.components[ k ].production_recipe == nil then
        else
            data.components[ k ].production_recipe =  CreateProductionRecipe({ }, { c_fabricator = 5 })
        end
    end

    for k, v in pairs( data.frames ) do
        if data.frames[ k ].construction_recipe == nil then
        else
            data.frames[ k ].construction_recipe = CreateConstructionRecipe({ }, 5)
        end

        if data.frames[ k ].production_recipe == nil then
        else
            data.frames[ k ].production_recipe =  CreateProductionRecipe({ }, { c_fabricator = 5 })
        end
    end

    while #data.land_features >= 29 and counter1 < 2 do
        table.remove(data.land_features, 29)
        counter1 = counter1 + 1
    end


	if counter < 3 and resourcemode == 4
		then
			while #data.land_features >= 2 and counter < 3 do
				table.remove(data.land_features, 2) -- remove small crystals
				counter = counter + 1
			end
	end		
	if counter >= 3 and counter < 5
		then
			while #data.land_features >= 3 and counter < 5 do
				table.remove(data.land_features, 3) -- remove small metals
				counter = counter + 1
			end
	end
	if counter >= 5 and counter < 7
	then
		while #data.land_features >= 4 and counter < 7 do
			table.remove(data.land_features, 4) -- remove small silica
			counter = counter + 1
		end
	end
    if counter >= 7 and counter < 9
	then
		while #data.land_features >= 5 and counter < 7 do
			table.remove(data.land_features, 5) -- remove small laterite
			counter = counter + 1
		end
	end

    if counter >= 9 and counter < 10
	then
		while #data.land_features >= 7 and counter < 10 do
			table.remove(data.land_features, 7) -- remove small laterite
			counter = counter + 1
		end
	end
end