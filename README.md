# AWS ECR Deployment Workflow

This GitHub Actions workflow automates the process of building a Docker image, tagging it, and pushing it to an Amazon Elastic Container Registry (ECR). The workflow is triggered on each push to the `main` branch.

## Workflow Overview

1. **Build Image:**
   - Checks out the code from the repository.
   - Configures AWS credentials using the [aws-actions/configure-aws-credentials](https://github.com/aws-actions/configure-aws-credentials) action.
   - Caches Docker layers to speed up subsequent builds.
   - Logs in to Amazon ECR using the [aws-actions/amazon-ecr-login](https://github.com/aws-actions/amazon-ecr-login) action.

2. **Build, Tag, and Push Image to Amazon ECR:**
   - Builds a Docker image using the Dockerfile in the repository.
   - Tags the Docker image with the ECR repository URL and a specified image tag.
   - Pushes the Docker image to the specified Amazon ECR repository.

## Prerequisites

- AWS Access Key ID and Secret Access Key with permissions to push images to the specified ECR repository. Set these as secrets in your GitHub repository with the names `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
- Dockerfile in the repository specifying the image build instructions.

## Secrets

This workflow uses the following GitHub repository secrets:

- **AWS_ACCESS_KEY_ID:** The AWS access key ID for authentication.
- **AWS_SECRET_ACCESS_KEY:** The AWS secret access key for authentication.

## Usage

1. Ensure your Dockerfile is configured correctly in your repository.
2. Set the required secrets in the GitHub repository settings.
3. Push changes to the `main` branch to trigger the workflow.

## Customization

- Adjust the Dockerfile path or contents as needed.
- Modify the ECR repository name (`ECR_REPOSITORY`) and Docker image tag (`IMAGE_TAG`) in the workflow file.

Feel free to customize this workflow based on your project requirements.
