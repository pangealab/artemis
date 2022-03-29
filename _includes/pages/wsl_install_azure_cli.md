# Install Azure CLI for WSL Ubuntu

1. Get an [Azure Account](https://azure.microsoft.com)

1. Start a Bash Shell

1. Get Updates

    ```
    sudo apt-get update
    sudo apt-get install ca-certificates curl apt-transport-https lsb-release gnupg
    ```

1. Download and install the Microsoft signing key

    ```
    curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null
    ```

1. Add the Azure CLI software repository

    ```
    AZ_REPO=$(lsb_release -cs)
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | sudo tee /etc/apt/sources.list.d/azure-cli.list    
    ```

* Install the Azure CLI

    ```
    sudo apt-get update
    sudo apt-get install azure-cli
    ```

* Test Login

    ```
    az login
    ```