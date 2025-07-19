# 🧠 AllDev GPT – Dev Fullstack + DevOps + QA Autônomo

Este repositório contém os **arquivos base que alimentam o GPT personalizado** usado para criar, testar, publicar e monitorar funcionalidades em repositórios GitHub, via comandos em linguagem natural dentro do ChatGPT.

---

## 📦 O que está aqui

- `openapi.yaml`: A especificação da Action GPT (OpenAPI 3.1)
- `manifest.json`: Descreve o GPT personalizado para importação no ChatGPT
- `onboarding.html`: Página visual de introdução para usuários
- `scripts/`: Shell scripts para deploy, setup de VPS e monitoramento
- `templates/`: Exemplos de funcionalidades geradas pelo GPT
- `tests/`: Estrutura de testes automatizados (Jest, Playwright, etc)
- `.well-known/`: Suporte opcional para integração como plugin

---

## 🚀 Como usar este repositório com ChatGPT

### 1️⃣ Ative o GitHub Pages

- Vá em **Settings → Pages**
- Configure:
  - **Source:** `main`
  - **Branch folder:** `/ (root)`
- Acesse:
  - 🔗 `https://fmunizm.github.io/alldev/openapi.yaml`
  - 🔗 `https://fmunizm.github.io/alldev/onboarding.html`

### 2️⃣ Crie o GPT em [chat.openai.com/gpts/editor](https://chat.openai.com/gpts/editor)

- Importe a URL da OpenAPI:  
https://fmunizm.github.io/alldev/openapi.yaml


- Autenticação: `API Key`  
- Instruções:
- O GPT exige que o usuário informe:
  - Repositório GitHub da aplicação
  - VPS (host, user, senha/porta)
  - Banco PostgreSQL
  - Desejo ou não de monitoramento/CI/CD

### 3️⃣ O GPT pode:

- Criar branchs e PRs automáticos
- Gerar código e templates
- Criar migrations e arquivos `.env`
- Rodar testes (Jest, Playwright)
- Fazer merge
- Executar deploy via SSH
- Instalar e configurar:
- NGINX
- PM2
- PostgreSQL
- Certbot
- Monitorar sua aplicação com Logtail ou Datadog

---

## 👤 Sobre este repositório

Este repositório não contém código de aplicação.  
Ele serve exclusivamente como **base estática de arquivos públicos para ChatGPT Custom Actions**.

---

## 🔒 Segurança

- Nenhum token ou credencial é salvo
- O GPT só usa dados fornecidos na sessão do usuário
- Você pode revogar tokens GitHub a qualquer momento: [https://github.com/settings/tokens](https://github.com/settings/tokens)

---

## ✉️ Contato

Em caso de dúvidas, sugestões ou melhorias, abra uma issue ou envie um pull request.
