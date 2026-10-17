# PWS × REA Research Companion v0.1

The upstream repository [morluto/rea](https://github.com/morluto/rea) is an **external reverse-engineering agent / CLI toolkit**, **not** a PWS plugin and **not** a native game executable modification. The integration created for PWS uses two separate components:

1. `pws-rea-research-bridge`: an optional JavaScript PWS plugin providing a read-only **REA RESEARCH** panel. It only reads a sanitized local status file via `api.ipc.handle('read-status', ...)`. No `child_process`, database writes, game hooks, or in-game REA execution.
2. `companion/Run_PWS_REA.ps1`: a Windows companion that inventories the user's own PWS installation, then (only when explicitly selected) runs the official `rea-agents` CLI on a selected on-disk artifact.

## Deployment
The complete source and installable plugins are distributed in the **PWS_REA_Research_Companion_v0_1.zip** and **PWS_Career_Bridge_plus_REA_Companion_v0_2_Beta.zip** packages produced in the connected ChatGPT conversation. The packages are **not** the game executable. No private saves or PWS binaries are committed to this public repository.

Install only `pws-rea-research-bridge/` into the PWS plugin folder. Keep the `companion/` scripts outside the game folder. Run PowerShell commands from the extracted package.

Inventory (does not install/run REA):

```powershell
.\companion\Run_PWS_REA.ps1 -PwsPath 'C:\path\to\Pro Wrestling Sim'
```

Auto-analyze an installed `resources/app.asar` if detected:

```powershell
.\companion\Run_PWS_REA.ps1 -PwsPath 'C:\path\to\Pro Wrestling Sim' -Mode Auto
```

Specific static analysis for your PWS installation:

```powershell
.\companion\Run_PWS_REA.ps1 -PwsPath 'C:\path\to\Pro Wrestling Sim' -Mode Managed -TargetPath 'C:\path\to\Pro Wrestling Sim\SomeAssembly.dll'
```

This final example works **only** if the DLL contains valid .NET CLI metadata. Prefer inspecting the inventory first and then selecting a real file, rather than assuming PWS uses one framework.

## Prerequisites and constraints
- REA official README: <https://github.com/morluto/rea>
- REA requires Node.js 22.19+, 24.11+, or 26+. SQLite analysis requires Node.js 24.15+ or 26+.
- Explicit deeper analysis uses official npm package `rea-agents@latest`, and may download dependencies; inventory-only mode does not.
- Deep native disassembly needs a separately configured Hopper/Ghidra/IDA provider. Ghidra on Windows is currently experimental in REA.
- Local reports: `%APPDATA%\PWS_REA_Research\inventory.json`, `status.json`, and timestamped analysis outputs.
- Do not upload proprietary PWS binaries, private saves or analysis outputs to this **public** GitHub repository.
- Does not bypass licensing/DRM, inject into running PWS, edit game files, or mutate career history.
- Runtime compatibility with the installed PWS version is **not yet proven**. Node JS syntax and mock plugin IPC tests passed.

Related: [REA installation](https://github.com/morluto/rea/blob/main/docs/installation.md), [REA CLI](https://github.com/morluto/rea/blob/main/docs/cli.md).
