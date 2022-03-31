### Configure Docker Hub

Docker Hub is the leading Docker Public Registry for finding and sharing Docker Container Images with your distributed teams. Cloud Native teams use automated build proceses to push freshly built Docker Images to Docker Hub and to deploy them to Kuberntes. You will need a Docker Hub account to store your Docker Images and an Access Token to kickoff deployment processes on your own. Procedure is as follows:

1. Browse to [Docker Hub]({{site.data.urls.docker_hub}}) and `Register` for your own account.

    > NOTE: After you sign up you will get your own account where you
    can store images.

1. Navigate to **Your Profile > Account Settings > Security**

1. Press `New Access Token` and enter the following:

    | Field | Value |
    |-------|-------|
    | Description  | Any memorable string (e.g. `mytoken`) |
    | Scope | `Read, Write, Delete` |

1. Safeguard your `Access Token`

    > NOTE: You will use this Access Token to connect the Azure DevOps Pipelines with Docker Hub