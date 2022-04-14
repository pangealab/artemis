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

## Create Some ADO Work Items

1. Sign In to [Azure DevOps]({{site.data.urls.ado}})

1. Select the Boutique Project (e.g. `cassandra`) you configured earlier.

1. Navigate to `Boards` and create a couple of `Work Items`

    ![Work Items](images/ado_work_items.png)

    >NOTE: As a best coding practice, developers should set the Git commit message to one of these Work Items relating the code change to the Azure Boards work item.

## Connect GitHub with Azure Boards

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