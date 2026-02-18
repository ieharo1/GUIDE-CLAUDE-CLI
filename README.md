# Claude CLI Complete Guide 🚀

Professional technical guide to install and use Claude CLI from scratch.

This repository is designed for developers and engineers who want to integrate Claude into local and automated workflows.

---

## 📌 What is Claude CLI?

Claude CLI is the official command-line interface to interact with Claude, the language model developed by Anthropic.

Claude is designed for:

- Text generation
- Technical analysis
- Code writing
- Automation
- Document processing
- DevOps integration

Official website:
https://www.anthropic.com

Documentation:
https://docs.anthropic.com

---

## 🎯 What is it for?

- Quick technical queries from terminal
- Code generation
- Script automation
- CI/CD integration
- File analysis
- Code refactoring
- Documentation generation

---

## 🏗 Architecture

Terminal
↓
Claude CLI
↓
Anthropic API
↓
Claude Model


Authentication is handled via API key.

---

## 💻 Requirements

- Node.js 18+
- npm or yarn
- Anthropic account
- Valid API key

---

## 🛠 Installation

### 1️⃣ Install Node.js

Download:
https://nodejs.org

Verify:

node -v
npm -v


---

### 2️⃣ Install Claude CLI

npm install -g @anthropic-ai/claude-cli


Verify:

claude --help


---

## 🔐 Configure API Key

Windows (PowerShell):

setx ANTHROPIC_API_KEY "your_api_key"


Linux / Mac:

export ANTHROPIC_API_KEY="your_api_key"


---

## ▶️ Basic Usage

claude "Explain event-driven architecture"


---

## 🌎 How to Force Spanish Responses

Claude answers in the language of the prompt.

### Option 1: Explicit Language Instruction

claude "Answer in Spanish: Explain hexagonal architecture"


---

### Option 2: Persistent Alias

alias claude-es='claude "Always answer in professional Spanish:"'


---

### Option 3: Wrapper Script

#!/bin/bash
claude "Answer in professional Spanish: $1"


---

## ⚙ Advanced Configuration

- Select model
- Adjust temperature
- Token limits
- File input redirection
- Script integration

Example:

claude "Analyze this code:" < app.py


---

## 🔁 Automation Example

for file in *.js; do
claude "Generate documentation:" < "$file"
done


---

## 🛡 Best Practices

- Never commit API keys
- Use environment variables
- Rotate credentials
- Apply usage monitoring

---

## 🚀 Professional Use Cases

- Automated documentation
- Code review assistant
- DevOps helper
- Security auditing
- Test generation

---

## 👨‍💻 Desarrollado por Isaac Esteban Haro Torres

**Ingeniero en Sistemas · Full Stack · Automatización · Data**

- 📧 Email: zackharo1@gmail.com
- 📱 WhatsApp: 098805517
- 💻 GitHub: https://github.com/ieharo1
- 🌐 Portafolio: https://ieharo1.github.io/portafolio-isaac.haro/

---

© 2026 Isaac Esteban Haro Torres - Todos los derechos reservados.
  
