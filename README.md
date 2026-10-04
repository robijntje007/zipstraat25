# Zipstraat 25 — website

Website voor de verkoop van de woning **Zipstraat 25, 3900 Pelt (België)**.

- **Live:** https://zipstraat25.be
- **Hosting:** GitHub Pages, vanaf branch `main`, map `/ (root)`
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
| `CNAME` | Vertelt GitHub Pages dat het domein `zipstraat25.be` is. **Niet verwijderen.** |
| `sitemap.xml`, `robots.txt` | Voor Google |

## Nog aan te vullen

1. **EPC en stedenbouwkundige info** — in de sectie `INFO` van `index.html` staat bij
   twaalf velden `In aanvraag`. In Vlaanderen is het wettelijk verplicht om bij
   publiciteit voor de verkoop minstens het **EPC-label** en de **energiescore
   (kWh/m²jaar)** te vermelden. Vervang de waarden zodra de attesten binnen zijn.
2. **Videorondleiding** — de sectie `VIDEO` toont nu een tijdelijke placeholder
   (`dQw4w9WgXcQ`). Vervang dat ID door het echte YouTube-ID vóór de woning
   publiek gedeeld wordt.

De vraagprijs (€ 420.000) staat ingevuld in de hero, de kerncijfers, de social
preview en de structured data. Wijzigt de prijs, zoek dan op `420` in `index.html`
en pas alle vier de plekken aan.

## Bezoekers tellen

De teller staat klaar maar is nog uitgeschakeld. Activeren:

1. Maak een gratis account op https://www.goatcounter.com/signup en kies een code,
   bijvoorbeeld `zipstraat25`.
2. Open `index.html`, zoek onderaan het blok `BEZOEKERSTELLER`, vervang `JOUWCODE`
   door je eigen code en verwijder de twee commentaarregels eromheen.
3. Plak diezelfde scriptregel ook onderaan in `beleving.html`.
4. Je statistieken staan daarna op `https://JOUWCODE.goatcounter.com`.

GoatCounter plaatst **geen cookies** en bewaart geen persoonsgegevens, dus je hebt
geen cookiebanner nodig. Google Analytics zou die wél vereisen.

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
