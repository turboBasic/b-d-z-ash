#!/usr/bin/env bash

(
    DEST_USER=${DEST_USER:-ansible}
    DEST_DIR=${DEST_DIR:-/home/$DEST_USER}

    SCRIPT_DIR=$( dirname "$(realpath "${BASH_SOURCE[0]}")" )
    sudo rsync --recursive --verbose --progress --backup --backup-dir startup_scripts "$SCRIPT_DIR"/src/ "$DEST_DIR"

    for f in $(echo src/.[!.]* | xargs -n1 basename); do
        sudo chown --verbose $DEST_USER:$DEST_USER "$DEST_DIR/$f"
        sudo chmod --verbose 600 "$DEST_DIR/$f"
    done
)
