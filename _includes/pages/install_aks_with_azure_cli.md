### Install the Azure Kubernetes with Azure CLI

Azure Kubernetes Service (AKS) simplifies deploying a managed Kubernetes cluster in Azure by offloading the operational overhead to Azure. As a hosted Kubernetes service, Azure handles critical tasks, like health monitoring and maintenance. Installation is as follows:

1. Start a Bash Shell

1. Get Updates

    ```
    sudo apt-get update
    sudo apt-get install ca-certificates curl apt-transport-https lsb-release gnupg
    ```

1. Download and install the Microsoft signing key

    ```
    curl -sL https://packages.microsoft.com/keys/microsoft.asc \
    | gpg --dearmor \
    | sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null
    ```

1. Add the Azure CLI software repository

    ```
    AZ_REPO=$(lsb_release -cs)
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" \
    | sudo tee /etc/apt/sources.list.d/azure-cli.list    
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