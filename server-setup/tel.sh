
install tmux

tmux-setup-storage

pkg install vim openssh rsync
ssh-keygen -t ed25519 -a 100
ssh-copy-id momo@desktop
ssh-copy-id rasp and home

vim rsync.sh
"""
#!/bin/bash

rsync -ruvL * momo@10.0.0.203:/mnt/md0/tel/ --ignore-errors --dry-run

read -p "Are you sure you want to continue? <y/N>" prompt
if [[ $prompt =~ [yY](es)* ]]
then
	rsync -ruvL * momo@10.0.0.203:/mnt/md0/tel/ --ignore-errors
fi
"""

install speedtest-cli

vim backup-tmp.sh
"""
#!/bin/bash

rsync -uv --files-from=<(find -L . -type f -mtime -1) . momo@home.mhamed.dev:/tmp/ram/ --dry-run

read -p "Are you sure you want to continue? <y/N>" prompt
if [[ $prompt =~ [yY](es)* ]]
then
	rsync -uv --files-from=<(find -L . -type f -mtime -1) . momo@home.mhamed.dev:/tmp/ram/
fi
"""

