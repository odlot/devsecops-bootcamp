# devsecops-bootcamp

Demo projects and notes while following along the course.

## Project 1 - Setup Secrets Scanning in GitLab CI and Pre-Commit Script using GitLeaks

**Reference**: Module 3 - Application Vulnerability Scanning

**Description**: Set-up a CI pipeline and pre-commit script to scan for secrets using [GitLeaks](https://github.com/gitleaks/gitleaks).

- Configure GitLeaks job in CI to check commits for secrets.
- Create a Git pre-commit hook script that runs GitLeaks using Docker, and performs GitLeaks scan before the code is committed.

**Used technologies**:

- Uses the juice-shop repository found [here](https://gitlab.com/twn-devsecops-bootcamp/latest/juice-shop.git) on branch `feature/starting-code` as a submodule.
- GitHub workflow, GitLeaks, Git

**Overview**: The pipeline `project-1.yml` can be found under `.github/workflows`.
The pre-commit hook `project-1-pre-commit.sh` is available in the root folder of this repository.

![project-1](./attachments/project-1.excalidraw.png)

## Project 2 - Setup Static Application Security Scanning in GitLab CI using NJSScan & Semgrep

**Reference**: Module 3 - Application Vulnerability Scanning

**Description**: Set-up a CI pipeline for Static Application Secret Testing (SAST) using NJSScan and Semgrep:

- Configure NJSScan in CI to run SAST scan against repository code.
- Configure Semgrep in CI to run additional SAST scan against repository code.

**Used technologies**:

- [NJSScan](https://github.com/ajinabraham/njsscan)
- Semgrep
  - **Note**: Uses [`semgrep scan`](<https://semgrep.dev/docs/getting-started/cli-oss>) instead of `semgrep ci` due to changes in the dependency.
- GitHub workflow, Git

**Overview**: The pipeline `project-2.yml` can be found under `.github/workflows`.

![project-2](./attachments/project-2.excalidraw.png)

## Project 3 - Upload Security Scan Results Automatically to DefectDojo

**Reference**: Module 4 - Vulnerability Management and Remediation

**Description**: Create a Python script that automatically uploads security scan findings to DefectDojo, a vulnerability management tool, using CI.

- Create a Python script that connects to DefectDojo via API key
- Create a Python script to upload GitLeaks, Semgrep, and NJSScan files from CI security scanning jobs to DefectDojo
- Add a new job in CI pipeline to run the Python script to upload findings to DefectDojo as part of the pipeline execution.

**Used technologies**:

- [DefectDojo](https://defectdojo.github.io/django-DefectDojo/getting_started/demo/)
  - **Note**: You might need to re-generate a new API v2 key via the [DefectDojo demo webpage](https://demo.defectdojo.org/api/key-v2).

**Overview**: The pipeline `project-3.yml` can be found under `.github/workflows`.

![project-3](./attachments/project-3.excalidraw.png)

## Project 4 - TODO

## Project 5 - Setup SCA Scanning using RetireJS and Upload Findings to DefectDojo

**Reference**: Module 5 - Vulnerability Scanning for Application Dependencies

**Description**: Set-up Software Composition Analysis (SCA) scanning in CI and automatically upload scan reports to DefectDojo.

- Create a new job in the CI pipeline for automated SCA scanning using RetireJS
- Configure the job to save the SCA scan report as an artifact
- Upload the RetireJS scan report to DefectDojo using Python automation script

**Used technologies**:

- DefectDojo
- RetireJS

**Overview**: The pipeline `project-5.yml` can be found under `.github/workflows`.

![project-5](./attachments/project-5.excalidraw.png)

## Project 6 - Upload Images to AWS ECR using CI/CD Pipeline

**Reference**: Module 6 - Build a CD Pipeline

**Description**: Configure CI pipeline with AWS user credentials to upload images to AWS ECR via CI/CD pipeline.

- Create access keys for user in AWS IAM
- Add AWS access keys as CI secrete environment variables for use in the pipeline
- Update CI pipeline to build and push Docker images to ECR using the AWS access keys

**Used technologies**:

- AWS IAM
- AWS ECR
- GitHub Workflow

**Overview**: The pipeline `project-6.yml` can be found under `.github/workflows`.

![project-6](./attachments/project-6.excalidraw.png)

## Project 7 - Deploy Application to EC2 Instance using CI/CD Pipeline

**Reference**: Module 6 - Build a CD Pipeline

**Description**: Deploy application to AWS EC2 instance using CI/CD pipeline.

- Configure EC2 instance with Docker and ECR credentials
- Create new deployment job in CI that automatically:
  - Connects to EC2 instance using SSH
  - Pulls latest Docker images from AWS ECR
  - Stops previous running container, if applicable
  - Runs latest Docker container

**Used technologies**:

- AWS IAM
- AWS EC2
- GitHub Workflow
- Docker

**Overview**: The pipeline `project-7.yml` can be found under `.github/workflows`. The required configuration can be found under `project-7/configure.sh`.

![project-7](./attachments/project-7.excalidraw.png)

## Project 8 - Use Self-Managed Runners for CI/CD

**Reference**: Module 6 - Build a CD Pipeline

**Description**: Create an EC2 instance and configure it as a GitHub CI/CD self-managed runner.

- Create new AWS EC2 instance
- Register the EC2 instance with GitHub CI/CD as a self-hosted runner
- Configure EC2 instance as a GitHub runner with Shell executor instead of Docker executor

**Used Technologies**:

- AWS EC2
- GitHub CI/CD

**Overview**: The required configuration can be found under `project-8/configure.sh`.

![project-8](./attachments/project-8-self-hosted-github-runner.png)

## Project 9 + 10 - Scan Docker Images using Trivy with CI/CD Pipeline + Upload Trivy Image Scanning Results to DefectDojo using CI/CD Pipeline

**Reference**: Module 7 - Image Scanning - Build Secure Docker Images

**Description**: Update CI/CD pipeline to perform Docker image scanning using Trivy and upload Trivy image scan results to DefectDojo

- Create a new job in CI/CD pipeline that:
  - Pulls docker image from private AWS ECR
  - Runs Trivy image scan on the image
  - Fails Trivy job only if high or critical level security findings are detected
- Updates Trivy job to export image security findings reported as pipeline artifacts
- Updates Python script to automatically upload Trivy security findings to DefectDojo
- Update upload reports job to execute Python upload script for Trivy scan reports

**Used technologies**:

- Trivy
- Python
- DefectDojo
- Git
- GitHub Workflow
- Docker
- AWS ECR

**Overview**: The pipeline `project-9+10.yml` can be found under `.github/workflows`.

![project-9+10](./attachments/project-9+10.excalidraw.png)

## Project 11 - TODO

**Reference**: Module 9 - Secure Continuous Deployment & DAST

## Project 12 - TODO

**Reference**: Module 9 - Secure Continuous Deployment & DAST

## Project 13 - TODO

**Reference**: Module 9 - Secure Continuous Deployment & DAST
