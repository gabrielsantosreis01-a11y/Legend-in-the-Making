# Arena Architect v0.4 — Wrestling Business & Relationships

**Milestone:** October 18, 2026  
**Type:** Independently written browser-based wrestling promotion simulation; NOT the proprietary Pro Wrestling Sim program, extracted source, or an exact reimplementation of its engine.

## Playable systems

- **Regional markets:** six regional fanbases per promotion, touring market selector, paid monthly marketing and local attendance influence. Rival promotions run touring shows and build local popularity.
- **Backstage:** per-pair professional trust and relationship score, intervention spending (mediation, bonding, separation), gradual relationship cooling and singles-match rating chemistry modifier.
- **Contracts:** negotiated written vs. PPA terms, monthly wages vs. once-per-show appearance fees, 3–36-month terms, exclusivity and creative-control data. Rejected renewal proposals preserve existing contracts. Some advanced clauses are descriptive only and are not fully enforced yet.
- **Broadcasting:** regional competition for audience share, estimated viewers, event-based TV income, bounded show-level audience history and AI TV contracts.
- **Finances:** sponsors, monthly office overhead, marketing expenses, show cashflow splits and projected cash runway.
- **Save:** v4 JSON migration from v1/v2/v3 without rewriting completed match reports, title lineages or prior company balance.
- **Preserved:** knockout/league competition, bookings, title history, promos and storylines, rival shows and other existing gameplay.

## QA record

Passed four Node engine suites (`engine.test.js`, `v02.test.js`, `v03.test.js`, `v04.test.js`) and three Chromium browser suites (`browser_smoke.py`, `browser_v03.py`, `browser_v04.py`). The new engine suite includes an 8-year simulation and migration from each past save schema; legacy suites also cover 10- and 12-year worlds. Inline single-file browser loading passed.

## Distribution and boundaries

The complete source project is downloadable in the chat as `Arena_Architect_v0_4_Complete_Project.zip` and the standalone playable HTML file as `Arena_Architect_v0_4_Play_Offline.html`. This release document is intentionally **not** the game itself; source ZIP contents and PWS files are not uploaded to this public repo. The v0.4 package contains only independently developed fictional game content.

Original commercial game binaries, PWS save databases and user career data must not be committed to this public repository. The original REA helper remains an optional local tool, and no REA decompilation of PWS is claimed for v0.4.

## Later development priorities

- Booking agency and contract clause enforcement
- Regional TV deals with negotiations and broadcaster renewals
- Regional market calendars / tours / venue costs
- Financial forecast based on actual cash burn rather than a fixed last-four-event projection
- Worker loyalty, morale, inter-company relationships, agents and stable formation
