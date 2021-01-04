-- data-final-fixes

constr_speed_mult = settings.startup["crawler-construction-speed"].value
cargo_speed_mult = settings.startup["crawler-cargo-speed"].value




if data.raw["construction-robot"]["angels-construction-robot"] then
    data.raw["construction-robot"]["angels-construction-robot"].speed = data.raw["construction-robot"]["angels-construction-robot"].speed * cargo_speed_mult
end

if data.raw["logistic-robot"]["cargo-robot"] then
    data.raw["logistic-robot"]["cargo-robot"].speed = data.raw["logistic-robot"]["cargo-robot"].speed * constr_speed_mult
end

if data.raw["logistic-robot"]["cargo-robot2"] then
    data.raw["logistic-robot"]["cargo-robot2"].speed = data.raw["logistic-robot"]["cargo-robot2"].speed * constr_speed_mult
end



logist_area1 	= settings.startup["angels-zone-expander-supply-area"].value
logist_connect1 = settings.startup["angels-zone-expander-connect-distance"].value
if (logist_connect1<logist_area1/2) then logist_connect1=logist_area1/2 end
logist_area2 	= settings.startup["angels-zone-expander-2-supply-area"].value
logist_connect2 = settings.startup["angels-zone-expander-2-connect-distance"].value
if (logist_connect2<logist_area2/2) then logist_connect2=logist_area2/2 end
logist_area3 	= settings.startup["angels-zone-expander-3-supply-area"].value
logist_connect3 = settings.startup["angels-zone-expander-3-connect-distance"].value
if (logist_connect3<logist_area3/2) then logist_connect3=logist_area3/2 end


constr_area1 	= settings.startup["angels-construction-zone-expander-supply-area"].value
constr_connect1 = settings.startup["angels-construction-zone-expander-connect-distance"].value
constr_area2 	= settings.startup["angels-construction-zone-expander-supply-area"].value
constr_connect2 = settings.startup["angels-construction-zone-expander-connect-distance"].value
constr_area3 	= settings.startup["angels-construction-zone-expander-supply-area"].value
constr_connect3 = settings.startup["angels-construction-zone-expander-connect-distance"].value


data.raw["roboport"]["angels-zone-expander"].logistics_radius = logist_area1/2
data.raw["roboport"]["angels-zone-expander"].logistics_connection_distance =  logist_connect1

data.raw["roboport"]["angels-zone-expander-2"].logistics_radius = logist_area2/2
data.raw["roboport"]["angels-zone-expander-2"].logistics_connection_distance =  logist_connect2

data.raw["roboport"]["angels-zone-expander-3"].logistics_radius = logist_area3/2
data.raw["roboport"]["angels-zone-expander-3"].logistics_connection_distance =  logist_connect3



data.raw["roboport"]["angels-construction-zone-expander"].construction_radius = constr_area1/2  
data.raw["roboport"]["angels-construction-zone-expander"].logistics_connection_distance =  constr_connect1  

data.raw["roboport"]["angels-construction-zone-expander-2"].construction_radius = constr_area2/2   
data.raw["roboport"]["angels-construction-zone-expander-2"].logistics_connection_distance =  constr_connect2 

data.raw["roboport"]["angels-construction-zone-expander-3"].construction_radius = constr_area2/2   
data.raw["roboport"]["angels-construction-zone-expander-3"].logistics_connection_distance =  constr_connect2 

