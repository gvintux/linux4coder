#!/usr/bin/env bash
INIT_TMP=/tmp/linux4coder
L4C_GIT_REPO=https://github.com/gvintux/linux4coder.git
LOG_FILE=/tmp/linux4coder-init.log
function test_retcode() {
	if [[ $? -eq 0 ]]
	then
		printf "[OK]\n"
	else
		printf "[FAIL]\n"
		printf "Смотрите журнал ${LOG_FILE}\n"
		exit $?
	fi
}
printf "Обновление рабочего пространства linux4coder\n"
printf "* cоздание временных папок \t\t"
mkdir ${INIT_TMP} 2> ${LOG_FILE}
test_retcode
cd ${INIT_TMP}
printf "* загрузка нового рабочего пространства "
git clone --quiet ${L4C_GIT_REPO} . 2> ${LOG_FILE}
test_retcode
printf "* обновление компонентов \t\t"
git submodule update --quiet 2>> ${LOG_FILE}
test_retcode
HOME=/tmp/ble
printf "* установка рабочего пространства \t"
cp ./ ${HOME} -r -f 2> ${LOG_FILE}
test_retcode
printf "* удаление временных файлов \t\t"
rm ${INIT_TMP} -fR 2> ${LOG_FILE}
test_retcode
printf "Обновление рабочего пространства завершено\n"
cd ${HOME}
exit 0
