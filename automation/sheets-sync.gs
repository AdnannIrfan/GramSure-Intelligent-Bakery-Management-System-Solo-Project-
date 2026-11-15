/**
 * GramSure - Sheets Sync (Google Apps Script)
 * Purpose: Pull daily P&L / sales / inventory data from the GramSure
 *          backend API into a Google Sheet for owner-facing reporting
 *          and to feed the scheduled-pdf-reports.gs script.
 * Trigger: Time-driven trigger, e.g. every day at 11:00 PM (after nightlyPnLJob runs).
 */

const API_BASE_URL = 'https://your-backend-domain.com/api';
const API_TOKEN = 'PUT_A_SERVICE_ACCOUNT_JWT_HERE';
const SHEET_NAME = 'DailyPnL';

function syncDailyPnLToSheet() {
  const ss = SpreadsheetApp.getActiveSpreadsheet();
  let sheet = ss.getSheetByName(SHEET_NAME);

  if (!sheet) {
    sheet = ss.insertSheet(SHEET_NAME);
  }

  const data = fetchPnLData();
  if (!data) {
    Logger.log('No P&L data returned from API.');
    return;
  }

  sheet.clear();
  sheet.appendRow(['Date', 'Revenue', 'COGS', 'Expenses', 'Salaries', 'Net Profit']);
  sheet.appendRow([
    data.date,
    data.revenue,
    data.cogs,
    data.expenses,
    data.salaries,
    data.netProfit,
  ]);

  sheet.getRange(1, 1, 1, 6).setFontWeight('bold');
  sheet.autoResizeColumns(1, 6);

  Logger.log('Daily P&L synced successfully.');
}

function fetchPnLData() {
  const url = `${API_BASE_URL}/financial-dashboard/pnl/today`;
  const options = {
    method: 'get',
    headers: { Authorization: `Bearer ${API_TOKEN}` },
    muteHttpExceptions: true,
  };

  const response = UrlFetchApp.fetch(url, options);
  if (response.getResponseCode() !== 200) {
    Logger.log(`API error: ${response.getContentText()}`);
    return null;
  }

  return JSON.parse(response.getContentText());
}

/**
 * Creates the daily sync trigger programmatically.
 * Run this once manually from the Apps Script editor.
 */
function createSyncTrigger() {
  ScriptApp.newTrigger('syncDailyPnLToSheet')
    .timeBased()
    .everyDays(1)
    .atHour(23)
    .create();
}