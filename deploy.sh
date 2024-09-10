#!/bin/bash
if [ $GIT_BRANCH == "dev" ]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u muraliss -p dckr_pat_a4qxkW-UVOvFj-y2SGhWRT8_nls
    docker tag web:v1 muraliss/dev_repo
    docker push muraliss/dev_repo

elif [ $GIT_BRANCH == "main" ]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u muraliss -p dckr_pat_a4qxkW-UVOvFj-y2SGhWRT8_nls
    docker tag web:v1 muraliss/prod_repo 
    docker push muraliss/prod_repo
fi
