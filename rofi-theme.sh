#!/bin/bash

# Путь к файлу pywal
COLOR_FILE="$HOME/.cache/wal/colors.sh"

# Проверка, существует ли файл
if [[ ! -f "$COLOR_FILE" ]]; then
    echo "Файл colors.sh не найден!"
    exit 1
fi

# Загружаем цвета
source "$COLOR_FILE"

# Создаём CSS для rofi
WAYBAR_CSS="$HOME/.config/rofi/colors.css"

cat > "$WAYBAR_CSS" <<EOL
/* rofi colors from pywal */
* {
  text-color: ${foreground};
}
window {
  background-color: ${color0};
  border-color: ${color10};
}
inputbar {
border-color: ${color2};
}
entry {
  placeholder-color: ${foreground};
}
textbox {
  background-color: ${color2};
}
element selected {
    border-color: ${color2};
}
EOL
echo "✓ Rofi colors updated"
exit 0