main() {
    echo "Current directory: `pwd`"
    DIRECTORY="${HOME}/.emacs.d"
    if [ ! -d "$DIRECTORY" ]; then
        echo "git clone https://github.com/aborn/nicemacs.git ${DIRECTORY}"
        git clone https://github.com/aborn/nicemacs.git ${DIRECTORY}
        echo "Add following code to your emacs init file:"
        echo " (add-to-list 'load-path \"~/multi-term-plus\")"
        echo " (require 'multi-term-config)"
    else
        DATE=`date +%Y-%m-%d-%H-%M-%S`
        echo "$DATE"
        echo "direcotry ${DIRECTORY} already exists."
    fi
}

main
