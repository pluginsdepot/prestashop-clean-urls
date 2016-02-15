#!/usr/bin/env sh

echo -e "\033[33mSetting up defaults and values for environment variables\033[0m"

export PATH="${TRAVIS_BUILD_DIR%%/}/vendor/bin:${PATH}"

export TEST_PROTO="${TEST_PROTO:=http}"
export TEST_HOST="${TEST_HOST:=localhost}"
export TEST_BASE_DIR="${TEST_BASE_DIR:=/}"

export TEST_DOC_ROOT="/var/www/PS_${PS_VERSION}"
export PS_ROOT="${TEST_DOC_ROOT%%/}/${TEST_BASE_DIR##/}"