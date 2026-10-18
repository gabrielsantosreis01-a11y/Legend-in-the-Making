# Arena Architect v0.3 — Creative Control

**Release:** v0.3, 2026-10-18  
**Project:** Independently written browser wrestling promoter management simulator (not the proprietary PWS application).

## Playable milestone

- Round-robin league tournaments for **4 or 6 competitors**, one matchday per weekly event, 3 points per win; deterministic table ordering; a complete dead heat does not invent a champion.
- Original knockout cups for **4 or 8 competitors** remain available.
- Match formats: Standard, No DQ, Submission, Ladder, Steel Cage, Iron Man. Tag stipulations limited to Standard and No DQ. Changes to ratings, fatigue, injury chance.
- Creative intentions: Competitive, Showcase, Squash, Protect Loser; agent notes persist to completed event reports.
- Rivals accumulate actual match/promo beats and only conclude when a qualified storyline payoff is booked (at least two beats and 48 heat).
- Free-agent contract negotiations with acceptance/rejection, salary/months and signing bonus charged on acceptance.
- Four rival company AI strategies (Star Power, Balanced, Youth Development, Technical), affecting background booking and recruiting, logged in show reports.
- Booking Office advisor flags fatigue, booking gaps, unscheduled competitions and storylines.
- v1/v2 JSON careers migrate to v3 without recalculating historical match or title results. Back up the original JSON before migration.

## Test record
Passed `node tests/engine.test.js`, `node tests/v02.test.js`, `node tests/v03.test.js`, `python tests/browser_smoke.py`, `python tests/browser_v03.py`, and an independent all-in-one HTML bootstrap smoke test; the engine's long-period integrity tests cover 12 years.

**Important:** The complete editable source is packaged in `Arena_Architect_v0_3_Complete_Project.zip` and a separate standalone single file in `Arena_Architect_v0_3_Play_Offline.html`, provided as downloadable files in the ChatGPT conversation. They are **not uploaded into this public GitHub repository by this release note**. No private saves, PWS executable, PWS database, proprietary code or assets are published here. REA was not run on the commercial game as part of v0.3.
