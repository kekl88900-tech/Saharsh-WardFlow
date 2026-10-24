WARDFLOW — SUPABASE SEPARATE TABLES VERSION
===========================================

This version uses Supabase tables instead of the old single ward_state JSON row. It does not need Java, Maven, or local MySQL.

IMPORTANT BEFORE STARTING
- This ZIP expects the frontend/supabase-config.js you already filled in with your Project URL and anon/public key.
- The SQL below creates five new tables. It does not delete your old ward_state table.
- This is a public demo. Anyone can read, add, edit, or delete rows. Use fictional test data only.

STEP 1 — Supabase SQL
1. Open Supabase -> SQL Editor -> New query.
2. Open SUPABASE_SCHEMA.sql from this folder and paste all SQL into the editor.
3. Click Run. It should say Success.

STEP 2 — Check configuration
Open frontend/supabase-config.js. Ensure SUPABASE_URL and SUPABASE_ANON_KEY contain your project URL and anon/public key. Never use a service_role/secret key in frontend code.

STEP 3 — Test locally
1. Open the frontend folder in VS Code.
2. Use Live Server to open index.html (not file://).
3. Add a fictional patient.
4. In Supabase Table Editor, inspect patients. Each patient is one row; its fields are in the data JSONB column.
5. Open the same site in another browser window and check that the patient appears after a few seconds.

STEP 4 — Deploy
Deploy the frontend folder (index.html, styles.css, app.js, supabase-config.js) to Netlify. After deployment, test with the Netlify URL.

TABLES
- patients: one patient per row
- resources: one resource per row
- assignments: one assignment per row
- preemptions: one emergency pre-emption per row
- audit_logs: one audit event per row

SCHEMA NOTE
Each table has an id column and a data JSONB column. This gives one entity per row while preserving the existing frontend's object fields. If you later want every field (patient name, severity, arrival, etc.) as separate SQL columns, the frontend and schema need a further migration.

CONCURRENCY NOTE
The current frontend sync replaces each table's rows when saving. It is suitable only for a simple demo with low activity and can overwrite simultaneous edits. Do not use for real clinical data or production.
