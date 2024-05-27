#!/usr/bin/bash
#
PE_PATH=${PE_PATH_SECRET}

podman run --rm -it -v "$PE_PATH:/tmp/jooj/" \
    --cap-drop=ALL --cap-add=CAP_NET_BIND_SERVICE \
    --userns=keep-id --user "$(id -u)":"$(id -g)" \
    localhost:5000/wipine:v01 /bin/bash
