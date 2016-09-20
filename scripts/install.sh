main() {
    echo "Current directory: `pwd`"
    DIRECTORY="${HOME}/.emacs.d"
    if [ ! -d "$DIRECTORY" ]; then
        echo "git clone https://github.com/aborn/nicemacs.git ${DIRECTORY}"
        git clone https://github.com/aborn/nicemacs.git ${DIRECTORY}
        echo "nicemacs installed success."
        echo "version 0.1"
    else
        DATE=`date +%Y-%m-%d-%H-%M-%S`
        echo "$DATE"
        echo "direcotry ${DIRECTORY} already exists."
    fi
}

main
