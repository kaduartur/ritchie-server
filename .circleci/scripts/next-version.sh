#!/bin/bash

NEXT_VERSION=$(expr $(curl -s https://commons-repo.ritchiecli.io/stable-server.txt| rev | cut -d . -f -1|rev) + 1)

echo "$VERSION_PLACEHOLDER" | sed "s/PLACEHOLDER/.${NEXT_VERSION}/"