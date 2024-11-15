Invoke-RestMethod `
	-Uri "$($env:HA_URL)/api/services/scene/turn_on" `
	-Method Post `
	-Headers @{Authorization = "Bearer $($env:HA_TOKEN)"} `
	-ContentType "application/json" `
	-Body (@{entity_id = "scene.pc_work"} | ConvertTo-Json)
