### Create SSH Keys

SSH (Secure Shell) keys are acces credentials that are used in the SSH protocol and are foundational to modern Infrastructure-as-a-Service platforms such as AWS, Google Cloud, and Azure. Procedure is as follows:

1. Start a Bash Shell

1. Create a Service Account SSH Key (See Example below)

    ```
    ssh-keygen -t rsa -b 4096 -C "olympus@demo.com" -f $HOME/.ssh/olympus
    ```

    > NOTE: In this example we are creating an RSA 4096 bit SSH key called `olympus` and for tracking purposes we are using an arbitrary comment of `olympus@demo.com` and storing the SSH Key files in the $HOME/.ssh folder

* Set SSH Permissions

    ```
    chmod -R 700 ~/.ssh
    chmod 644 ~/.ssh/authorized_keys
    ``` 

* Safeguard Service Account SSH Key

    > NOTE: The SSH Key is made up of a public key file (.pub file extension) and a corresponding private key file (without an extension)

* Create a Personal SSH Key (Same steps as above, except a different key name (e.g. `yourname`)

* Safeguard Personal SSH Key