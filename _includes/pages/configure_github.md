### Configure GitHub

GitHub is the leading Source Code hosting platform for Version Control & Collaboration for your distributed teams. Cloud Native teams use Git to store both code and declarative descriptions of the infrastructure. If you want to deploy or update an application, you only need to update the Git repository and the automated deployment process handles everything else. You will need a GitHub account to clone repositories and a Personal Access Token (PAT) to kickoff deployment processes on your own. Procedure is as follows:

1. Browse to [GitHub]({{site.data.urls.github}}) and `Sign Up` for your own account.

    > NOTE: After you sign up you will get your own account where you
    can store repositories.

1. Navigate to **Your Profile > Settings > Developer Settings > Personal Access Tokens**

1. Press `Generate new token` and enter the following:

    | Field | Value |
    |-------|-------|
    | Note  | Any memorable string (e.g. `myrepo`) |
    | Expiration | `30 days` (or longer) | 
    | Scope | `repo:*` |

1. Safeguard your `Personal Access Token`

    > NOTE: You will use this PAT to connect the Azure DevOps Pipelines with GitHub

1. Navigate to **Your Profile > Settings > SSH and GPG keys**

1. Press `New SSK key` and enter the following:

    | Field | Value |
    |-------|-------|
    | Title  | Any memorable string (e.g. `mykey`) |
    | Key | Paste in YOUR PERSONAL SSH PUBLIC KEY | 

1. Press `Add SSH Key`