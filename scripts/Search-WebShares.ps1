param(
	[string]$Search
)

$urls = @(
	"https://www.edisk.cz/vyhledat/?search=<s>",
	"https://datoid.cz/s/<s>",
	"https://sdilej.cz/<s>/s",
	"https://webshare.cz/#/search?what=<s>",
	"https://fastshare.cloud/<s>/s",
	"https://prehraj.to/hledej/<s>"
)

foreach ($url in $urls) {
	$url = $url -replace "<s>","$Search"
	Start-Process $url
}