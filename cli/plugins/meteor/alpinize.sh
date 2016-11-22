set -e

METEORJS_BUILD_NAME=$1
METEORJS_BUILD_NAME_ALPINE=${METEORJS_BUILD_NAME}.alpine

# Alpine build & install meteor
mkdir /meteorg
tar -xzf /meteor/${METEORJS_BUILD_NAME}.tar.gz -C /meteorg
(cd /meteorg/bundle/programs/server && npm i && npm run install)
(cd /meteorg && tar -czf /meteor/${METEORJS_BUILD_NAME_ALPINE} ./bundle)

# Dockerfile
cat base | sed "s/__BUILD__/${METEORJS_BUILD_NAME_ALPINE}/g" > /meteor/Dockerfile

# Message
echo "Run following command to create the image:"
echo "  $ docker build -t ${METEORJS_BUILD_NAME} ."
printf "\n"
echo "Successful alpine build created !!!"
