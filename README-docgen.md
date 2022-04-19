Documentation project for the Reference Architecture Doc Site with Jekyll & Pandoc docgen

# Prerequisites

* Git
* Bash Terminal Access (e.g., WSL for Windows, MacOS Terminal or another Linux)
* Ruby v2.7.0
* Gem v3.1.2
* Gcc/G++ v9.3.0
* GNU Make v4.2.1

# Clone Project

1. Clone Git Project and change directory to desired documentation release per example below.

    ```
    $ git clone git@ssh.dev.azure.com:v3/srolab/artemis/artemis
    $ cd artemis
    ```

# Install Tools for WSL

1. Start a Bash Shell

1. Install Ruby

    ```
    sudo apt update
    sudo apt-get upgrade -y
    sudo apt-get install -y ruby-full build-essential zlib1g-dev
    ```
1. Uninstall Ruby (Optional)

    ```
    sudo apt-get remove -y ruby-full build-essential zlib1g-dev
    sudo apt-get remove -y ruby rubygems
    ```

1. Configure GEM installation directory for user

    ```
    echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
    echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
    echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
    source ~/.bashrc
    ```

1. Check versions

    ```
    ruby -v   # ruby 2.7.0p0
    gem -v    # gem 3.1.2
    gcc -v    # gcc version 9.3.0
    g++ -v    # gcc version 9.3.0
    make -v   # GNU Make 4.2.1
    ```

1. Install Gems

    ```
    gem install jekyll:3.9.1
    gem install bundler jekyll-watch
    ```

1. Check versions

    ```
    bundle exec jekyll -v  # jekyll 3.9.0
    bundler -v             # Bundler version 2.3.11
    ```

# Test Site Locally

1. Run Jekyll Server

    ```
    bundle exec jekyll serve --force_polling
    ```

    >NOTE: Use `CTRL-C` to stop server

1. Browse Local Site:

    http://127.0.0.1:4000   


# Zscaler Root Certificates

Some organizations require the use of Zscaler for Internet content filtering. In order for your tools (e.g. Ruby, Python, Node, etc.) to access secure repositories, a Zscaler Root Security Certificate must be installed on the device. For more information visit the [Zscaler Help](https://help.zscaler.com/zia/adding-custom-certificate-application-specific-trusted-store)

# Zscaler Root Certificates on WSL

1. Request the Zscaler Root Security Certificate from your administrator and save it on a local folder (e.g. /mnt/c/temp )

    >NOTE: This usually is a .zip file (e.g. ZscalerRootCerts.zip)

1. Start a Bash Shell

1. Create Certs folder

    ```
    mkdir ~/ssl_certs
    ```

1. Unzip Zscaler Root CA certificate

    ```
    unzip -p /mnt/c/Temp/ZscalerRootCerts.zip ZscalerRootCerts/ZscalerRootCertificate-2048-SHA256.crt > ~/ssl_certs/ZscalerRootCertificate-2048-SHA256.crt
    ```

1. Configure Zscaler Root CA for Ruby

    ```
    echo '# Zscaler Ruby Config' >> ~/.bashrc
    echo 'export SSL_CERT_FILE="$HOME/ssl_certs/ZscalerRootCertificate-2048-SHA256.crt"' >> $HOME/.bashrc
    ```