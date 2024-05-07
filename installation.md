# Software Setup and Installation

To participate in the workshop, you will need access to the software as described below. In addition, you will need an up-to-date web browser.

If you have any questions or issues regarding any of the below issues, please feel free to attend the Data Science Office Hours hosted over Zoom by U-BDS every Thursday from 1:30p.m. - 2:00p.m. Please click [here](https://uab.zoom.us/meeting/register/tZ0rduCuqzotGtHShsawHLyRROqH3Sdz71mf) for the Zoom link.

## Cheaha Account Registration {#cheaha_account}

The cheaha supercomputer is a resource offered to all members of UAB and is a very useful tool for analyzing large datasets.

Please follow the documentation produced by UAB's Research Computing Team available [here](https://docs.rc.uab.edu/account_management/cheaha_account/#creating-a-new-account) in order to create a account to access cheaha.

Once your cheaha account is successfully created, make sure to test that you can log in to cheaha by using your access by ssh'ing onto cheaha via the command below:

```         
ssh your_blazerid@cheaha.rc.uab.edu
```

Where `your_blazerid` is your UAB blazer id. You will be prompted to enter a password, this will the same password you use for logging into other UAB services with your blazer id.

## Environment Setup

In order to setup the environment to run the pipeline on cheaha we will be using a tool called Anaconda. Anaconda is a package manager and allows for easy and quick installation of tools. We will be using Anaconda in order to install the tools needed for the initial parts of the workshop.

1.  Login to cheaha using ssh
    -   `ssh you_blazerid@cheaha.rc.uab.edu`, where `your_blazerid` is your blazer id and enter the password for your UAB account when prompted
2.  Cheaha comes with a lot of tool and software preinstalled called 'modules'. Anaconda is one of these tools, and we can load it using the below command:
    -   `module load Anaconda3`
3.  Anaconda works by creating isolated environments to install packages into. In order to create one of these environments, use the below command:
    -   `conda create -p $USER_SCRATCH/conda_envs/rnaseq_workshop`

    -   Type 'y' when prompted.

    -   This command will create a new conda enviroment called 'rnaseq_workshop' in your scratch space on cheaha and under a subdirectory called 'conda_envs'. Its important to name your environments something intuitive to help you remember their purpose.
4.  We now need to activate the environment so we can begin installing packages inside the newly created 'rnaseq_workshop' environment.
    -   `conda activate $USER_SCRATCH/conda_envs/rnaseq_workshop`
5.  Inside the environment, we need to install nextflow and nf-core as these will be needed in order to run the pipeline
    -   `conda install bioconda::nf-core`

    -   Be sure to type 'y' when prompted
6.  The environment should be created and the packages installed, in order to get back out of the environment, we deactivate it
    -   `conda deactivate`

## Globus Account Registration {#globus_account}

Globus is a web-based tool that can be used for large data transfers between different locations.

As a member of UAB, you are able to login using your blazer id. In order to login to Globus using UAB, follow the steps below:

1.  Go to the Globus [home page](https://www.globus.org/).
2.  Click 'Login' in the upper right of the page.
3.  In the center of the page, click the drop down and search for 'University of Alabama at Birmingham' and click 'Continue'.
4.  On the next page, enter your blazer id and password for your UAB account.

## Downloading the Data to Cheaha {#data_download}

The data being used for the workshop comes from the paper below:

We have gone ahead and packaged all data that will be needed for the workshop into a Globus endpoint for ease of transfer. The link for the Globus endpoint can be found [here](https://app.globus.org/file-manager?origin_id=c8838c0b-c94c-4970-9194-c32f20911e28&origin_path=%2F)

If you have never logged into the Globus account, please see the instructions [here](#globus_account)

In order to download the data, perform the following steps:

1.  Login to Globus
2.  Click on 'File Manager' in the side bar
3.  In the left pane, click the 'Collection' text box
4.  Search for 'Cheaha cluster on-campus (UAB DMZ)' and select it
    -   If you are off campus, use the 'Cheaha cluster off-campus (UAB DMZ)' collection instead
5.  In the 'Path' text box type `/scratch/your_blazerid` where `your_blazerid` is your blazer id
6.  Towards the middle, click the 'New Folder' button and type `rnaseq_workshop`.
    -   This will create a new folder names 'rnaseq_workshop' in your scratch space
7.  Double click the 'rnaseq_workshop' folder to go inside of it
8.  In the right pane, click the 'Collection' text box
9.  Search for 'rnaseq_workshop_data'
10. In the right pane, click the checkboxes beside the 'input' and 'results' folder that have appeared
11. In the middle, click the 'Transfer of Sync to...' button.

The folders will now be transferred to your scratch space on cheaha. Following this process will match the directory structure that will be used for the first portion of the workshop.

## 
