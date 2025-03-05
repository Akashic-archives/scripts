# setup

Not that long ago, I made a mistake and my sd card on my raspberry pi got corrupted. I decided to write some scripts so that i can have it up and running faster next time. No need for me to write commands for 2 hours to have it setup as i want it.
For now. you need to copy the commands and maybe change some things, and I know that there are some things that are hard to automate, but in the future, I want to be able to copy the commands below.

Note to myself, I need to put it on my website so that the url is something like https://mhamed.dev/rasp-setup.sh

### Raspberry pi

```shell
curl -fsSL https://raw.githubusercontent.com/Akashic-archives/scripts/refs/heads/main/server-setup/rasp-script.sh | sh
```

### Server

```shell
curl -fsSL https://raw.githubusercontent.com/Akashic-archives/scripts/refs/heads/main/server-setup/website-script.sh | sh
```

