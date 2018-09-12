#!/usr/bin/env bash
INIT_TMP=/tmp/linux4coder
L4C_GIT_REPO=https://github.com/gvintux/linux4coder.git
LOG_FILE=/tmp/linux4coder-init.log
function test_retcode() {
	if [[ $? -eq 0 ]]
	then
		printf "\t[OK]\n"
	else
		printf "\t[FAIL]\n"
		printf "Смотрите журнал ${LOG_FILE}\n"
		exit $?
	fi
}
printf "Инициализация рабочего пространства linux4coder\n"
printf "* cоздание временных папок \t"
mkdir ${INIT_TMP} 2> ${LOG_FILE}
test_retcode
cd ${INIT_TMP}
printf "* клонирование рабочего пространства "
git clone --quiet ${L4C_GIT_REPO} . 2> ${LOG_FILE}
git submodule update --quiet
test_retcode
HOME=/tmp/ble
printf "* установка рабочего пространства "
cp ./ ${HOME} -r -f 2> ${LOG_FILE}
test_retcode
printf "* удаление временных файлов \t"
rm ${INIT_TMP} -fR 2> ${LOG_FILE}
test_retcode
printf "Клонирование рабочего пространства завершено\n"
cd ${HOME}
exit 0
