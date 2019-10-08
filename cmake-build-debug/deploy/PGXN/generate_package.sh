#!/bin/sh

TEMPDIR=`mktemp -d -t madlib`
"/home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake" -E create_symlink \
    "/home/panagiotis/madlib" \
    "${TEMPDIR}/madlib-pgxn-1.16.0"
"/home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake" -E create_symlink \
    "/home/panagiotis/madlib/cmake-build-debug/deploy/PGXN/zipignore" \
    "${TEMPDIR}/zipignore"
cd "${TEMPDIR}"
zip --exclude @zipignore \
    -r "/home/panagiotis/madlib/cmake-build-debug/deploy/PGXN/madlib-pgxn-1.16.0.zip" \
    "madlib-pgxn-1.16.0"
