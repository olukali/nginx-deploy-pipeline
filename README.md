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

```mermaid
graph TD
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
