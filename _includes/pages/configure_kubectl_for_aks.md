### Configure Kubectl for Azure Kubernetes

Kubectl is a command line tool used to run commands against Kubernetes clusters. It does this by authenticating with the Master Node of your cluster and making API calls to do a variety of management actions. If you're just getting started with Kubernetes, prepare to be spending a lot of time with kubectl. Configuration for Azure Kubernetes (AKS) is as follows:

1. Start a Bash Shell

1. Login to Azure

    ```
    az login
    ```

1. Get AKS Credentials (See Example below)

    ```
    az aks get-credentials --resource-group olympus --name olympus --file ~/.kube/config-aks
    ```

    > NOTE: In this example we are getting credentials in Kubectl format for our k8s cluster called `olympus` in the resource group `olympus` and saving it in the `./kube/` local folder and calling the file `config-aks`

1. Configure kubectl environment variable

    ```
    export KUBECONFIG=$HOME/.kube/config-aks
    ```

1. Set kubectl context for AKS (See Example below)

    ```
    kubectl config use-context olympus
    ```

1. Test AKS Cluster Connection

    ```
    kubectl get namespaces
    kubectl cluster-info
    kubectl get nodes -A
    kubectl get pods -o wide -A
    ```