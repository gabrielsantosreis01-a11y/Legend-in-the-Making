# Arena Architect v0.5 — The Wrestling Industry

**Release date:** 2026-10-18  
**Type:** Independently developed offline wrestling-management game.

This is a new **playable update to v0.4**, not a commercial Pro Wrestling Sim executable, PWS native plugin, extracted PWS code or a complete REA-derived clone. The playable HTML and complete project ZIP are distributed as ChatGPT conversation attachments, not as a repository release asset.

## Gameplay delivered

- **Worker loyalty and ambition:** measured per wrestler; affected by weekly morale, pushes, matches and contract renewals; low loyalty generates warnings.
- **Talent agents:** three fictional representatives with different emphases; one-time retainers; representation influences loyalty/renewal; 30-day change cooldown.
- **Managers:** hire a maximum of two, pay their first month and monthly salaries, assign them to individual wrestlers; matches and promos are affected.
- **Stables:** 2–5 signed members, member additions, disbanding, chemistry and real backstage relationship bonuses; $800 formation plus $250/month.
- **International touring:** 2–4 stop regional itinerary, $1,200 reservation, real showday travel expenses, per-event stop tracking, local popularity gain and cancellation.
- **Broadcast negotiations:** bid for regional/local, cable or national shows at a proposed per-event fee for 6/12/24 months. Delayed decision after 3 days; rejection retains an existing contract. 7-day cooldown.
- **Regional competition:** three market campaign strategies paid from company cash; regional rivalry heat grows from paid campaigns and actual shows.
- **Autonomous companies:** AI rivals choose operational markets, recruit, advertise and establish broadcast arrangements monthly; AI shows periodically tour targeted regions.
- **Save compatibility:** v5 migration from Arena Architect v1–v4 with historical event arrays, original championship history and existing transaction records preserved.
- Existing v0.1–v0.4 match booking, promos, tournaments, show reports, injuries, contracts, finances and title changes remain available.

## Tests

The following passed: Node engine suites `engine.test.js`, `v02.test.js`, `v03.test.js`, `v04.test.js`, `v05.test.js`; Chromium browser suites `browser_smoke.py`, `browser_v03.py`, `browser_v04.py`, `browser_v05.py`; and an inline single-file HTML bootstrap check. The v0.5 engine suite includes 25 years of background world simulation and v1–v4 migration preservation checks.

The test environment does not permit direct `file://` navigation, so local double-click launch is not runtime-certified; the browser ran the exact standalone HTML content loaded inline.

## Distribution

Downloadable from the conversation:
- `Arena_Architect_v0_5_Play_Offline.html` — one-file browser game
- `Arena_Architect_v0_5_Complete_Project.zip` — editable engine/UI/tests and utilities

Do not upload personal saves, commercial game binaries, commercial game artwork or the proprietary PWS database to this public repository. The attached playable game contains fictional promotion/worker data only.
