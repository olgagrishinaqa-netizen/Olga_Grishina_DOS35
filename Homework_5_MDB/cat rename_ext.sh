#!/bin/bash

FILE_NAME="$1"
NEW_EXT="$2"

if [[ -z "$FILE_NAME" || -z "$NEW_EXT" ]]; then
    echo "Использование: $0 <имя_файла> <новое_расширение>"
    exit 1
fi

if [[ "$FILE_NAME" != *.* ]]; then
    RESULT="${FILE_NAME}.${NEW_EXT}"
    echo "У исходного файла нет расширения. Итог: $RESULT"
    exit 0
fi

NAME_ONLY="${FILE_NAME%.*}"

RESULT="${NAME_ONLY}.${NEW_EXT}"

echo "Старое имя: $FILE_NAME"
echo "Новое имя:  $RESULT"
