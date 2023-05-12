# dotfiles
Arquivos de configuração usados por mim

![resultado](https://raw.githubusercontent.com/richmont/dotfiles/master/terminal.png)

# Pacotes
Gerar lista com todos os pacotes instalados:  
```bash
pacman -Qq > lista_pacotes_todos.txt
```
Pacotes instalados diretamente:
```bash
pacman -Qqe > lista_pacotes.txt
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

# Ajustes no AMDGPU
Utilizo uma configuração bem específica que foi necessária pesquisa para funcionar. Saída DVI da placa de vídeo com um adaptador para HDMI (DVI>HDMI). Para que a interface de som seja ligada, é preciso adicionar parâmetros no boot para habilitar.
É um problema bem conhecido, causando diferentes efeitos conforme sistema e kernel usado, parece ter surgido desde a versão 4.17.  
Alguns exemplos do problema reportado.
[O mistério do sistema que não boota nenhuma distro sem o parâmetro amdgpu.dc=0](https://plus.diolinux.com.br/t/o-misterio-do-sistema-que-nao-boota-nenhuma-distro-sem-o-parametro-amdgpu-dc-0/13127/1)

https://bbs.archlinux.org/viewtopic.php?id=246609
https://gitlab.freedesktop.org/drm/amd/-/issues/895
https://bugzilla.redhat.com/show_bug.cgi?id=1684943

Consigo habilitar a interface de som HDMI através do parâmetro de kernel amdgpu.dc=0 no arquivo /etc/default/grub e gerando o grub.cfg novamente.
Mesmo assim, o som não funciona na TV, preciso experimentar kernel abaixo do 5.17, não obtive sucesso usando os kernels LTS do AUR, falha de compilação.