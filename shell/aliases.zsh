#-------------------------------------------
# EXAMPLE SYNTAX
#alias name=value
#alias name='command'
#alias name='command arg1 arg2'
#alias name='/path/to/script'
#alias name='/path/to/script.pl arg1'
#-------------------------------------------

alias brave='open -a /Applications/Brave\ Browser.app'
alias youtube-dl="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'"
alias sadmin-opal='$HOME/.dotfiles/expect/opal-sierra-connection'
alias top='htop'
alias drush='$PWD/vendor/bin/drush'
alias logview='lnav'
alias yubikey-'ykman'


# Customized command options, end in a 'z'
alias dfz='du -sh * 2> /dev/null'
alias duz='du -sh * 2> /dev/null'
alias lsz='exa --long --header --links  --inode --blocks --accessed --modified --created --group --all --sort=.name  --group-directories-first'
