Param(
	$Domain = "light",
	$Service = "turn_on",
	$EntityId = "light.svetlo_loznice"
)

# Invoke-RestMethod `
# 	-Uri "$($env:HA_URL)/api/services" `
# 	-Method Get `
# 	-Headers @{Authorization = "Bearer $($env:HA_TOKEN)"} `
# 	-ContentType "application/json" `

Invoke-RestMethod `
	-Uri "$($env:HA_URL)/api/services/$($Domain)/$($Service)" `
	-Method Post `
	-Headers @{Authorization = "Bearer $($env:HA_TOKEN)"} `
	-ContentType "application/json" `
	-Body (@{entity_id = $EntityId} | ConvertTo-Json)
