<!--
  =====================================================================
  GRAPHIFY - Bloco de instrucoes obrigatorias (gerado automaticamente)
  Colocado AQUI NO TOPO para que o Claude.ai web siga sem dica adicional.
  Workflow .github/workflows/graphify.yml mantem o grafo atualizado.
  =====================================================================
-->

# CLAUDE.md - Instrucoes Mestras

> **VOCE (Claude) DEVE LER ESTE ARQUIVO INTEIRO ANTES DE FAZER QUALQUER COISA.**
> **Em seguida, OBRIGATORIAMENTE consultar os arquivos listados abaixo.**

## ZERO. PROTOCOLO DE ATIVACAO (executar SEMPRE no inicio da conversa)

Voce DEVE ler nesta ordem antes de responder o usuario:

1. **Este CLAUDE.md inteiro** (regras, contexto, conhecimento)
2. **`graphify-out/GRAPH_REPORT.md`** - mapa do codigo (God Nodes, Communities, conexoes)
3. **`graphify-out/manifest.json`** - lista de arquivos analisados
4. **`.claude/skills.md`** - skills aplicaveis a este projeto
5. **(opcional) `graphify-out/graph.json`** - grafo estruturado para localizar simbolos

So abra outros arquivos APOS consultar o grafo. Use `graph.json` como indice. Nunca varra a arvore de arquivos.

Se algum desses arquivos nao existir, AVISE o usuario que o repo precisa rodar
o workflow Graphify ou que o grafo esta defasado.

## ZERO.1 PROTOCOLO DE EXCELENCIA (sempre vale)

- **Tudo e importante**: nao julgar prioridades. Ordenar so por dependencia tecnica.
- **Nada parcial**: completar 100% antes de seguir. Nada de "principal primeiro".
- **Nao perguntar no meio**: seguir ate o final, relatar erros e tratar imediatamente.
- **Microsprints**: 1 detalhe = 1 sprint. PDCA a cada ciclo de 5-10 sprints.
- **Testes completos**: testar cada campo, botao, rota, link individualmente.
- **PT-BR obrigatorio**: variaveis, comentarios, mensagens, commits em portugues.
- **UTF-8 + timezone America/Sao_Paulo**.
- **Validacoes Brasil quando aplicavel**: CPF, CNPJ, CEP, telefone.
- **LGPD prioritaria** para dados pessoais.
- **Versionamento**: SemVer (MAJOR.MINOR.PATCH) atualizado em todos os locais.
- **Documentacao continua**: atualizar este CLAUDE.md ao final de cada sessao.
- **GitHub + deploy**: commit + push + deploy + validacao final em producao.

## ZERO.2 SKILLS APLICAVEIS

Veja `.claude/skills.md` para a lista completa. Resumo basal (sempre validas):
`excelencia-total`, `scrum-microsprints`, `documentacao-continua`,
`versionamento-sistema`, `testes-completos`. Skills condicionais e
tecnologia-especificas listadas em `.claude/skills.md`.

---

## 1. IDENTIDADE DO PROJETO

- **Repositorio:** `fmunizm/alldev`
- **Tamanho:** ~17 KB
- **Skill stack:** generico
- **Visualizacao:** `graphify-out/graph.html` e `graphify-out/GRAPH_TREE.html`

## 2. GOD NODES (estrutura central detectada pelo grafo)



## 3. COMMUNITIES (modulos detectados)



## 4. CONTEXTO DO PROJETO (extraido do README)

# ð§  AllDev GPT â Dev Fullstack + DevOps + QA AutÃ´nomo

Este repositÃ³rio contÃ©m os **arquivos base que alimentam o GPT personalizado** usado para criar, testar, publicar e monitorar funcionalidades em repositÃ³rios GitHub, via comandos em linguagem natural dentro do ChatGPT.

---

## ð¦ O que estÃ¡ aqui

