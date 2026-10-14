# Zipstraat 25 — website

Website voor de verkoop van de woning **Zipstraat 25, 3900 Pelt (België)**.

- **Live:** https://zipstraat25.be
- **Hosting:** GitHub Pages, map `/ (root)`. Bronbranch `volledige-site` = live, `main` = onder constructie (zie "Online of offline zetten")
- **Techniek:** statische HTML/CSS. Geen build, geen framework, geen afhankelijkheden.
  Je kunt `index.html` gewoon dubbelklikken om de site lokaal te bekijken.

## Bestanden

| Bestand | Wat het doet |
|---|---|
| `index.html` | De hoofdpagina: hero, kerncijfers, beschrijving, galerij, info, ligging, contact |
| `beleving.html` | Verhalende pagina met de getuigenis van de bewoners |
| `style.css` | Gedeelde opmaak van beide pagina's |
| `img/full/` | Foto's op 2000 px — gebruikt in de lightbox en voor de grote beelden |
| `img/thumb/` | Foto's op 900 px — gebruikt in het galerijraster |
| `img/photos.json` | Lijst van alle foto's met ruimte en afmetingen |
| `_wissel.ps1` | Zet de site online of offline (zie "Online of offline zetten") |
| `CNAME` | Vertelt GitHub Pages dat het domein `zipstraat25.be` is. **Niet verwijderen.** |
| `sitemap.xml`, `robots.txt` | Voor Google |

## Nog aan te vullen

1. **Stedenbouwkundige info bevestigen** — de vier infovelden Stedenbouwkundige
   bestemming, Stedenbouwkundige vergunning, Dagvaarding handhaving en Voorkooprecht
   tonen nu PLACEHOLDER-waarden (Woongebied / Vergunning verleend / Geen dagvaarding
   of herstelvordering / Geen voorkooprecht). Bevestig ze met het stedenbouwkundig
   uittreksel van gemeente Pelt vóór de site live gaat (zoek op `PLACEHOLDER` in
   `index.html`).
2. **Videorondleiding** — de sectie `VIDEO` toont nu een tijdelijke placeholder
   (`dQw4w9WgXcQ`). Vervang dat ID door het echte YouTube-ID vóór de woning
   publiek gedeeld wordt.

De vraagprijs (€ 445.000) staat ingevuld in de hero, de kerncijfers, de social
preview en de structured data. Wijzigt de prijs, zoek dan op `445` in `index.html`
en pas alle vier de plekken aan.

## Bezoekers tellen

De GoatCounter-teller staat actief op alle pagina's, met code `zipstraat25`.
Eenmalige stap: maak een gratis account op https://www.goatcounter.com/signup met
exact die code `zipstraat25`. Is de code al bezet, kies dan een andere en vervang
`zipstraat25.goatcounter.com` in `index.html`, `beleving.html` en de
onder-constructie-pagina op branch `main`.

Je statistieken staan op https://zipstraat25.goatcounter.com.

GoatCounter plaatst **geen cookies** en bewaart geen persoonsgegevens, dus je hebt
geen cookiebanner nodig. Google Analytics zou die wél vereisen.

## Online of offline zetten

De site leeft op twee branches, die allebei het bestand `CNAME` bevatten:

- `volledige-site` — de volledige website
- `main` — de 'onder constructie'-pagina

Welke branch GitHub Pages toont, bepaalt of de site online of offline is:

```powershell
.\_wissel.ps1 live      # toont de volledige site (branch volledige-site)
.\_wissel.ps1 offline   # toont de onder-constructie-pagina (branch main)
.\_wissel.ps1 status    # toont welke branch nu gepubliceerd wordt
```

Het wisselen duurt ongeveer een minuut. Wijzigingen aan de volledige site horen op
branch `volledige-site` en moeten gepusht worden. Zonder het script kan het ook via
GitHub → Settings → Pages → Branch.

## Een wijziging publiceren

```bash
git add -A
git commit -m "Beschrijf hier je wijziging"
git push
```

GitHub Pages zet de nieuwe versie binnen ongeveer een minuut online.
Zie je je wijziging niet? Ververs met `Ctrl+F5` om de cache van je browser te omzeilen.

## Foto's vervangen of toevoegen

De foto's in `img/` zijn verkleinde versies van de originelen (van 1,4 GB naar 31 MB).
Zet nooit de onbewerkte cameraoriginelen rechtstreeks in deze map — die zijn tot 36 MB
per stuk en maken de site onbruikbaar traag.

## DNS-instellingen

Beheerd bij **Theory7** (https://my.theory7.net). De zone moet deze records bevatten:

| Type | Naam | Waarde |
|---|---|---|
| A | `@` | `185.199.108.153` |
| A | `@` | `185.199.109.153` |
| A | `@` | `185.199.110.153` |
| A | `@` | `185.199.111.153` |
| AAAA | `@` | `2606:50c0:8000::153` |
| AAAA | `@` | `2606:50c0:8001::153` |
| AAAA | `@` | `2606:50c0:8002::153` |
| AAAA | `@` | `2606:50c0:8003::153` |
| CNAME | `www` | `robijntje007.github.io.` |

Controleren vanaf de opdrachtregel:

```bash
nslookup zipstraat25.be 8.8.8.8
nslookup www.zipstraat25.be 8.8.8.8
```
