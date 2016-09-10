main() {
    echo "Current directory: `pwd`"
    DIRECTORY="${HOME}/.emacs.d"
    if [ ! -d "$DIRECTORY" ]; then
        echo "git clone https://github.com/aborn/nicemacs.git ${DIRECTORY}"
        git clone https://github.com/aborn/nicemacs.git ${DIRECTORY}
        echo "Now, you have installed nicemacs."
        echo " Execute following command after open emacs."
        echo " M-x nicemacs-initialize"
    else
        echo "direcotry ${DIRECTORY} already exists."
    fi
}

main
