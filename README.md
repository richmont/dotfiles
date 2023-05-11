# dotfiles
Arquivos de configuração usados por mim

![resultado](https://raw.githubusercontent.com/richmont/dotfiles/master/terminal.png)

# Pacotes
Gerar lista com todos os pacotes instalados:  
```bash
pacman -Qqe > lista_pacotes_todos.txt
```
Pacotes instalados diretamente:
```bash
pacman -Qq > lista_pacotes.txt
```
Para reinstalar em um sistema novo:
```bash
pacman -S < lista_pacotes.txt
```
[Fonte](https://superuser.com/questions/1061612/how-do-you-make-a-list-file-for-pacman-to-install-from)

# Terminal
## Alacritty
```bash
pacman -S alacritty
```
Tema: [Monokai](https://github.com/rockiedo/monokai-pro-alacritty)  
Fonte: Adobe Source Code Pro [Github](https://github.com/adobe-fonts/source-code-pro)
```bash
pacman -S adobe-source-code-pro-fonts
```

