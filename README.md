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
