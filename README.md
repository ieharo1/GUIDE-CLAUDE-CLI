# Claude CLI Professional Guide
[![Docker Ready](https://img.shields.io/badge/Docker-Ready-2496ED?logo=docker&logoColor=white)](https://www.docker.com/)
[![Node.js 20](https://img.shields.io/badge/Node.js-20-339933?logo=node.js&logoColor=white)](https://nodejs.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Language: English](https://img.shields.io/badge/Language-English-blue)](#)
[![Status: Production Ready](https://img.shields.io/badge/Status-Production%20Ready-brightgreen)](#)

A practical guide to run Claude CLI locally and in Docker, designed to make this repository portfolio-grade for engineering and DevOps audiences.

## Goals

- Run Claude CLI in minutes.
- Standardize execution with Docker.
- Support both interactive prompts and script automation.
- Keep secrets out of source control.

## Stack

- Claude CLI (`@anthropic-ai/claude-cli`)
- Node.js 20
- Docker / Docker Compose

## Project Structure

```text
.
├── Dockerfile
├── docker-compose.yml
├── .env.example
├── entrypoint.sh
└── README.md
```

## Requirements

- Docker Desktop or Docker Engine + Compose
- Anthropic API key

## 1) Configure environment

Copy the template and set your key:

```bash
cp .env.example .env
```

Edit `.env`:

```env
ANTHROPIC_API_KEY=your_real_api_key
```

## 2) Build image

```bash
docker compose build
```

## 3) Quick usage

Show help:

```bash
docker compose run --rm claude --help
```

Single prompt:

```bash
docker compose run --rm claude "Explain event sourcing in 5 points"
```

Interactive prompt:

```bash
docker compose run --rm claude
```

## 4) Analyze host files

Compose mounts `./workspace` into `/workspace` in the container.

Example:

```bash
mkdir -p workspace
cp app.py workspace/
docker compose run --rm claude "Review /workspace/app.py and suggest improvements"
```

## 5) Automation usage

```bash
docker compose run --rm claude "Generate release notes for today changes"
```

Use CI secrets to inject `ANTHROPIC_API_KEY` per environment.

## Security

- Do not commit `.env`.
- Rotate API keys regularly.
- Use dedicated keys per environment.
- Check logs before sharing.

## Troubleshooting

- `Missing ANTHROPIC_API_KEY`: verify `.env`.
- API/network errors: validate connectivity and Anthropic quota.
- Mounted file issues: verify paths under `./workspace`.

---

## 👨‍💻 Desarrollado por Isaac Esteban Haro Torres

**Ingeniero en Sistemas · Full Stack · Automatización · Data**

- 📧 Email: zackharo1@gmail.com
- 📱 WhatsApp: 098805517
- 💻 GitHub: https://github.com/ieharo1
- 🌐 Portafolio: https://ieharo1.github.io/portafolio-isaac.haro/

---

© 2026 Isaac Esteban Haro Torres - Todos los derechos reservados.

