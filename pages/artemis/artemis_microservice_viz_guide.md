---
title: Microservices Visiblity Guide
tags: [visibility]
keywords: visibility
last_updated: March 29, 2022
summary: "Microservices Visiblity Guide"
sidebar: artemis_sidebar
permalink: artemis_microservice_viz_guide.html
folder: artemis
---

## Prerequisites

{% include pages/install_sn_sro.md %}

## Register Services

### Configure SRO User ID

Registering services via REST API requires a ServiceNow SRO User ID to be created and roled accordingly. Procedure is as follows:

1. Login to your SN Instance as Administrator

1. Navigate to **User Admininstration > Users**

1. Create an SRO User ID (e.g. `sroadmin`) and grant the `sn_sro.sro_admin` Role

### Register Boutique Application

The Boutique application consists of 12 services which need to be registered in the ServiceNow CMDB for visibility and observability. Procedure is as follows:

1. Sign In to [Azure DevOps]({{site.data.urls.ado}})

1. Select the Boutique Project (e.g. `cassandra`) you configured earlier.

1. Navigate to `Pipelines` and create an `azure-pipelines` folder, if it does not exist.

1. Navigate to the `azure-pipelines` folder and press `Create Pipeline`

1. For the `Where is your code?` prompt, select `GitHub`

1. For the `Select a repository` prompt, select your GitHub Repository.

1. Press `Approve and Install`

1. Enter your GitHub password if prompted.

1. At the `Configure your pipeline` prompt, select `Existing Azure Pipelines YAML file`

1. At the `Select an existing YAML file` prompt, set fields as follows:

    | Field | Value |
    |-------|-------|
    | Branch  | `main` |
    | Path | `/azure-pipelines/register-services.yml` | 

1. Press `Continue` to review your pipeline YAML.

1. Create the following Pipeline Variables:

    | Name | Value | Keep this value secret | Let users override this value when running this pipeline | 
    |-------|-------|-------|-------|
    | NOW_USERNAME | SRO USER ID (e.g. `sroadmin`) | False | True | 
    | NOW_PASSWORD | SRO USER PASSWORD  | True | True |
    | NOW_SERVER | YOUR SERVICENOW URL | False | True |
    | SERVICE_MAP | `boutique.json` | False | True |

1. Using the `Run` Button, select `Save Pipeline`

1. Rename Pipeline as follows:

    | Field | Value |
    |-------|-------|
    | Name  |  `register-services` |
    | Select folder | `\azure-pipelines` | 

1. Press `Run Pipeline`

1. Review parameters and press `Run`

### Configure SRO Application

1. Browse to the [ServiceNow Store]({{site.data.urls.sro}})

1. Download the `Manage_Teams_Flows.xml` Update Set

    > NOTE: See the `Supporting Links and Docs` section

1. Login to your SN Instance as Administrator

1. Navigate to **System Update Sets > Retrieved Update Sets**

1. Click on the **Import Update Set from XML** link and upload file

1. Preview & Commit Update Set

1. Navigate to **Service Catalog > Maintain Items**

1. Click on the `Create New Team` Catalog Item

1. Enable edits by clicking on the `To edit this record click here` link

1. Press the `Copy` button to copy the Catalog Item

1. Name Catalog Item as `Create New SRO Team`

1. Set the **Active** field to `True`

1. Click on the **Process Engine** Tab

1. Set the **Flow** field to `Global - Create New SRO Team`

1. Press the **Update** button

1. Copy the `sys_id` of the new Catalog Item

1. Navigate to **Site Reliability Operations > Administration > Properties**

1. Enable edits by clicking on the `To edit this record click here` link

1. Set the **Update team subflow name** field to `global.global__update_team_subflow`

1. Set the **Catalog Item (sys_id) which is used to Create a Team** field to the `sys_id` copied earlier

1. Press the **Save** button

## Create new Teams

1. Navigate to **Site Reliability Operations > Site Reliability Ops Workspace**

1. Navigate to **Home > My Teams > Create New Team**

1. Create a Team named `Boutique Team` and make yourself a member

1. Navigate to **Self Service > Requested Items**

1. Locate the `Create New SRO Team` Request Item

1. Set the **Approval** field to `Approved`

{% include links.html %}