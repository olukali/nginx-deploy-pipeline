📄 README.md
markdown
Copy
Edit
# 🚀 Nginx Lightsail CI/CD Pipeline

This repository contains a fully automated CI/CD pipeline for building, testing, scanning, and deploying an Nginx Docker container to an AWS Lightsail instance using GitHub Actions.

## 🧩 Features

- ✅ Build Nginx Docker image
- ✅ Basic container testing with `curl`
- ✅ SonarQube vulnerability scanning
- ✅ Deployment to AWS Lightsail via SSH
- ✅ Artifact storage for Docker image

## 📦 Project Structure

.
├── Dockerfile
├── html/ # Static content for Nginx
├── .github/
│ └── workflows/
│ └── nginx-lightsail-cicd.yml
├── sonar-project.properties
└── README.md

markdown
Copy
Edit

## 🛠️ Technologies Used

- **GitHub Actions** – CI/CD automation
- **Docker** – Containerize Nginx server
- **AWS Lightsail** – Lightweight cloud hosting
- **SonarQube** – Static code analysis and vulnerability scanning
- **Bash/SSH** – Secure deployment scripting

## 🏗️ CI/CD Pipeline Overview

```mermaid
graph TD
    A[Push to Main Branch] --> B[Build Docker Image]
    B --> C[Run SonarQube Scan]
    C --> D[Test Docker Container]
    D --> E[Deploy to AWS Lightsail]
✅ Prerequisites
AWS Lightsail instance with Docker installed.

A static IP assigned to your Lightsail instance.

GitHub secrets configured:

LIGHTSAIL_SSH_KEY – Private SSH key for your instance

LIGHTSAIL_USER – SSH username (e.g., ubuntu)

LIGHTSAIL_HOST – Public IP or hostname

SONAR_TOKEN – SonarQube authentication token

SONAR_HOST_URL – URL of your SonarQube server

🧪 Local Setup Instructions
Clone the repository:

bash
Copy
Edit
git clone https://github.com/your-username/nginx-lightsail-cicd.git
cd nginx-lightsail-cicd
Build the Docker image:

bash
Copy
Edit
docker build -t nginx-app .
Run locally for testing:

bash
Copy
Edit
docker run -d -p 8080:80 nginx-app
Then visit http://localhost:8080.

📈 SonarQube Setup
Make sure you have a running SonarQube instance and include the following in sonar-project.properties:

properties
Copy
Edit
sonar.projectKey=nginx-app
sonar.projectName=Nginx App
sonar.sources=.
sonar.sourceEncoding=UTF-8
🚀 Deployment
Once the pipeline runs successfully on main, the Docker image will be copied and deployed to your Lightsail instance over SSH.

The deployment step:

Transfers the .tar image

Loads it using Docker

Replaces any running nginx container

📜 License
This project is licensed under the MIT License. See the LICENSE file for details.

🤝 Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you'd like to change.

📬 Contact
For questions or suggestions, feel free to reach out via GitHub Issues.

markdown
Copy
Edit

---

Would you like me to bundle this into a downloadable repo template (ZIP) with:
- `README.md`
- `Dockerfile`
- `.github/workflows/...`
- `sonar-project.properties`
- `html/index.html` sample?







You said:
write one without the sonarqube


ChatGPT said:
Here's a clean README.md version without SonarQube, focused solely on the CI/CD pipeline for building, testing, and deploying Nginx to an AWS Lightsail server.

📄 README.md
markdown
Copy
Edit
# 🚀 Nginx Lightsail CI/CD Pipeline

This repository provides a GitHub Actions CI/CD workflow for automatically building, testing, and deploying a Dockerized Nginx web server to an AWS Lightsail instance.

## 🧩 Features

- ✅ Build Nginx Docker image
- ✅ Basic container testing using `curl`
- ✅ Transfer and deploy Docker image to AWS Lightsail over SSH
- ✅ Secure configuration using GitHub Secrets

## 📦 Project Structure

.
├── Dockerfile
├── html/ # Static HTML content for Nginx
├── .github/
│ └── workflows/
│ └── nginx-lightsail-cicd.yml
└── README.md

markdown
Copy
Edit

## 🛠️ Technologies Used

- **GitHub Actions** – Workflow automation
- **Docker** – Containerized Nginx server
- **AWS Lightsail** – Cloud hosting for deployment
- **SSH/SCP** – Secure file and command transfer

## 🏗️ CI/CD Pipeline Overview

    A[Push to Main Branch] --> B[Build Docker Image]
    B --> C[Test Docker Container]
    C --> D[Deploy to AWS Lightsail]
✅ Prerequisites
AWS Lightsail instance with Docker installed and SSH access.

A static IP assigned to the instance.

The following GitHub secrets must be configured:

LIGHTSAIL_SSH_KEY – Your private SSH key (PEM format)

LIGHTSAIL_USER – SSH user (e.g., ubuntu)

LIGHTSAIL_HOST – IP address or DNS of the instance

🧪 Local Development
Clone this repo:

bash
Copy
Edit
git clone https://github.com/your-username/nginx-lightsail-cicd.git
cd nginx-lightsail-cicd
Build and run the Docker container:

bash
Copy
Edit
docker build -t nginx-app .
docker run -d -p 8080:80 nginx-app
Visit http://localhost:8080 in your browser to verify.

🚀 Deployment Workflow
Once code is pushed to the main branch:

The pipeline builds a Docker image.

The image is tested locally using curl.

If successful, it’s securely copied to the Lightsail instance via scp.

The container is deployed and served on port 80.

🔐 Security Notes
SSH private keys are stored as encrypted GitHub Secrets.

Strict host key checking is disabled for CI convenience but should be managed securely in production.

📜 License
This project is licensed under the MIT License. See the LICENSE file for details.

