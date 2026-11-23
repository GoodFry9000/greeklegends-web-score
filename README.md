# Fantasy Realms: Greek Legends — score calculator

Score calculator for the physical game. Tap the cards of a hand and of the
Afterlife; bonuses, penalties and every card choice (Athena, Chiron, Herakles,
Helm of Hades…) are applied automatically with the best option for the player.
Several players, a results table with the tie-break, Ukrainian and English.

The scoring is the Go engine of the Telegram bot (`fanta-bot/greek`) compiled to
WebAssembly, so the bot and this page always agree. Everything runs in the
browser and works offline once opened.

- `build.bat` — rebuild `gl.wasm` after rule or card changes in `fanta-bot/greek`
- `serve.bat` — local test server on http://localhost:8091/

A link like `?hand=GL01,GL02,GL03&afterlife=GL06&name=Ann` opens a ready hand.

## Score from a photo (AI skill)
`skills/greeklegends-score/SKILL.md` teaches an AI assistant to score a photo of the cards: hand
in the top row, Afterlife in the bottom row. It recognises the cards and answers with a link like
the one above, so the calculator opens with that hand. Give the assistant the photo together with
the skill (upload the folder as a skill, or link
https://goodfry9000.github.io/greeklegends-web-score/skills/greeklegends-score/SKILL.md).
