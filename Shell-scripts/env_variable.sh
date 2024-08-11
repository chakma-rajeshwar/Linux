#!/bin/bash

# Define environment variables
ENV_VARS="
export DEF_TOP=/d01/def
export DEF_DATA_TOP=\"\$DEF_TOP/data\"
export DEF_APP_TOP=\"\$DEF_TOP/app\"
export DEF_WEB_TOP=\"\$DEF_TOP/web\"

export aiven_username='avnadmin'
export aiven_password='AVNS_a9EKg9b8kd1sRRGMZsy'
export secret_key='akmsnffjjhggkkd'
"

# Append the environment variables to ~/.bashrc
echo "$ENV_VARS" >> ~/.bashrc

# Source ~/.bashrc to apply changes immediately for the current session

source ~/.bashrc

echo "Environment variables have been added and sourced."
