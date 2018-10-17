#!/bin/bash

SOURCE="$(readlink -f "${BASH_SOURCE[0]}")"	# readlink -f resolves links recursively
DIR="$( dirname "$SOURCE" )"

# JavaFX charts rendering requires this to be set.
export SWT_GTK3=0

# Without the following line, sliders are not visible in Ubuntu 12.04
# (see <https://bugs.eclipse.org/bugs/show_bug.cgi?id=368929>)
export LIBOVERLAY_SCROLLBAR=0

"$DIR/../jre/bin/java" -Dprism.order=sw -jar "$DIR/../lib/data-man-mongodb-ent-"*.jar