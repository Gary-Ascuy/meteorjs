METEORJS_BUILD_NAME=$1

cat base | sed "s/__BUILD__/${METEORJS_BUILD_NAME}.alpine/g" > /meteor/Dockerfile
