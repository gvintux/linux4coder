#!/usr/bin/env bash
INIT_TMP=/tmp/linux4coder
L4C_GIT_REPO=https://github.com/gvintux/linux4coder.git
LOG_FILE=/tmp/linux4coder-update.log
function test_retcode() {
	if [[ $? -eq 0 ]]
	then
		printf "[OK]\n"
	else
		printf "[FAIL]\n"
		printf "Watch log ${LOG_FILE}\n"
		exit $?
	fi
}
printf "Updating linux4coder workspace\n"
printf "* creating temporary folders \t\t"
mkdir ${INIT_TMP} 2> ${LOG_FILE}
test_retcode
cd ${INIT_TMP}
printf "* uploading new workspace \t\t"
git clone --quiet ${L4C_GIT_REPO} . 2> ${LOG_FILE}
test_retcode
printf "* updating components [1]\t\t"
git submodule --quiet update --init --quiet 2>> ${LOG_FILE}
test_retcode
printf "* updating components [2]\t\t"
git submodule --quiet foreach git pull --quiet origin master 2>> ${LOG_FILE}
test_retcode
#HOME=/tmp/home
printf "* installing workspace \t\t\t"
cp ./ ${HOME} -r -f 2> ${LOG_FILE}
test_retcode
printf "* deleting temporary files \t\t"
rm ${INIT_TMP} -fR 2> ${LOG_FILE}
test_retcode
printf "Updating finished\n"
cd ${HOME}
exit 0
