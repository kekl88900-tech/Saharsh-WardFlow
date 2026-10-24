-- WardFlow relational-style tables. Each entity gets one row; data JSONB preserves existing app fields.
-- Run this in Supabase SQL Editor.
create table if not exists public.patients (
  id text primary key,
  data jsonb not null
);
create table if not exists public.resources (
  id text primary key,
  data jsonb not null
);
create table if not exists public.assignments (
  id text primary key,
  data jsonb not null
);
create table if not exists public.preemptions (
  id text primary key,
  data jsonb not null
);
create table if not exists public.audit_logs (
  id text primary key,
  data jsonb not null
);

alter table public.patients enable row level security;
alter table public.resources enable row level security;
alter table public.assignments enable row level security;
alter table public.preemptions enable row level security;
alter table public.audit_logs enable row level security;

-- PUBLIC DEMO ONLY: anonymous visitors can read, add, edit, and delete records.
do $$
declare t text;
begin
  foreach t in array array['patients','resources','assignments','preemptions','audit_logs']
  loop
    execute format('drop policy if exists "Public demo full access" on public.%I', t);
    execute format('create policy "Public demo full access" on public.%I for all to anon, authenticated using (true) with check (true)', t);
    execute format('grant select, insert, update, delete on public.%I to anon, authenticated', t);
  end loop;
end $$;
