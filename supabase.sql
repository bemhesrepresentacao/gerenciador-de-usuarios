-- Supabase: crie a tabela para os perfis do gerenciador
create table if not exists public.profiles (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  name text not null,
  city text,
  email text,
  phone text,
  logo_url text,
  site_url text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.profiles enable row level security;

-- Cada usuário só pode criar, alterar e excluir os próprios perfis.
create policy "profiles_select_own_or_public"
on public.profiles for select
to authenticated, anon
using (true);

create policy "profiles_insert_own"
on public.profiles for insert
to authenticated
with check (auth.uid() = user_id);

create policy "profiles_update_own"
on public.profiles for update
to authenticated
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

create policy "profiles_delete_own"
on public.profiles for delete
to authenticated
using (auth.uid() = user_id);

-- Para produção, você pode restringir o SELECT público aos campos necessários.
