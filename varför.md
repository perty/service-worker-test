# Varför Service Worker

Lite tankar på svenska som ett underlag för en framtida blogg, kanske!

## PWA

PWA står för "Progressive Web App" och Service Worker (SW) är en central del av det. Vad är PWA och varför bry sig?

De flesta använder privat sina mobiltelefoner när de ska göra något som t ex ett bankärende. Som bank behöver man möta kunden på den plattformen. Ett alternativ är då att skapa en app som kunden installerar på sin telefon. Tyvärr finns det en del nackdelar med det.

- Kunden är bara villig att göra det om den har en relation med banken och kanske inte då heller. Presumtiva kunder kommer inte att installera den.
- En app innebär att man behöver göra tre versioner av gränssnittet mot kunden, en för Apple, en för Android och en för webbläsare. Det finns teknik, t ex Flutter, som minskar ansträngningen genom att skriva en gång och sedan bygga för alla tre plattformarna. 
- Underhållet för en app är omständligare eftersom varje uppdatering måste godkännas av Apple och Google. Ledtiden på flera veckor är vanliga.
- Om man har någon form av inkomst från appen kan Apple vilja ha en del av kakan.

Alternativet är att bara göra en webbapp som anpassar sig väl till olika fönsterstorlekar. Det är betydligt enklare och ger ett större urval av tekniska lösningar. Men det finns nackdelar.

- Om kunden har dåligt eller inget nätverk fungerar den inte särskilt väl. Det går visserligen inte att se sitt saldo i en app heller om man inte har nätverkskontakt men en webbapp kräver att mycket laddas ner varje gång. Bandbreddskravet är helt enkelt mycket högre.
- Webbappen nås genom att användaren matar in en webbadress i webbläsaren om denne inte har lagt ett bokmärke. I motsats till att klicka på en ikon på skärmen som i fallet med en app.
- Vissa saker går inte att göra som notifieringar och rita på hela skärmen.

För att väga upp detta så har man skapat begreppet PWA. Det är en teknik som bryggar över en del av bristerna hos en webbapp. Det gör det möjligt att installera en webbapp genom att klicka på en knapp i appen. Då blir det en ikon på startskärmen och är sökbar på samma sätt som andra appar. Det finns ett API för att cacha tillgångar, typiskt det som är statiska delar av användargränssnittet.

Man kan också skicka notiser och rita på hela skärmen, samt komma åt saker på enheten, t ex kamera och mikrofon.

Om man vill, så kan man ha sin PWA i App store respektive Google Play.

Så PWA ska ge bästa av båda världar även om vi kanske inte är riktigt där än i alla delar och på alla plattformar. Därav namnet, en PWA måste testa om en feature finns implementerad innan den använder den. Progressivt får den över tid tillgång till fler features. 

Tyvärr fungerar inte allt, trots att det ska göra det, enligt dokumentationen. Firefox på desktop ska stödja notifieringar men det är trasigt just nu. Som alltid måste man testa på olika plattformar för att vara säker.

## Anteckningar

Jag har testat på mobilen och fått notifiering att fungera (Chrome/Android) men det måste vara en betrodd sajt. Det räcker inte med att klicka sig förbi varningen.
Det kräver att man använder SW.

Jag hade gjort en del arbete i Elm som såg prydligt ut men använde inte någon SW. Det fungerade inte. Den som fungerar är ganska rå och ligger under en hemlig URL. Skulle vilja förstå hur jag kan låta klienten agera på att användaren klickar - eller ska det inte vara så? Ska det bara vara en URL som browsern går till och det råkar vara något som klienten kan läsa?

Som det är nu öppnar webbläsaren notisens url i en ny flik. Vänta, det var någon copy-paste av kod som jag inte förstod.

Funderar på om SW enkelt kan meddela appen att något hänt, typ ett meddelande. Det går. Med lite hjälp av ChatGpt och googlande så blev det möjligt. 

- SW bör göra "claim" när den aktiveras.
- Huvudtråden ska lyssna på "message" event med lyssnare på `navigator.serviceWorker`, inte `window`.

Det finns en version som fungerar på Chrome/Mac desktop och Chrome/Andriod utlagd på [https://artcomputer.se/notification](https://artcomputer.se/notification).





