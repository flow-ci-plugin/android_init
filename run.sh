# ************************************************************
#
# those are default envs that you can use them at any step.
#
# ************************************************************

echo '===============DEFAULT ENVS======================='

echo "\$FLOW_PROJECT_NAME = $FLOW_PROJECT_NAME"
echo "\$FLOW_USER_ID = $FLOW_USER_ID"
echo "\$FLOW_PROJECT_ID = $FLOW_PROJECT_ID"
echo "\$FLOW_PROJECT_GIT_URL = $FLOW_PROJECT_GIT_URL"
echo "\$FLOW_PROJECT_LANGUAGE = $FLOW_PROJECT_LANGUAGE"
echo "\$FLOW_GIT_HOST = $FLOW_GIT_HOST"
echo "\$FLOW_JOB_ID = $FLOW_JOB_ID"
echo "\$FLOW_EVENT_ID = $FLOW_EVENT_ID"
echo "\$FLOW_EVENT_NUMBER = $FLOW_EVENT_NUMBER"
echo "\$FLOW_PHP_OLD_VERSION = $FLOW_PHP_OLD_VERSION"

echo '=================================================='
# ************************************************************
#
# This step will init your project
#
#   Variables used:
#     $FLOW_VERSION
#     $FLOW_PROJECT_ANDROID_SDK
#     $FLOW_PROJECT_NAME
#     $FLOW_PROJECT_ANDROID_CPU
#
#   Outputs:
#     $FLOW_JAVA_VERSION
#     $FLOW_ANDROID_SDK_VERSION
#     $FLOW_ANDROID_CPU_VERSION
#
# ************************************************************

echo "\$FLOW_ALIAS_NAME = $FLOW_ALIAS_NAME"
echo "\$FLOW_ALIAS_PASS = $FLOW_ALIAS_PASS"
echo "\$FLOW_KEYSTORE_PASS = $FLOW_KEYSTORE_PASS"
echo "\$FLOW_CERTIFICATE_FILE = $FLOW_CERTIFICATE_FILE"

flow_cmd "echo $FLOW_PROJECT_ANDROID_SDK" --echo
flow_cmd "echo $FLOW_PROJECT_ANDROID_CPU" --echo
flow_cmd "echo $ANDROID_NDK_HOME" --echo

source $HOME/.nvm/nvm.sh
source $HOME/.rvm/scripts/rvm

echo ${FLOW_WORKSPACE}/build/$FLOW_PROJECT_NAME > ${FLOW_WORKSPACE}/output/$FLOW_JOB_ID.path --echo
flow_cmd "chjava $FLOW_VERSION" --echo

flow_cmd "java -Xmx32m -version" --echo
flow_cmd "javac -J-Xmx32m -version" --echo

export FLOW_JAVA_VERSION="$FLOW_VERSION"
export FLOW_ANDROID_SDK_VERSION="$FLOW_PROJECT_ANDROID_SDK"
export FLOW_ANDROID_CPU_VERSION="$FLOW_PROJECT_ANDROID_CPU"

