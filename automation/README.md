# GramSure Automation Scripts (Google Apps Script)

This folder contains standalone Google Apps Script (.gs) files used for
scheduled reporting and Google Sheets syncing. These run **inside Google
Sheets/Drive**, not inside the Node.js backend.

## Files

- **sheets-sync.gs** — Pulls daily P&L data from the GramSure backend API
  (`/api/financial-dashboard/pnl/today`) into a Google Sheet named `DailyPnL`.
- **scheduled-pdf-reports.gs** — Exports the `DailyPnL` sheet as a PDF,
  saves it to a Drive folder, and emails it to the owner.

## Setup

1. Create a new Google Sheet (or reuse an existing one).
2. Open **Extensions > Apps Script**.
3. Create two script files matching the names above and paste in the code.
4. Update the constants at the top of each file:
   - `API_BASE_URL` — your deployed backend URL
   - `API_TOKEN` — a long-lived service JWT (see `backend/src/auth`)
   - `REPORT_FOLDER_ID` — target Google Drive folder ID
   - `OWNER_EMAIL` — bakery owner's email
5. Run `createSyncTrigger()` once from the editor to schedule the daily sync.
6. Run `createDailyTrigger()` once from the editor to schedule the daily PDF export.
7. Authorize the script when prompted (Drive, Gmail, and external request scopes).

## Order of execution each night

1. Backend's `nightlyPnLJob.js` computes the day's P&L at midnight.
2. `sheets-sync.gs` (11:00 PM trigger, or adjust as needed) pulls it into Sheets.
3. `scheduled-pdf-reports.gs` exports and emails the PDF.

> Note: Apps Script triggers run in the sheet owner's Google account context,
> independent of the Node.js backend server.