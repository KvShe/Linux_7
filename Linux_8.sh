#!/bin/bash
# Написать скрипт очистки директорий
# На вход принимает путь к директории
# Если директория существует, то удаляет в ней все файлы с расширениями .bak, .tmp, .backup
# Если директории нет, то выводит ошибку

dir="${1:-'empty'}"
if [ "$dir" == "'empty'" ]; then
    echo Error. No argument
    exit
elif [ ! -d "$dir" ]; then
    echo Error. Directory "$dir" is not exist
    exit
fi

find "$dir" -name "*.bak" -delete
find "$dir" -name "*.tmp" -delete
find "$dir" -name "*.backup" -delete
