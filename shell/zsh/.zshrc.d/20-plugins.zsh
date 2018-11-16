# pj config
# ---
# configure in ~/.local/.zshenv

# example:

# # project paths for pj
# declare -a CODE_PATH=(
#   "${GOPATH}/src"
#   "${HOME}/code"
# )
# export CODE_PATH
#
# declare -a CODE_WORKSPACES=(
#   "github.com"
#   "bitbucket.org"
# )
# export CODE_WORKSPACES
#
# typeset -U PROJECT_PATHS
# # PROJECT_PATHS=()
# _add_project_path() { [[ -d "$1" ]] && PROJECT_PATHS+=("$1") }
# for r in "${CODE_PATH[@]}"; do
#   add_project_path "$r"
#   for ws in "${CODE_WORKSPACES[@]}"; do
#     if [[ "${ws:0:1}" == '/' ]]; then
#       add_project_path "$ws"
#     else
#       add_project_path "${r}/${ws}"
#     fi
#   done
# done
# export PROJECT_PATHS
