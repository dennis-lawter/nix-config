exit_with_err() {
    RED='\033[0;31m'
    RESET='\033[0m'
    >&2 echo -e "${RED}$1${RESET}"
    exit 1
}