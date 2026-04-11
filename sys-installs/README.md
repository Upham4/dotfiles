## AWS CLI Install Script

The script `install_aws_cli.sh` installs the AWS Command Line Interface

### What the script does:
- Checks if the script is run as root
- Checks if the system uses the apt package manager
- Prompts the user before installing
- Checks if the `aws` command already exists to avoid conflicts
- Installs required dependencies (curl and unzip)
- Downloads and installs AWS CLI
- Cleans up installation files after completion

## Sources

- [AWS Command Line Interface Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)  
  Used to understand how to properly install AWS CLI on Linux systems
