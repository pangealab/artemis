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