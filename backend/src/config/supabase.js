const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(
  process.env.SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY,
  { auth: { persistSession: false } }
);
const BUCKET = process.env.SUPABASE_RECEIPTS_BUCKET || 'receipts';
const SELFIE_BUCKET = process.env.SUPABASE_SELFIES_BUCKET || 'selfies';

// Receipts (public bucket) - unchanged
async function uploadBuffer(buffer, destPath, mimeType = 'image/jpeg') {
  const { error } = await supabase.storage
    .from(BUCKET)
    .upload(destPath, buffer, { contentType: mimeType, upsert: false });
  if (error) {
    const err = new Error(`Receipt upload failed: ${error.message}`);
    err.statusCode = 502;
    throw err;
  }
  const { data } = supabase.storage.from(BUCKET).getPublicUrl(destPath);
  return data.publicUrl;
}

// Selfies (private bucket) - returns the storage path, not a public link
async function uploadSelfie(buffer, destPath, mimeType = 'image/jpeg') {
  const { error } = await supabase.storage
    .from(SELFIE_BUCKET)
    .upload(destPath, buffer, { contentType: mimeType, upsert: false });
  if (error) {
    const err = new Error(`Selfie upload failed: ${error.message}`);
    err.statusCode = 502;
    throw err;
  }
  return destPath;
}

// Temporary links so the owner can view private selfies. Returns { path: url }
async function getSelfieUrls(paths, expiresInSeconds = 3600) {
  const unique = [...new Set((paths || []).filter(Boolean))];
  const map = {};
  if (unique.length === 0) return map;

  const { data, error } = await supabase.storage
    .from(SELFIE_BUCKET)
    .createSignedUrls(unique, expiresInSeconds);
  if (error || !data) {
    console.error('Could not create selfie links:', error && error.message);
    return map;
  }
  for (const item of data) {
    if (item.signedUrl && item.path) map[item.path] = item.signedUrl;
  }
  return map;
}

module.exports = { uploadBuffer, uploadSelfie, getSelfieUrls };