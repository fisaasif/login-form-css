# Deploy to AWS ECR with Image Scanning

This GitHub Actions workflow automates the deployment of a Docker image to Amazon ECR with image scanning using Trivy. It also sends an email notification upon completion.

## Workflow Description

- **Trigger:** The workflow is triggered on pushes to the `main` branch.
- **Steps:**
  1. **Checkout Code:** Fetch the latest code.
  2. **Configure AWS Credentials:** Set up AWS credentials for ECR access.
  3. **Cache Docker Layers:** Cache Docker layers for faster builds.
  4. **Login to Amazon ECR:** Authenticate Docker to the Amazon ECR registry.
  5. **Build Docker Image:** Build the Docker image.
  6. **Tag Docker Image:** Tag the Docker image.
  7. **Push Docker Image to Amazon ECR:** Upload the Docker image to Amazon ECR.
  8. **Run Trivy Vulnerability Scanner:** Scan the Docker image for vulnerabilities using Trivy.
  9. **Send Email Notification:** Send an email notification with the workflow status and Trivy scan results.

## Workflow Secrets

- `AWS_ACCESS_KEY_ID`: AWS Access Key ID with ECR permissions.
- `AWS_SECRET_ACCESS_KEY`: AWS Secret Access Key corresponding to the access key.
- `GITHUB_TOKEN`: GitHub token for repository access.
- `SMTP_SERVER_ADDRESS`: SMTP server address for email notifications.
- `SMTP_SERVER_PORT`: SMTP server port for email notifications.
- `SMTP_USERNAME`: SMTP username for email notifications.
- `SMTP_PASSWORD`: SMTP password for email notifications.

## Email Notification Details

- **Subject:** Docker Image Upload Status
- **Recipient:** mohammedashifc@gmail.com
- **Sender:** GITHUB ACTIONS
- **Body:**
