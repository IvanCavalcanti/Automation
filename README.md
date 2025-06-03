# Projeto de Automação de Testes

Este repositório demonstra um fluxo completo de automação de testes funcionais em uma aplicação web, utilizando o **Robot Framework** com a biblioteca `Browser`. Os testes abrangem funcionalidades comuns como login, edição de dados pessoais, endereço, empresa e reconfiguração de dados.

> ⚠️ **Aviso**: Este projeto é uma simulação baseada em experiências reais de automação de testes. Nenhuma informação sensível, confidencial ou de cliente real foi exposta. Todos os dados e URLs foram adaptados para fins educacionais e de demonstração técnica.

---
## Estrutura do projeto

1. 📂 `Automacao/` – Contém os testes funcionais
2. 📄 `requirements.txt` – Dependências para rodar os testes
3. 📄 `README.md` – Documentação geral
4. 📂 `.github/workflows/` – CI/CD com GitHub Actions

---

## 📌 Tecnologias utilizadas

- Robot Framework
- Browser Library (Playwright)
- Python
- Markdown (.md)
- VSCode

---

## ✅ Funcionalidades cobertas nos testes

- Login com credenciais válidas
- Edição de dados pessoais (telefone, e-mail, nome)
- Atualização de endereço com seleção dinâmica de localizações
- Edição e criação de empresa
- Restauração de dados para novo ciclo de testes

---

## 🗂️ Arquivos importantes

- `cenarios_teste.md`: Descrição dos testes em formato legível para humanos.
- Scripts `.robot` organizados por keyword.
- Screenshots de etapas críticas para validação visual (opcional).

---

---

## ▶️ Como executar os testes localmente

### Pré-requisitos:
- Python 3.11 instalado
- Node.js instalado (para uso com robotframework-browser)
- Navegador Chromium, Firefox ou WebKit (instalado automaticamente)

### Passos:

1. Clone o repositório:
   ```bash
   git clone https://github.com/IvanCavalcanti/Latam-automation.git
   cd Latam-automation

2. pip install -r requirements.txt
   rfbrowser init

3. robot Automacao



