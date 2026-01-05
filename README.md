# Rofi-Pywal-Theme
A script for automatically applying colors from [Pywal](https://github.com/dylanaraps/pywal) to [Rofi](https://github.com/davatorium/rofi).  Allows you to dynamically change the Rofi theme according to the current color scheme of your system.

---

## Repository structure
```
rofi-pywal-theme/
│
├─ rofi-theme.sh # the main script for color substitution
├─ README.md
└─ LICENSE
```

---

## important!
before installation, you must have the following installed:
1. pywal - ```sudo pacman -S pywal```
2. rofi - ```sudo pacman -S rofi```

---

## ⚙ installation

1. Clone the repository:
```
git clone https://github.com/<ваш-username>/rofi-pywal-theme.git
cd rofi-pywal-theme
```
2. Make the script executable:
```
chmod +x rofi-theme.sh
```
---

## Using
Run the script with the command:
```
./rofi-theme.sh
```

---

## After completion:

- A colors.css file is created in the Rofi configuration folder (~/.config/rofi/) containing the colors from the current Pywal theme.
- The main Rofi theme file is located on the path:
  ```
  ~/.local/share/rofi/themes/dynamic-color-themes.rasi
  ```
- Rofi automatically uses the updated colors via colors.css, so that your theme becomes dynamic.

---

## The principle of operation
1. The script takes the colors from the Pywal file:
```
~/.cache/wal/colors.sh
```
2. Substitutes them into predefined Rofi selectors (for example, window, inputbar, entry, textbox, etc.).
3. If the Rofi selector does not have the specified colors, it remains unchanged.
4. As a result, you get a Rofi theme that always matches the current color scheme of your system.

---

## Customize
You can change the selectors and the substituted colors by editing the script. ```rofi-theme.sh```.
For example, you can add new selectors or change the used color variables from Pywal.

---

## License

This project is distributed under the MIT license.
