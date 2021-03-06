#!/bin/bash
composer config github-oauth.github.com $GLOBAL_GITHUB_TOKEN

REPO_SUFFIX=""
if [[ $GITHUB_REPOSITORY == *"internal"* ]] ; then
    REPO_SUFFIX="-internal"
fi

composer config repositories.multisafepay-php-sdk vcs git@github.com:MultiSafepay/php-sdk${REPO_SUFFIX}.git
composer config repositories.multisafepay-core vcs git@github.com:MultiSafepay/magento2${REPO_SUFFIX}-core.git

composer config minimum-stability dev
composer config prefer-stable false
