**What is ngrok?** *ngrok* is a cross-platform application that enables developers to expose a local development server to the Internet with minimal effort. This repository allows the use of *ngrok* and github actions to create temporary/disposable development environments. Usage with intention including but not limited to abuse, mining, or abusing/violating terms of services (of github/ngrok) is strictly prohibited.

> Environment Specifications: 2 CPU & 7GB RAM

Credits towards [c9ffin](https://github.com/c9ffin) for creating and maintaining the original source.

# Installation

1. **Fork the repository** - begin with forking the repository by clicking the "Fork" button in the upper-right corner of the project
2. **Fetch your ngrok token** - visit the [auth dashboard](https://dashboard.ngrok.com/auth/your-authtoken) and copy your auth token
3. **Setup repository secret** - navigate to your repository secrets (Settings > Secrets > Actions) and create a secret (New repository secret) named `NGROK_AUTH_TOKEN`, and paste your auth token into the value
4. **Activate/initialize environment** - navigate to the workflow action (Actions > INITIALIZE) and run the workflow (Run workflow)
5. ⏱️ **Wait for intialization** - wait for your action to complete, upon completion you'll be provided the credentials and information to connect to the environment by pressing the dropdown (Connection Instructions)

# Notes

* The easiest way to connect to your environment is via the "Remote Desktop Connection" pre-installed application on windows
* Frequently check for repository updates/changes by ensuring your repository is synced by pressing sync (Sync Fork) and update (Update Branch)
