Invoke-RestMethod `
	-Uri "$($env:HA_URL)/api/services/light/toggle" `
	-Method Post `
	-Headers @{Authorization = "Bearer $($env:HA_TOKEN)"} `
	-ContentType "application/json" `
	-Body (@{entity_id = "light.lightstrip_pracovna"} | ConvertTo-Json)
