### Create your SSH Key

SSH (Secure Shell) keys are an access credential that is used in the SSH protocol and they are foundational to modern Infrastructure-as-a-Service platforms such as AWS, Google Cloud, and Azure. Procedure is as follows:

1. Start a Bash Shell

1. Create SSH Key (See Example below)

    ```
    ssh-keygen -t rsa -b 4096 -C "olympus@demo.com" -f $HOME/.ssh/olympus
    ```

    > NOTE: In this example we are creating an RSA 4096 bit SSH key called `olympus` and for tracking purposes we are using an arbitrary comment of `olympus@demo.com`

* Set SSH Permissions

    ```
    chmod -R 700 ~/.ssh
    chmod 644 ~/.ssh/authorized_keys
    ``` 

* Safeguard SSH Key