- `openapi.yaml`: A especificaÃ§Ã£o da Action GPT (OpenAPI 3.1)
- `manifest.json`: Descreve o GPT personalizado para importaÃ§Ã£o no ChatGPT
- `onboarding.html`: PÃ¡gina visual de introduÃ§Ã£o para usuÃ¡rios
- `scripts/`: Shell scripts para deploy, setup de VPS e monitoramento
- `templates/`: Exemplos de funcionalidades geradas pelo GPT
- `tests/`: Estrutura de testes automatizados (Jest, Playwright, etc)
- `.well-known/`: Suporte opcional para integraÃ§Ã£o como plugin

---

## ð Como usar este repositÃ³rio com ChatGPT

### 1ï¸â£ Ative o GitHub Pages

- VÃ¡ em **Settings â Pages**
- Configure:
  - **Source:** `main`
  - **Branch folder:** `/ (root)`
- Acesse:
  - ð `https://fmunizm.github.io/alldev/openapi.yaml`
  - ð `https://fmunizm.github.io/alldev/onboarding.html`

### 2ï¸â£ Crie o GPT em [chat.openai.com/gpts/editor](https://chat.openai.com/gpts/editor)

- Importe a URL da OpenAPI:  
https://fmunizm.github.io/alldev/openapi.yaml


- AutenticaÃ§Ã£o: `API Key`  
- InstruÃ§Ãµes:
- O GPT exige que o usuÃ¡rio informe:
  - RepositÃ³rio GitHub da aplicaÃ§Ã£o
  - VPS (host, user, senha/porta)
  - Banco PostgreSQL
  - Desejo ou nÃ£o de monitoramento/CI/CD

### 3ï¸â£ O GPT pode:

- Criar branchs e PRs automÃ¡ticos
- Gerar cÃ³digo e templates
- Criar migrations e arquivos `.env`
- Rodar testes (Jest, Playwright)
- Fazer merge
- Executar deploy via SSH
- Instalar e configurar:
- NGINX
- PM2
- PostgreSQL
- Certbot
- Monitorar sua aplicaÃ§Ã£o com Logtail ou Datadog

---

## ð¤ Sobre este repositÃ³rio

Este repositÃ³rio nÃ£o contÃ©m cÃ³digo de aplicaÃ§Ã£o.  
Ele serve exclusivamente como **base estÃ¡tica de arquivos pÃºblicos para ChatGPT Custom Actions**.

---

## ð SeguranÃ§a

- Nenhum token ou credencial Ã© salvo
- O GPT sÃ³ usa dados fornecidos na sessÃ£o do usuÃ¡rio
- VocÃª pode revogar tokens GitHub a qualquer momento: [https://github.com/settings/tokens](https://github.com/settings/tokens)

---

## âï¸ Contato

Em caso de dÃºvidas, sugestÃµes ou melhorias, abra uma issue ou envie um pull request.

## 6. ESTRUTURA DA RAIZ

```
.claude
.github
.gitignore
.well-known
CLAUDE.md
README.md
dependencies-map.json
graphify-out
keys
manifest.json
onboarding.html
openapi.yaml
scripts
setup.sh
templates
tests
```

---

## ENTREGA OBRIGATORIA AO FINAL DE CADA TAREFA

- [ ] Codigo completo (nao so a parte principal)
- [ ] Testes executados em cada detalhe
- [ ] Este CLAUDE.md atualizado com aprendizados
- [ ] CHANGELOG ou docs atualizados
- [ ] Versao incrementada em todos os locais (SemVer)
- [ ] commit + push para GitHub
- [ ] Deploy em producao executado
- [ ] Validacao final em producao
- [ ] Grafo Graphify regenerado (workflow automatico cuida)

---

> **Versao deste CLAUDE.md:** v2 - Graphify integrado em 2026-05-04
> **Mantido por:** workflow .github/workflows/graphify.yml + edicao manual quando necessario
