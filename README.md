* Click Fork in the right corner of the screen to save it to your Github.
* Visit https://dashboard.ngrok.com to get **NGROK_AUTH_TOKEN**
* In Github go to ⚙ Settings> Secrets> New repository secret
* In Name: enter **NGROK_AUTH_TOKEN**
* In Value: visit https://dashboard.ngrok.com/auth/your-authtoken Copy and Paste Your Authtoken into
* Press Add secret
* Go to Action> RDP_COFFIN> Run workflow
* Reload the page and press RDP_COFFIN> build
* Press the down arrow on Connect To Your RPD to get IP, User, Password.

**What is ngrok?** *ngrok* is a cross-platform application that enables developers to expose a local development server to the Internet with minimal effort. This repository allows the use of *ngrok* and github actions to create temporary/disposable development environments. Usage with intention including but not limited to abuse, mining, or abusing/violating terms of services (of github/ngrok) is strictly prohibited.

> Environment Specifications: 2 CPU & 7GB RAM

Credits towards [c9ffin](https://github.com/c9ffin) for creating and maintaining the original source.

# Installation

1. **Fork the repository** - begin with forking the repository by clicking the "Fork" button in the upper-right corner of the project

### Secret Initialization

To install **raven** into your game, create a script in `ServerScriptService` and paste the following contents in the top of the script:
