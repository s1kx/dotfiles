" commands
" > :w!! = save with sudo
cmap w!! %!sudo tee > /dev/null %
