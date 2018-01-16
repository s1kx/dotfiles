# commands and aliases

# mkdircd - make directory and switch to it
mkdircd() {
	mkdir "$@" && cd "${@: -1}"
}

# carry over aliases to root
alias sudo='sudo '

# loadnvm - reduce shell startup time by only loading nvm when necessary
alias loadnvm=". /usr/share/nvm/init-nvm.sh"
# lesshigh - less with synax highlighting
alias lesshigh='LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s" less -M '

# mvpv - move with progress
alias move='rsync -Pa --remove-source-files'
# sortdu - list and sort files by size (also consider ncdu)
alias sortdu='du -hs * | sort -hr'

# dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

## filesystem aliases
SYSTEMFS="sysfs,cgroup,cgroup2,proc,devtmpfs,devpts,pstore,debugfs,hugetlbfs,mqueue,configfs,efivarfs"
VIRTUALFS="overlay,tmpfs,fuse,fusectl"
USERFS="no${SYSTEMFS},no${VIRTUALFS}"

# df - file system usage with default flags (human readable, only local, +filesystems (-overlay))
alias df='df -hlT -x overlay'
# findmnt - show mounts without clutter
#alias showmounts='findmnt -t nooverlay,nofuse,noproc,nosysfs,nocgroup -U'
#alias showmounts='findmnt -t nofuse,fusectl,efivarfs,overlay,proc,sysfs,cgroup,cgroup2,tmpfs,devtmpfs -U'
alias mnttree="findmnt -t no${SYSTEMFS} -U"
alias mntusertree="findmnt -t ${USERFS} -U"
alias mntdf="findmnt -t ${USERFS} -o TARGET,SOURCE,FSTYPE,SIZE,USED,AVAIL,USE%"
alias mntfstab="findmnt --fstab -o SOURCE,TARGET,FSTYPE,OPTIONS"
