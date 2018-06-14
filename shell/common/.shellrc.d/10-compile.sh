# speed up compilation by utilizing multiple cores
FREECPUS=1
export MAKEFLAGS="-j$(( $(nproc) - $FREECPUS ))"
