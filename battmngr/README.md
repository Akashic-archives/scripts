# Fork of 0xless/battmngr

I want to customise the script battmngr to better respond to my needs.

You first need to install wget and acpi-call

```shell
sudo apt update && sudo apt install -y wget acpi-call
```
(in my experiance it is acpi-call-dkms but that what the original repo suggest)

And for the script to install it:

```shell
curl -L https://raw.githubusercontent.com/Akashic-archives/scripts/refs/heads/main/battmngr/install.sh | sudo bash
```

