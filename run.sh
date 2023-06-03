#!bin/sh
for d in */ ; do
    cd $d
    # execute the submodules
    if [[ $d != *"docs"* ]]; then
        npm start
    fi
    cd ..
done