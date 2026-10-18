# Arena Architect v0.6 — The Complete Wrestling Ecosystem

**Build:** 2026-10-18 · **Engine JSON schema:** v6

Arena Architect v0.6 is an independently developed **playable offline** wrestling promoter simulator. It extends the v0.5 codebase. It is *not* commercial Pro Wrestling Sim, a native PWS plugin, or an exact recreation of its proprietary simulation engine.

## Playable mechanics

- **Scouting:** hire up to two scouts, obtain 35-day wrestler reports for free agents and eligible near-expiring talent; scouting fee and periodic payroll; manual trip cooldown and expense.
- **Road agents:** hire up to two match producers, assign a producer to the match booking, adjust rating and injury risk by specialty, retain producer attribution in saved match reports.
- **Developmental affiliate:** establish one academy, assign and recall eligible 34-and-under signed workers (up to eight), accumulate bounded fractional training and psychology changes monthly without recording invented official matches. Existing contracts and titles remain under their original company.
- **Transfer market:** five-day offers for nonexclusive/near-expiry contracted rival talent; accepted offers transfer actual cash between companies and change signed worker association without altering prior bouts. Incoming rival bids require the player's explicit accept/reject. No transfer of champions or booked players.
- **International offices:** pay one-time opening fees plus monthly office costs; build local popularity and discount trips into those regions.
- **World AI:** bounded occasional interpromotional transfers and recruitment alongside existing monthly marketing, touring, roster management, broadcast contracts and weekly show simulation.
- **Gameplay preserved:** singles/tag matches, titles, multiple stipulations, knockouts/leagues, rivalries, contracts, promotion economics, agents, stables, managers, existing touring and TV bids.

## QA

- Passed **six** Node engine test suites: `engine.test.js`, `v02.test.js`, `v03.test.js`, `v04.test.js`, `v05.test.js`, `v06.test.js`.
- Passed **six** Chromium suites: `browser_smoke.py`, `browser_v03.py`, `browser_v04.py`, `browser_v05.py`, `browser_v06.py`, `browser_offline_v06.py`.
- Includes the v0.6 20-year ecosystem stress suite and v1–v5 save-migration checks. Existing completed events, titles and transactions remain unchanged by migration.
- Browser game tested with its exact offline HTML content loaded inline into Chromium. OS double-click / `file://` launch still needs user confirmation.

## Downloads and repository scope

Two playable release artifacts are attached in ChatGPT:

- `Arena_Architect_v0_6_Play_Offline.html`
- `Arena_Architect_v0_6_Complete_Project.zip`

These are **not** uploaded to GitHub in this commit. The ZIP contains the editable original JavaScript engine, browser interface, tests, local setup files and optional read-only reference tools. It excludes commercial PWS binaries, artwork, proprietary database and private career saves.

**Future work:** developmental promotion match events and unique schedules, scouting networks per territory, more elaborate agent interactions, and deeper financial accounting of international operations.
