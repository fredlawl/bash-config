alias edita="vim ~/.bash_aliases"
alias sourcea="source ~/.profile"
alias shutdown="sudo shutdown -P 0"
alias tmux="tmux -2"

alias cgrep='grep -nEi -d skip --color=always --include=\*.{h,c}'
alias edita='vim ~/.bash_aliases'
alias sourcea='source ~/.profile'
alias testpatchsend='(cd ~/Linux/Patches/Outgoing && git send-email --no-signed-off-by-cc --no-cc-cover --no-chain-reply-to --to=fred@fredlawl.com ./00*.patch)'

alias build="make -j5"
alias install="make -j5 && sudo make install && sudo update-grub"

alias cdpci="cd ~/Projects/pci/drivers/pci"
alias cdlinux="cd ~/Projects/pci"

# instead, fred, you could just set this sucker up so that it
# builds backups whenever you run patchseries so that if you ever
# edited patches, that the old backup remains incase you fucked it up.
# this is just something to consider :)
alias patchseries='(rm ~/Linux/Patches/Outgoing/*.patch 2>/dev/null; git format-patch -b -M100% -o ~/Linux/Patches/Outgoing --cover-letter -n master..HEAD)'
