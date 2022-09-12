#!/bin/bash
composer config github-oauth.github.com $GLOBAL_GITHUB_TOKEN

REPO_SUFFIX=""
if [[ $GITHUB_REPOSITORY == *"internal"* ]] ; then
    REPO_SUFFIX="-internal"
fi

# PHP-SDK
if [[ $(curl -s -u ${GITHUB_ACTOR}:$GLOBAL_GITHUB_TOKEN https://api.github.com/repos/MultiSafepay/php-sdk${REPO_SUFFIX}/branches | grep -iGc '"name": "'${CURRENT_HEAD_REF}'"') == 1 ]]; then
    PHP_SDK_BRANCH_NAME=${CURRENT_HEAD_REF}
else
    PHP_SDK_BRANCH_NAME="master"
fi
git clone -b ${PHP_SDK_BRANCH_NAME} --single-branch https://${GITHUB_ACTOR}:$GLOBAL_GITHUB_TOKEN@github.com/MultiSafepay/php-sdk${REPO_SUFFIX}.git ./package-source/multisafepay/php-sdk/


# MAGENTO 2 CORE MODULE
if [[ $(curl -s -u ${GITHUB_ACTOR}:$GLOBAL_GITHUB_TOKEN https://api.github.com/repos/MultiSafepay/magento2${REPO_SUFFIX}-core/branches | grep -iGc '"name": "'${CURRENT_HEAD_REF}'"') == 1 ]]; then
    CORE_MODULE_BRANCH_NAME=${CURRENT_HEAD_REF}
else
    CORE_MODULE_BRANCH_NAME="master"
fi
git clone -b ${CORE_MODULE_BRANCH_NAME} --single-branch https://${GITHUB_ACTOR}:$GLOBAL_GITHUB_TOKEN@github.com/MultiSafepay/magento2${REPO_SUFFIX}-core.git ./package-source/multisafepay/magento2-core/

composer config repositories.multisafepay "path" "package-source/multisafepay/*"

composer config minimum-stability dev
composer config prefer-stable false
composer require yireo/magento2-replace-bundled:^4.1 --no-update
composer update
