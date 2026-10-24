# WardFlow — Supabase separate-table version

Configure `supabase-config.js`, run `../SUPABASE_SCHEMA.sql` in Supabase SQL Editor, and follow `../README_STEP_BY_STEP.txt`.

Tables: patients, resources, assignments, preemptions, audit_logs. Each entity is stored as one row with its `id` and `data` JSONB. Public demo policies allow anonymous CRUD; fictional data only.
