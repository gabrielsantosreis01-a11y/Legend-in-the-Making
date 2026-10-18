# Arena Architect v0.2 — Living Wrestling World

## Status
A **playable, standalone, independently written** wrestling management prototype. It is not a decompilation or feature-complete recreation of the proprietary Pro Wrestling Sim game.

The complete source ZIP and a zero-install, single-file HTML build were generated as **attachments in the ChatGPT conversation on 2026-10-18**. This note tracks the milestone but does not publish the full ZIP or any original PWS binary to this public repository.

## Features delivered
- Five rival companies simulate fully recorded weekly cards (winners, ratings, attendance, cash flow).
- World show archive, card-level result viewer and annual promotion standings.
- CPU contracts, hiring, financial difficulties, dormant/reopening promotions, slow attribute growth and title records.
- Playable 4/8-participant single-elimination tournaments with automatic bracket progression across shows.
- New tournament desk and world event UI.
- Read-only external PWS roster-reference imports; no original game code/assets/database included.
- Arena Architect v1 JSON career saves automatically migrate to version 2 without rewriting completed events or title histories.

## Verified
- v0.1 core engine regression test.
- v0.2 weekly-world, tournament, cancellation, migration and 10-year integrity test.
- Chromium browser smoke: tournament from draw through the final, world event detail, booking, save/export.
- Offline single-HTML bootstrap test.
- Native PWS and official REA runtime analysis are **not** claimed.

## Next
v0.3: multi-format leagues, agent notes, stipulations, expanded feuds and contract negotiation.

The full v0.2 game is distributed in the ChatGPT conversation as `Arena_Architect_v0_2_Play_Offline.html` and `Arena_Architect_v0_2_Complete_Project.zip`. This repository path documents the milestone without publishing personal files.
