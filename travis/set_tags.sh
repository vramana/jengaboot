if [ -z "$TRAVIS_TAG" ]; then
  echo -e "Starting to tag commit.\n"

  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis"

  # Add tag and push to master.
  git tag -a v${TRAVIS_BUILD_NUMBER} -m "Travis build $TRAVIS_BUILD_NUMBER pushed a tag."
  git push "https://${GH_TOKEN}@${GH_REF}" --tags > /dev/null 2>&1
  git fetch origin

  echo -e "Done magic with tags.\n"
fi
