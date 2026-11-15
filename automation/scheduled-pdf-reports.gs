/**
 * GramSure - Scheduled PDF Reports (Google Apps Script)
 * Purpose: Generate a daily P&L PDF from a Google Sheet and email/save it.
 * Setup: Bind this script to a Google Sheet that receives daily P&L data
 *        via the Sheets Sync script or manual export from the backend.
 * Trigger: Time-driven trigger, once daily (e.g. 11:00 PM) - set via
 *          Apps Script Editor > Triggers > Add Trigger > Time-driven.
 */

const REPORT_FOLDER_ID = 'PUT_YOUR_DRIVE_FOLDER_ID_HERE';
const OWNER_EMAIL = 'owner@example.com';
const SHEET_NAME = 'DailyPnL';

function generateDailyPnLReport() {
  const ss = SpreadsheetApp.getActiveSpreadsheet();
  const sheet = ss.getSheetByName(SHEET_NAME);

  if (!sheet) {
    Logger.log(`Sheet "${SHEET_NAME}" not found.`);
    return;
  }

  const today = Utilities.formatDate(new Date(), Session.getScriptTimeZone(), 'yyyy-MM-dd');

  // Export the sheet as PDF
  const url = ss.getUrl().replace(/edit$/, '');
  const exportUrl = `${url}export?exportFormat=pdf&format=pdf`
    + `&gid=${sheet.getSheetId()}`
    + '&size=A4&portrait=true&fitw=true&gridlines=false';

  const token = ScriptApp.getOAuthToken();
  const response = UrlFetchApp.fetch(exportUrl, {
    headers: { Authorization: `Bearer ${token}` },
  });

  const pdfBlob = response.getBlob().setName(`GramSure_PnL_${today}.pdf`);

  // Save to Drive folder
  const folder = DriveApp.getFolderById(REPORT_FOLDER_ID);
  const file = folder.createFile(pdfBlob);

  // Email to owner
  MailApp.sendEmail({
    to: OWNER_EMAIL,
    subject: `GramSure Daily P&L Report - ${today}`,
    body: 'Please find attached today\'s automated P&L report from GramSure.',
    attachments: [pdfBlob],
  });

  Logger.log(`Report generated: ${file.getUrl()}`);
}

/**
 * Creates the daily time-driven trigger programmatically.
 * Run this once manually from the Apps Script editor.
 */
function createDailyTrigger() {
  ScriptApp.newTrigger('generateDailyPnLReport')
    .timeBased()
    .everyDays(1)
    .atHour(23)
    .create();
}