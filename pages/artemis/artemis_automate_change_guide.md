---
title: Automate Change Guide
tags: [automate_change]
keywords: automate change guide
last_updated: March 24, 2022
summary: "Automate Change Guide"
sidebar: artemis_sidebar
permalink: artemis_automate_change_guide.html
folder: artemis
---

## Prerequisites

{% include pages/install_sn_devops_change.md %}

{% include pages/install_sn_devops_config.md %}

{% include links.html %}


## Configure ADO Backlog
### Create Some ADO Work Items

1. Sign In to [Azure DevOps]({{site.data.urls.ado}})

1. Select the Boutique Project (e.g. `cassandra`) you configured earlier.

1. Navigate to `Boards` and create a couple of `Work Items`

    ![Work Items](images/ado_work_items.png)

    >NOTE: As a best coding practice, developers should set the Git commit message to one of these Work Items relating the code change to the Azure Boards work item.
### Connect GitHub with Azure Boards

1. Sign In to [Azure DevOps]({{site.data.urls.ado}})

1. Select the Boutique Project (e.g. `cassandra`) you configured earlier.

1. Navigate to `Project Settings > Boards > GitHub connections` and press the `Connect your GitHub account` button.

1. Enter your GitHub password if prompted.

1. Select the GitHub organization that you want to connect to Azure Boards (e.g. YOUR GITHUB USER ID)

1. Select the GitHub repository you want to use with your Azure Boards. (e.g. YOUR GITHUB USER ID/cassandra)

1. Press the `Approve, Install & Authorize` Button

    ![GitHub Connection](images/ado_github_connection.png)

1. At this point, all commits in Git using the Azure Boards Work Item notation (e.g. AB#123) will be propagated to the relevant Work Item.

    >NOTE: For more information on linking Git commits to Azure Boards see the [Azure Devops Documentation](https://docs.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops#use-ab-mention-to-link-from-github-to-azure-boards-work-items)

## Configure ServiceNow DevOps Change
### Create ServiceNow DevOps App

1. Login to your NOW Instance as Administrator

1. Navigate to **DevOps > Create App**

1. Create an App as follows:

    | Field | Value |
    |-------|-------|
    | Application Name | `Boutique App` |

### Create ServiceNow DevOps Admin User

1. Login to your NOW Instance as Administrator

1. Navigate to **User Administration > Users**

1. Create an admin user as follows:

    | Field | Value |
    |-------|-------|
    | Username | YOUR DEVOPS ADMIN USER NAME (e.g. `devops`) |
    | Password | YOUR DEVOPS ADMIN USER PASSWORD |
    | Roles | `admin` |

1. Press **Submit** Button

### Create ServiceNow DevOps Admin Credential

1. Login to your NOW Instance as Administrator

1. Navigate to **Connections & Credentials > Credentials**

1. Create a _Basic Auth Credential_ as follows:

    | Field | Value |
    |-------|-------|
    | Name | YOUR DEVOPS ADMIN USER CREDENTIAL NAME (e.g. `devops`) |
    | User Name | YOUR DEVOPS ADMIN USER NAME (e.g. `devops`) |
    | Password | YOUR DEVOPS ADMIN USER PASSWORD |

1. Press **Submit** Buttom

### Configure ServiceNow DevOps Integration User

1. Login to your NOW Instance as Administrator

1. Navigate to **User Administration > Users**

1. Locate the User ID: `devops.integration.user`

1. Update User as follows:

    | Field | Value |
    |-------|-------|
    | Password | YOUR DEVOPS INTEGRATION USER PASSWORD |

1. Press **Update** Button

### Create ServiceNow DevOps Connection

1. Login to your NOW Instance as Administrator

1. Navigate to **Connections & Credentials > Connections & Credentials Aliases**

1. Click on the **CreateDevOpsTool** alias

1. Under the **Connections** Tab create a new Connection

1. Create a _New Connection & Credential Alias_ as follows:

    | Field | Value |
    |-------|-------|
    | Name | YOUR SERVICENOW CONNECTION NAME(e.g. `devops`) |
    | Credential | YOUR DEVOPS ADMIN USER CREDENTIAL NAME (e.g. `devops`) 
    | Connection URL | YOUR SERVICENOW URL (e.g. `https://srecon22.service-now.com`) | 

1. Press **Submit** Button

### Create DevOps GitHub Tool

1. Login to your NOW Instance as Administrator

1. Navigate to **DevOps > Tools > Create New**

    | Field | Value |
    |-------|-------|
    | Name | YOUR ADO TOOL NAME (e.g. `MyGitHub`) |
    | Tool Integration | `GitHub` | 
    | Tool Url |  GITHUB API URL (e.g. `https://api.github.com`) |
    | Credential Type | `Basic Auth` |
    | Tool Username | YOUR GITHUB ID |
    | Tool Password / Access Token | YOUR GITHUB PAT |

1. Press **Submit** Button

1. Press **Discover** Button

1. Select **Repositories** Tab

1. Select the _cassandra_ repository

1. Set **Track file changes** = `True`

1. Press the **Configure** Button and configure as follows:

    | Field | Value |
    |-------|-------|
    | Integration User | `DevOps Integration User` |
    | Integration user password | YOUR DEVOPS INTEGRATION USER PASSWORD | 

1. Press **Send** Button

    >NOTE: The provided Tool URL and credentials will be used to create a Webhook from the Git Repo to ServiceNow.

### Create DevOps ADO Tool

1. Login to your NOW Instance as Administrator

1. Navigate to **DevOps > Tools > Create New**

    | Field | Value |
    |-------|-------|
    | Name | YOUR ADO TOOL NAME (e.g. `MyAdo`) |
    | Tool Integration | `Azure DevOps` | 
    | Tool Url |  YOUR ADO ORG URL (e.g. `https://dev.azure.com/YOURORG/YOURREPO`) |
    | Credential Type | `Basic Auth` |
    | Tool Username | YOUR ADO TOKEN NAME |
    | Tool Password / Access Token | YOUR ADO TOKEN VALUE |    

1. Press **Submit** Button

1. Press **Discover** Button

1. Select **Repositories** Tab

1. Select the _cassandra_ repository

1. Set the **Track** field to `true`

1. Press the **Configure** Button and configure as follows:

    | Field | Value |
    |-------|-------|
    | Integration User | `DevOps Integration User` |
    | Integration user password | YOUR INTEGRATION USER PASSWORD| 

1. Press **Send** Button

    >NOTE: The provided Tool URL and credentials will be used to create a Webhook from the ADO Repo to ServiceNow.

1. Select **Pipelines** Tab

1. For all Pipelines, Set the **App** field to `Boutique App`

1. For all Pipelines, Set the **Track** field to `true`