---
name: greeklegends-score
description: Score a hand of the board game "Fantasy Realms: Greek Legends" from a photo. Use when the user sends a photo of Greek Legends cards (hand in the top row, Afterlife in the bottom row) and wants the score; recognise every card, then give the link to the online calculator that opens with exactly those cards and shows the score.
---

# Fantasy Realms: Greek Legends — score from a photo

The user photographs their final cards and wants the score. The scoring is done by the
online calculator; your job is to recognise the cards and build the calculator link.

## The photo
- **Top row: the hand** (up to 7 cards).
- **Bottom row: the Afterlife** (0 or more cards). No bottom row means an empty Afterlife.
- Rows are told apart by their vertical position, not by how many cards they hold.

## Steps
1. Find every card and the row it lies in, left to right.
2. Identify each card with the table below:
   - first by its **printed name**; the cards can be English or Ukrainian, both names are in the table;
   - check it with the **strength number** in the top-left circle and the **suit colour** of the title band;
   - a printed card number, if visible, is the number in the ID (card 47 is GL47).
3. Each card exists once in the game: the same ID cannot appear twice, also not in both rows.
4. If a card is unreadable (glare, blur, covered), do not guess silently: give your best guess,
   mark it as uncertain and ask the user to confirm or correct it.
5. Build the link:
   ```
   https://goodfry9000.github.io/greeklegends-web-score/?hand=<IDs>&afterlife=<IDs>&lang=<ua|en>&name=<player>
   ```
   - `hand` and `afterlife`: card IDs separated by commas, in photo order, e.g. `hand=GL01,GL22,GL47`.
   - Leave `afterlife` out (or empty) when the bottom row is empty.
   - `lang`: `ua` when the user writes Ukrainian, otherwise `en`.
   - `name`: optional, the player's name if the user gave one (URL-encoded).
6. Answer with:
   - the recognised cards per row (ID, name, strength) so the user can check them at a glance;
   - any uncertain cards;
   - the link. Opening it shows the total, every card's points, and which cards are blanked.

If you can open web pages and run JavaScript (a browser tool), you may open the link and report
the total shown on the page as well; the link alone is enough otherwise.

## Example
Photo: top row Zeus, Athena, Pegasus, Mount Olympus, Golden Fleece, Medusa, Perseus;
bottom row Cerberus.

Answer:
- Hand: GL15 Zeus (8), GL04 Athena (4), GL66 Pegasus (20), GL49 Mount Olympus (6),
  GL40 Golden Fleece (6), GL64 Medusa (15), GL32 Perseus (5)
- Afterlife: GL60 Cerberus (5)
- Link: https://goodfry9000.github.io/greeklegends-web-score/?hand=GL15,GL04,GL66,GL49,GL40,GL64,GL32&afterlife=GL60&lang=en

## Suits and title band colours
| Suit | Ukrainian | Band colour |
| --- | --- | --- |
| God | Бог | teal |
| Hero | Герой | purple |
| Item | Предмет | black |
| Location | Локація | green |
| Monster | Чудовисько | red |
| Quest | Квест | ochre / gold |

## Cards
Strength is the number in the top-left circle. "Afterlife" marks cards that may be discarded to the Afterlife.

