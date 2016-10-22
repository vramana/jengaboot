# if [[ "$TRAVIS_TAG" = "" ]]; then exit 0; fi

PLATFORM=$([ "$TRAVIS_OS_NAME" == "linux" ] && echo "linux64" || echo "$TRAVIS_OS_NAME")

echo "$TRAVIS_OS_NAME"

zip "rebel-$PLATFORM.zip" package.json
