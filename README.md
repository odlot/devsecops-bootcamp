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
