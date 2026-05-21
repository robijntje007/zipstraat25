# Livegang Plan: Zipstraat 25 Website

Dit document bevat de volledige instructies om de website van **Zipstraat 25** live te zetten via GitHub Pages, inclusief de configuratie voor een eigen domeinnaam.

## Status Update
- De website is volledig vernieuwd met een modern design, light/dark mode, en een beleving-pagina.
- Alle bestanden zijn gepusht naar de GitHub repository: `https://github.com/robijntje007/zipstraat25`
- Een `CNAME` bestand met `www.zipstraat25.be` is reeds toegevoegd aan de repository.

---

## Stap 1: Activeer GitHub Pages (Zonder DNS)

Zelfs zonder dat je de domeinnaam al beheert, kun je de site al online bekijken op een tijdelijk GitHub adres.

1.  Ga naar je repository op GitHub: [robijntje007/zipstraat25](https://github.com/robijntje007/zipstraat25).
2.  Klik bovenaan op **Settings**.
3.  Klik in de linker zijbalk op **Pages**.
4.  Onder **Build and deployment > Branch**:
    - Kies de branch `main`.
    - Kies de map `/ (root)`.
    - Klik op **Save**.
5.  Wacht 1 à 2 minuten. Je ziet bovenaan een melding verschijnen: *"Your site is live at..."*. Dit zal waarschijnlijk `https://robijntje007.github.io/zipstraat25/` zijn.

---

## Stap 2: DNS Instellen (Zodra je het domein hebt)

Wanneer je toegang hebt tot het controlepaneel van je domeinnaam (`zipstraat25.be`), voeg je de volgende records toe om de koppeling met GitHub te maken.

### 1. Voor de WWW-versie (CNAME)
Maak een **CNAME** record aan:
- **Naam:** `www`
- **Type:** `CNAME`
- **Waarde:** `robijntje007.github.io`

### 2. Voor het hoofddomein (A Records)
Maak vier **A** records aan voor het hoofddomein (vaak aangeduid met `@` of leeg laten):
- **IP 1:** `185.199.108.153`
- **IP 2:** `185.199.109.153`
- **IP 3:** `185.199.110.153`
- **IP 4:** `185.199.111.153`

---

## Stap 3: Domein Finaliseren in GitHub

Zodra de DNS records zijn aangemaakt (houd rekening met een verwerkingstijd van enkele uren):

1.  Ga terug naar **Settings > Pages** in je GitHub repository.
2.  Onder **Custom domain**, voer in: `www.zipstraat25.be`.
3.  Klik op **Save**. GitHub zal de DNS-instellingen controleren.
4.  Zodra de controle is geslaagd, vink je **Enforce HTTPS** aan. Dit zorgt voor het bekende "slotje" in de browserbalk.

---

## Onderhoud & Updates
Wil je later iets aanpassen aan de tekst of foto's?
1.  Pas de bestanden lokaal aan.
2.  Commit en Push de wijzigingen naar GitHub.
3.  GitHub Pages werkt de website automatisch bij binnen enkele seconden.

**Gefeliciteerd met je nieuwe website!**
