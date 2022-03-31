### Check Boutique Deployment

After all 12 Boutique Pods have been deployed, you should check all the pod statuses and retrieve and safeguard the `frontend` service EXTERNAL-IP. Procedure is as follows:

1. Start a Bash Shell

1. Configure kubectl environment variable

    ```
    export KUBECONFIG=$HOME/.kube/config-aks
    ```

1. Set kubectl context for AKS (See Example below)

    ```
    kubectl config use-context olympus
    ```

1. Check on all Boutique Pods

    ```
    watch kubectl get pods -n cassandra
    ```

1. Retrieve the `frontend` service EXTERNAL-IP

    ```
    kubectl get service frontend-external -n cassandra
    ```

1. Browse to the EXTERNAL-IP to view the Boutique Application