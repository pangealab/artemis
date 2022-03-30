---
title: Microservices Visiblity Guide
tags: [visibility]
keywords: visibility
last_updated: March 29, 2022
summary: " Microservices Visiblity Guide"
sidebar: artemis_sidebar
permalink: artemis_microservice_viz_guide.html
folder: artemis
---

## Prerequisites

{% include pages/install_wsl_for_windows.md %}

{% include pages/create_ssh_key.md %}

{% include pages/install_azure_cli_with_wsl.md %}

{% include pages/install_aks_with_azure_cli.md %}

{% include pages/configure_kubectl_for_aks.md %}

{% include pages/configure_github.md %}

{% include pages/create_ado_account.md %}

{% include pages/configure_docker_hub.md %}

{% include pages/request_sn_instance.md %}

{% include pages/install_sn_sro.md %}

{% include links.html %}

## Depoy Boutique
### Fork Boutique Application GitHub Repository

A fork is a copy of a repository so you can leverage someone else's project as a starting point for your own ideas. Forking a repository allows you to freely experiment with changes without affecting the original upstream repository. Procedure is as follows:

1. Sign In to [GitHub]({{site.data.urls.github}})

1. Navigate to **Import Repository** and enter the following:

    | Field | Value |
    |-------|-------|
    | Your old repository’s clone URL  | https://github.com/pangealab/cassandra.git |
    | Your new repository owner | YOUR GIT ACCOUNT | 
    | Your new repository name | `cassandra`
    | Privacy | Public |

    > NOTE: We recommend using the same repository name as the original (e.g. `cassandra`), but it can be any memorable string (e.g. `myrepo`)

### Configure Azure DevOps Project

1. Sign In to [Azure DevOps]({{site.data.urls.ado}})

1. Create a new project as follows:

    | Field | Value |
    |-------|-------|
    | Project name  | `cassandra` |
    | Visibility | Public |

    > NOTE: We recommend using the same project name as the original GitHub repository (e.g. `cassandra`), but it can be any memorable string (e.g. `myproject`)