| ID | Name | Назва | Suit | Strength | Afterlife |
| --- | --- | --- | --- | --- | --- |
| GL01 | Apollo | Аполлон | God | 5 | |
| GL02 | Ares | Арес | God | 7 | |
| GL03 | Artemis | Артеміда | God | 7 | |
| GL04 | Athena | Афіна | God | 4 | |
| GL05 | Demeter | Деметра | God | 5 | |
| GL06 | Fates | Мойри | God | 3 | yes |
| GL07 | Hades | Аїд | God | 3 | yes |
| GL08 | Hecate | Геката | God | 3 | |
| GL09 | Hephaestus | Гефест | God | 5 | |
| GL10 | Hera | Гера | God | 6 | |
| GL11 | Hermes | Гермес | God | 5 | |
| GL12 | Muses | Музи | God | 3 | |
| GL13 | Persephone | Персефона | God | 3 | yes |
| GL14 | Poseidon | Посейдон | God | 5 | |
| GL15 | Zeus | Зевс | God | 8 | |
| GL16 | Achilles | Ахіллес | Hero | 7 | |
| GL17 | Agamemnon | Агамемнон | Hero | 9 | |
| GL18 | Andromeda | Андромеда | Hero | 3 | |
| GL19 | Arachne | Арахна | Hero | 3 | |
| GL20 | Atalanta | Аталанта | Hero | 12 | |
| GL21 | Circe | Цирцея | Hero | 14 | |
| GL22 | Hector | Гектор | Hero | 6 | |
| GL23 | Helen | Олена | Hero | 2 | |
| GL24 | Herakles | Геракл | Hero | 12 | |
| GL25 | Hippolyta | Іпполіта | Hero | 10 | |
| GL26 | Homer | Гомер | Hero | 6 | |
| GL27 | Jason | Ясон | Hero | 4 | |
| GL28 | Medea | Медея | Hero | 7 | |
| GL29 | Odysseus | Одіссей | Hero | 4 | |
| GL30 | Orpheus | Орфей | Hero | 6 | |
| GL31 | Penelope | Пенелопа | Hero | 5 | |
| GL32 | Perseus | Персей | Hero | 5 | |
| GL33 | Theseus | Тесей | Hero | 10 | |
| GL34 | Tiresias | Тіресій | Hero | 11 | |
| GL35 | Apple of Discord | Яблуко розбрату | Item | 25 | |
| GL36 | Argo | Арго | Item | 0 | |
| GL37 | Charmed Bridle | Зачарована вуздечка | Item | 11 | |
| GL38 | Cornucopia | Ріг достатку | Item | 2 | yes |
| GL39 | Golden Apples | Золоті яблука | Item | 3 | |
| GL40 | Golden Fleece | Золоте руно | Item | 6 | |
| GL41 | Helm of Hades | Шолом Аїда | Item | 13 | |
| GL42 | Moly | Молі | Item | 4 | |
| GL43 | Pomegranate | Гранат | Item | 6 | yes |
| GL44 | Trojan Horse | Троянський кінь | Item | 4 | |
| GL45 | Winged Sandals | Крилаті сандалії | Item | 10 | |
| GL46 | Daphne's River | Річка Дафни | Location | 12 | |
| GL47 | Garden of the Hesperides | Сад Гесперид | Location | 17 | |
| GL48 | Lotus Field | Поле лотосів | Location | 23 | |
| GL49 | Mount Olympus | Гора Олімп | Location | 6 | |
| GL50 | Oracle at Delphi | Дельфійський оракул | Location | 7 | yes |
| GL51 | Palace | Палац | Location | 7 | |
| GL52 | Persephone's Garden | Сад Персефони | Location | 4 | yes |
| GL53 | River Lethe | Річка Лета | Location | 6 | yes |
| GL54 | River Styx | Річка Стікс | Location | 0 | yes |
| GL55 | Sacrificial Altar | Жертовний вівтар | Location | 0 | yes |
| GL56 | Temple | Храм | Location | 6 | |
| GL57 | The Labyrinth | Лабіринт | Location | 3 | |
| GL58 | Antaeus | Антей | Monster | 18 | |
| GL59 | Calydonian Boar | Калідонський вепр | Monster | 24 | |
| GL60 | Cerberus | Цербер | Monster | 5 | yes |
| GL61 | Chiron | Хірон | Monster | 6 | |
| GL62 | Dryads | Дріади | Monster | 14 | |
| GL63 | Lernaean Hydra | Лернейська гідра | Monster | 17 | |
| GL64 | Medusa | Медуза | Monster | 15 | |
| GL65 | Minotaur | Мінотавр | Monster | 15 | |
| GL66 | Pegasus | Пегас | Monster | 20 | |
| GL67 | Scylla and Charybdis | Сцилла і Харибда | Monster | 17 | |
| GL68 | Sirens | Сирени | Monster | 16 | |
| GL69 | 12 Labors | 12 подвигів | Quest | 0 | |
| GL70 | Apotheosis | Апофеоз | Quest | 0 | |
| GL71 | Eleusinian Mysteries | Елевсинські містерії | Quest | 0 | |
| GL72 | Epic Quest | Епічний похід | Quest | 0 | |
| GL73 | Glimpse of the Divine | Проблиск божественного | Quest | 0 | |
| GL74 | Long Journey | Довга подорож | Quest | 0 | |
| GL75 | Lost Knowledge | Втрачене знання | Quest | 0 | |
| GL76 | Olympic Games | Олімпійські ігри | Quest | 0 | |
| GL77 | Rebellious Kingdom | Бунтівне королівство | Quest | 0 | |
| GL78 | Trojan War | Троянська війна | Quest | 0 | |
| GL79 | Visit to the Underworld | Візит до підземного світу | Quest | 0 | |
