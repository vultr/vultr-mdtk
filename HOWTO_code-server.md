# How to Install the Vultr Markdown Toolkit with Code-Server

The [Vultr Markdown Toolkit](https://github.com/vultr/vultr-mdtk) is a productive Markdown writing environment with a docs-as-code philosophy, and it supports remote editing with [code-server](https://github.com/cdr/code-server). Follow this guide to install the toolkit and code-server on a freshly-deployed Ubuntu 20.04 Vultr instance. This installation uses Nginx as a reverse-proxy and an optional Let's Encrypt SSL certificate for security.

## Example Names

This guide uses example names and addresses.

* **mdtk.example.com** : Example fully-qualified server name
* **192.0.2.123** : Example server IP address
* **mdtk** : Linux username for code-server

**_Important:_** If you change the Linux username, edit the `vscode-vale.configPath` line in `code-server.code-workspace` to match. Make sure the path to the `.vale.ini` file is valid.

        "vscode-vale.configPath": "/home/mdtk/vultr-mdtk/.vale.ini",

## 1. Deploy the Server

1. Deploy a new Ubuntu 20.04 server instance. Use an instance with a minimum of 1 GB RAM for best performance.
1. Connect to the server instance via SSH as root.
1. Add the `mdtk` user. Choose a strong password when prompted.

        # adduser mdtk

1. Add `mdtk` to the **sudo** group.

        # usermod -aG sudo mdtk

1. Switch to the `mdtk` account for the rest of this guide.

        # su - mdtk

1. Update the server.

        $ sudo apt update -y
        $ sudo apt upgrade -y

1. This step is optional, but recommended.
Link the server instance to a Vultr firewall group.
Add rules to allow **SSH**, **HTTP** and **HTTPS** (ports 22, 80, and 443) from your IP address and block all other access.

## 2. Install Code-Server

1. Review the code-server [Getting Started](https://github.com/cdr/code-server#getting-started) guide, then install code-server.

        $ sudo curl -fsSL https://code-server.dev/install.sh | sh

1. Enable code-server to launch when the server boots.

        $ sudo systemctl enable --now code-server@$USER

        Created symlink /etc/systemd/system/default.target.wants/code-server@mdtk.service → /lib/systemd/system/code-server@.service.

## 3. Install Nginx

The Markdown Toolkit uses Nginx as a reverse-proxy for code-server.

1. Install Nginx.

        $ sudo apt install -y nginx

1. Install Certbot and the Nginx plugin to use the free Let's Encrypt SSL certificate.
    This is optional, but highly recommended.

        $ sudo apt install -y certbot python3-certbot-nginx

1. If using Let's Encrypt, create a DNS "A" record with a fully-qualified domain name, such as `mdtk.example.com`, that resolves to the server's IP address.
1. Create a code-server Nginx configuration file.

        $ sudo nano /etc/nginx/sites-available/code-server

    Paste the server configuration below into `/etc/nginx/sites-available/code-server`. Replace the **server_name** parameter `mdtk.example.com` with the server's fully-qualified domain name. Or, use the server's IP address if not using Let's Encrypt SSL certificates.

        server {
            listen 80;
            listen [::]:80;
            server_name mdtk.example.com;

            location / {
            proxy_pass http://localhost:8080/;
            proxy_set_header Host $host;
            proxy_set_header Upgrade $http_upgrade;
            proxy_set_header Connection upgrade;
            proxy_set_header Accept-Encoding gzip;
            }
        }

1. Enable the Nginx site.

        $ sudo ln -s /etc/nginx/sites-available/code-server /etc/nginx/sites-enabled/code-server

1. Install the Let's Encrypt certificate. This step is optional, but highly recommended.

    Before you request the certificate, ensure that the fully-qualified domain name, such as `mdtk.example.com`, resolves to the server's IP address. If you secured the server with the Vultr firewall, temporarily open HTTP and HTTPS (ports 80 and 443) for Certbot to perform the certificate challenge.

    Replace `mdtk.example.com` with the server's name, and `admin@example.com` with your email address.

        $ sudo certbot --non-interactive --redirect --agree-tos --nginx -d mdtk.example.com -m admin@example.com

## 4. Install Vale

[Homebrew](https://brew.sh/) is a prerequisite to install Vale, which is a required part of the Markdown Toolkit.

1. Review the [Homebrew on Linux](https://docs.brew.sh/Homebrew-on-Linux) guide, then install Homebrew.

        $ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

1. Install the Homebrew dependencies.

        $ sudo apt install build-essential -y

1. Add Homebrew to your `PATH` and to your bash shell profile script.

        $ echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/mdtk/.profile
        $ eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

1. Install Vale.

        $ brew install vale

## 5. Configure Code-Server

1. Clone the vultr-mdtk GitHub repository.

        $ git clone https://github.com/vultr/vultr-mdtk.git

1. Find the code-server password in `~/.config/code-server/config.yaml`.

        $ cat ~/.config/code-server/config.yaml

        bind-addr: 127.0.0.1:8080
        auth: password
        password: b4e8xxxxxxxxxxxxxxxx2869
        cert: false

1. Log in to code-server in a web browser with the password. If you installed the Let's Encrypt SSL certificate, use HTTPS and the server's name. Otherwise, use HTTP and the server's IP address. For example:

        https://mdtk.example.com
        http://192.0.2.123

1. Click the Extensions icon in the left menu.
1. Install the following VS Code extensions.

    * Markdown All in One
    * markdownlint
    * vale

    Reload the webpage to activate the extensions.

1. Click the VS Code hamburger menu, select **File -> Open Workspace**.
1. Navigate to `/home/mdtk/vultr-mdtk/code-server.code-workspace` in the **Open Workspace** dropdown.

Your server setup is complete.
