
#!/bin/bash

clear

rm -rf ./node_modules 2>/dev/null
rm -rf ./build 2>/dev/null
rm -rf ./package-lock.json 2>/dev/null
rm -rf ./.npm-cache 2>/dev/null
rm -rf ./yarn.lock 2>/dev/null
rm -rf ./*.tsbuildinfo 2>/dev/null


npm install


# ln -sd ./node_modules/@types/lodash/common typed