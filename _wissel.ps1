# Zet zipstraat25.be online of offline door de bronbranch van GitHub Pages te wisselen.
#   live    -> branch volledige-site (de volledige website)
#   offline -> branch main (de 'onder constructie'-pagina)
# Gebruik: .\_wissel.ps1 live | offline | status      (vereist: gh, ingelogd)
param([ValidateSet('live', 'offline', 'status')][string]$stand = 'status')
$api = 'repos/robijntje007/zipstraat25/pages'
if ($stand -ne 'status') {
  $tak = @{ live = 'volledige-site'; offline = 'main' }[$stand]
  gh api -X PUT $api -f "source[branch]=$tak" -f 'source[path]=/'
  if ($LASTEXITCODE) { exit $LASTEXITCODE }
}
$p = gh api $api | ConvertFrom-Json   # (geen --jq: Windows PowerShell 5.1 verwerkt de aanhalingstekens daarin verkeerd)
"bron: $($p.source.branch)   status: $($p.status)"
