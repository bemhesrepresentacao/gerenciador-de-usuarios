# Gerenciador de vários usuários — sem Supabase

## O que foi criado

- `gerenciador-perfis/index.html`: login, cadastro, edição de perfil, logo, cidade/localização, e-mail, WhatsApp, título e slogan.
- `site-marcao-da-graxa/index.html`: seu site anexado, preservando a estrutura/produtos e acrescentando carregamento do perfil pelo Firestore.
- `gerenciador-perfis/firestore.rules`: regras de segurança.
- O botão **Publicar no site** grava o perfil em `perfis/{slug}`.
- O site abre o perfil com `?perfil=slug`.

Exemplo:
`site-marcao-da-graxa/index.html?perfil=marcos`

## Configuração do Firebase

1. Crie um projeto no Firebase.
2. Ative Authentication > Sign-in method > Email/Password.
3. Crie o Firestore Database.
4. Publique as regras de `firestore.rules`.
5. Em Project settings > Your apps, crie um app Web e copie a configuração.
6. Cole a mesma configuração nos dois `index.html`, nos objetos `firebaseConfig`.
7. Para tornar um usuário administrador, depois do primeiro cadastro altere o documento:
   `usuarios/UID_DO_USUARIO`
   campo `role` = `admin`.

## Publicação

O portal e o site podem ficar no GitHub Pages. O Firestore fica como banco/ponte entre o gerenciador e o site.

A logo é armazenada como imagem comprimida/data URL no documento do perfil. Para logos muito grandes, reduza o arquivo antes do upload.

## Importante

O arquivo do site recebido originalmente possui os produtos, vídeos, filtros e detalhes. Esta versão não remove esses dados; apenas adiciona a leitura do perfil publicado.
