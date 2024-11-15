Invoke-RestMethod `
	-Uri "$($env:HA_URL)/api/services" `
	-Method Get `
	-Headers @{Authorization = "Bearer $($env:HA_TOKEN)"} `
	-ContentType "application/json"


# Invoke-RestMethod `
# 	-Uri "$($env:HA_URL)/api/services/scene/turn_on" `
# 	-Method Post `
# 	-Headers @{Authorization = "Bearer $($env:HA_TOKEN)"} `
# 	-ContentType "application/json" `
# 	-Body (@{entity_id = "scene.pc_gaming"} | ConvertTo-Json)

# $lightstripState = Invoke-RestMethod `
# 	-Uri "$($env:HA_URL)/api/states/light.lightstrip_pracovna" `
# 	-Method Get `
# 	-Headers @{Authorization = "Bearer $($env:HA_TOKEN)"} `
# 	-ContentType "application/json"

# if ($lightstripState.state) {
# 	Invoke-RestMethod `
# 		-Uri "$($env:HA_URL)/api/services/$($Domain)/$($Service)" `
# 		-Method Post `
# 		-Headers @{Authorization = "Bearer $($env:HA_TOKEN)"} `
# 		-ContentType "application/json" `
# 		-Body (@{entity_id = $EntityId} | ConvertTo-Json)
# }

# $mon1 = Invoke-RestMethod `
# 	-Uri "$($env:HA_URL)/api/states/switch.monitor_1_l" `
# 	-Method Get `
# 	-Headers @{Authorization = "Bearer $($env:HA_TOKEN)"} `
# 	-ContentType "application/json"

# $mon2 = Invoke-RestMethod `
# 	-Uri "$($env:HA_URL)/api/states/switch.monitor_2_c" `
# 	-Method Get `
# 	-Headers @{Authorization = "Bearer $($env:HA_TOKEN)"} `
# 	-ContentType "application/json"

# $mon3 = Invoke-RestMethod `
# 	-Uri "$($env:HA_URL)/api/states/switch.monitor_3_p" `
# 	-Method Get `
# 	-Headers @{Authorization = "Bearer $($env:HA_TOKEN)"} `
# 	-ContentType "application/json"

# Invoke-RestMethod `
# 	-Uri "$($env:HA_URL)/api/services/switch/turn_on" `
# 	-Method Post `
# 	-Headers @{Authorization = "Bearer $($env:HA_TOKEN)"} `
# 	-ContentType "application/json" `
# 	-Body (@{entity_id = "switch.monitor_2_c"} | ConvertTo-Json)

# Invoke-RestMethod `
# 	-Uri "$($env:HA_URL)/api/services/switch/turn_on" `
# 	-Method Post `
# 	-Headers @{Authorization = "Bearer $($env:HA_TOKEN)"} `
# 	-ContentType "application/json" `
# 	-Body (@{entity_id = "switch.monitor_2_c"} | ConvertTo-Json)

# Invoke-RestMethod `
# 	-Uri "$($env:HA_URL)/api/services/switch/turn_on" `
# 	-Method Post `
# 	-Headers @{Authorization = "Bearer $($env:HA_TOKEN)"} `
# 	-ContentType "application/json" `
# 	-Body (@{entity_id = "switch.monitor_2_c"} | ConvertTo-Json)