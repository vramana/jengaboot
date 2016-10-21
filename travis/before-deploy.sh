if [[ "$TRAVIS_TAG" = "" ]]; then exit 0; fi

PLATFORM=$([ "$TRAVIS_OS_NAME" == "linux" ] && echo "linux64" || echo "$TRAVIS_OS_NAME")

zip "_build/rebel-$PLATFORM-$TRAVIS_TAG.zip" _build/src/rebel
