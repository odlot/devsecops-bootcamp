# !/bin/bash

docker pull zricethezav/gitleaks:latest
export path_to_host_folder_to_scan=/mnt/d/GitHub/devsecops-bootcamp
docker run -v ${path_to_host_folder_to_scan}:/path zricethezav/gitleaks:latest detect --source="/path/juice-shop" --verbose