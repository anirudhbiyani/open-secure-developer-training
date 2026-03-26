# Secure Developer Training

Interactive, gamified secure development training for software engineers, QA engineers, and technical contributors. SCORM 1.2/2004 compatible for enterprise LMS deployment, or run standalone in any browser.

## Modules

| # | Module | Slides | Key Interactive Elements |
|---|--------|--------|--------------------------|
| 1 | **Social Engineering for Developers** | 8 | Fake GitHub alert detective, Slack DM simulator, typosquatted package alert |
| 2 | **Secrets & Credential Management** | 6 | CI/CD bot alert with countdown timer, git secret exposure scenario |
| 3 | **Supply Chain & Dependency Security** | 8 | Package trust challenge, typosquatting detection, compromised dependency response |
| 4 | **Secure Development Lifecycle** | 12 | Security code review simulation, STRIDE threat modeling exercise, SAST/DAST tool explorer |
| 5 | **Secure Data Handling in Code** | 8 | Sensitive data detection game, data storage drag-and-drop, API exposure scenarios |
| 6 | **Secure Coding (OWASP Top 10)** | 6 | SQL injection lab, interactive code review, dependency vulnerability scanner |
| 7 | **Container & Cloud Security** | 8 | Dockerfile security review, cloud misconfiguration challenge, K8s security |
| 8 | **API Security Deep Dive** | 8 | BOLA attack simulation, API code review, OWASP API Top 10, GraphQL security |
| 9 | **AI/LLM Security** | 6 | AI safety classifier, prompt injection deep dive, OWASP LLM Top 10 |
| | **Total** | **70** | |

## Quick Start

### Standalone (no LMS)

Open `index.html` in a browser. Progress is saved automatically in localStorage.

### LMS Deployment

Upload `secure-developer-training-scorm.zip` to any SCORM 1.2 or 2004 compliant LMS.

### Rebuild SCORM Package

```bash
./create-scorm-package.sh
```

## Files

```
├── index.html                                          # Main launcher with sidebar navigation
├── imsmanifest.xml                                     # SCORM manifest
├── create-scorm-package.sh                             # Packaging script
├── secure-developer-training-scorm.zip                 # Ready-to-upload SCORM package
├── social-engineering-training/                        # Module 1
├── secrets-credential-management-training/             # Module 2
├── supply-chain-dependency-security-training/          # Module 3
├── secure-development-lifecycle-training/              # Module 4
├── secure-data-handling-training/                      # Module 5
├── secure-coding-training/                             # Module 6
├── container-cloud-security-training/                  # Module 7
├── api-security-training/                              # Module 8
└── ai-llm-security-training/                           # Module 9
```

Each module directory contains a single `enhanced-interactive-training.html` file that works both standalone and embedded via iframe.

## Features

- **SCORM 1.2/2004 Compliant** — works with any standard LMS (scores, completion, suspend/resume)
- **Progress Tracking** — per-module slide progress, choice persistence, and state restoration on resume
- **Gamification** — achievements, confetti on completion, interactive simulations with instant feedback
- **Anti-Gaming Measures** — randomized answer order, minimum dwell time on content slides, decoy options in code reviews, obfuscated answer data
- **Responsive Design** — works on desktop, tablet, and mobile
- **Monthly Auto-Reset** — progress resets monthly by default, or use `?campaign=id` URL parameter for assignment-based tracking
- **Fully Self-Contained** — no external dependencies, CDNs, or server-side components

## Customization

Before deploying to your organization:

1. **Policy links** — Update the policy attestation screen in `index.html` to link to your organization's actual security policies
2. **Reporting channels** — Search for `security@yourcompany.com` across module files and replace with your security team's contact
3. **Branding** — Update colors in the CSS `:root` variables and replace the logo/header text
4. **Campaign tracking** — Append `?campaign=2026-Q1` (or any ID) to the URL to create separate progress tracking per training assignment

## Technical Details

- The hub page (`index.html`) loads modules in iframes and manages overall SCORM communication
- Modules communicate with the parent frame via `postMessage` for slide progress, choice updates, and completion signals
- Individual module SCORM is automatically disabled when loaded inside the hub iframe (`?scorm=disabled`)
- All state is persisted in `localStorage` keyed by a monthly version string (or campaign parameter)
- Each module is a fully standalone HTML file with embedded CSS and JavaScript — no build step required

## Topics Covered

- Social engineering attacks targeting developers (fake notifications, typosquatting, recruiter scams)
- Secrets management (hardcoded credentials, git exposure, vault usage, rotation policies)
- Supply chain security (dependency confusion, SolarWinds/Log4j/event-stream case studies, SBOM)
- Secure SDLC (code review, SAST/DAST/SCA, threat modeling with STRIDE, environment security)
- Data handling in code (PII in logs, test data, API response filtering, GDPR/CCPA compliance)
- OWASP Top 10 web vulnerabilities (SQL injection, XSS, broken auth, insecure deserialization)
- Container & cloud security (Docker hardening, Kubernetes RBAC, cloud IAM, IaC scanning)
- API security (OWASP API Top 10, BOLA, CORS, GraphQL, rate limiting, security headers)
- AI/LLM security (OWASP LLM Top 10, prompt injection, safe AI assistant usage, AI code review)

## License

AGPL-3.0 — see [LICENSE](LICENSE) for details.

## Author

**Aniruddha Biyani** — [LinkedIn](https://www.linkedin.com/in/anirudhbiyani) · [GitHub](https://github.com/anirudhbiyani/open-secure-developer-training)
