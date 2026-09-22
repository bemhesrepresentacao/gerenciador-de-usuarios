# Gerenciador de usuários + site Marcão da Graxa

## O que foi preparado
- `gerenciador.html`: login/senha, criação de conta, vários perfis e edição de nome, cidade/localização, e-mail, WhatsApp e logo.
- `site-dinamico.html`: versão do site enviado preparada para receber os dados de um perfil do Supabase.
- `supabase.sql`: estrutura e políticas básicas do banco.

## Como funciona
1. Crie um projeto no Supabase.
2. Execute `supabase.sql` no SQL Editor.
3. Em `gerenciador.html`, troque `SUPABASE_URL` e `SUPABASE_ANON_KEY`.
4. Em `site-dinamico.html`, troque `SITE_SUPABASE_URL` e `SITE_SUPABASE_ANON_KEY`.
5. Publique o `gerenciador.html` em um endereço separado.
6. Publique `site-dinamico.html` como `index.html` no GitHub Pages.
7. Cada perfil recebe um link no formato:
   `https://SEU-SITE/?perfil=ID_DO_PERFIL`

O botão "Transferir para o site" prepara os dados no navegador. A edição gravada no Supabase é a fonte que o site público consulta. Assim, não é necessário editar manualmente os 2.000+ linhas do site de produtos.

## Importante
O arquivo atual usa URL da logo. Para upload real de arquivos de imagem pelo próprio gerenciador, adicione um bucket público no Supabase Storage e um botão de upload; isso pode ser incluído na próxima versão.
