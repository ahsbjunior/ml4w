# Minhas configurações do Linux

## Programas

- Kitty
- git
- Neovim
- Gradia (para papel de parede)
- Yay
- Fastfetch
- keyd (para mapear HOME e END igual ao Mac)
- lazygit
- kargos (permite rodar script e mostrar output no painel no KDE)

```Bash
sudo pacman -S kitty git neovim yay fastfetch keyd
```

Exclusivo do Hyprland
- Hyprland
- Waybar
- Hyprpaper
- Rofi

Arch Linux:

```Bash
sudo pacman -S hyprland waybar hyprpaper rofi
```

## Configurações

### Arch Linux

Atualizar o sistema:

```Bash
sudo pacman -Syu
```

Instalar algumas fontes

```Bash
sudo pacman -S ttf-font-awesome ttf-dejavu noto-fonts noto-fonts-emoji ttf-liberation
```

Instalando os portais, que são os dialogs que aparecem quando preciso de um
arquivo. Aqui estamos instalando o portal [XDG Desktop Portal Hyprland](https://wiki.hypr.land/hyprland-wiki/pages/Useful-Utilities/Hyprland-desktop-portal/).

```Bash
pacman -S xdg-desktop-portal-hyprland
```

Algumas configurações extras no Pacman a serem feitas no arquivo /etc/pacman.conf

- Aumentar o número de downloads simultâneos
- Habilitar a configuração de cores

Na seção __Misc options__, desmarcar as opções:

- Color (para deixar o pacman colorido)
- ParallelDownloads = 5

Adicionar _ILoveCandy_, para deixar a saída do pacman animada.

#### Codecs

Também vamos instalar alguns codecs:

```Bash
sudo pacman -S ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer

```

#### Gerenciador AUR

Nós vamos utilizar o [YAY](https://github.com/Jguer/yay) para gerenciar. Siga as instruções no Github da conta.


### Hyprland

Adicionar as linhas abaixo no arquivo ~/.config/hypr/hyprland.conf

```Bash

source = ~/.config/hypr/monitors.conf
source = ~/.config/hypr/input.conf
source = ~/.config/hypr/bindings.conf
source = ~/.config/hypr/envs.conf
source = ~/.config/hypr/looknfeel.conf
source = ~/.config/hypr/autostart.conf
```

#### Cedilha
Configurar a cedilha foi um parto, principalmente no Chrome/Chromium. Para tal, siga o seguinte passo:

- Instale o Fcitx5:
```Bash
sudo pacman -S fcitx5 fcitx5-gtk fcitx5-qt fcitx5-configtool
```

- Configuração do ambiente: crie um arquivo de ambiente dedicado:
```Bash
mkdir -p ~/.config/environment.d/
nvim ~/.config/environment.d/fcitx5.conf
```

- No arquivo adicione as seguintes linhas:
```TOML
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
INPUT_METHOD=fcitx
SDL_IM_MODULE=fcitx
```

- Coloque para iniciar o Fcitx5 no Hyprland em segundo plano no arquivo ~/.config/hypr/hyprland.conf:
```
# Inicializa o daemon do fcitx5
exec-once = fcitx5 -d
```

- Execute a ferramenta para adicionar o layout do teclado:
```Bash
fcitx5-configtool
```

- Na janela de configuração, adicione o método de entrada do teclado. No nosso caso, adicione o US International with dead keys.

- Reinicie o computador.

#### SSH para git
Para adicionar o certificado no git, rode o seguinte comando:

```Bash
ssh-keygen -t ed25519 -C "<email>"
```

Após gerar, rode o código abaixo:

```Bash
cat ~/.ssh/id_ed25519.pub
```
## Links

Atenção: presume-se que o script será rodado da pasta inicial do repositório.

```Bash
#bash
ln -s $(pwd)/com.ml4w.dotfiles.stable/.bashrc ~/
ln -s $(pwd)/com.ml4w.dotfiles.stable/.config/bashrc ~/.config/

#kitty
ln -s $(pwd)/com.ml4w.dotfiles.stable/.config/kitty ~/.config/

#neovim
ln -s $(pwd)/com.ml4w.dotfiles.stable/.config/nvim ~/.config/

#starship
ln -s $(pwd)/com.ml4w.dotfiles.stable/.config/starship.toml ~/.config/

#yazi
ln -s $(pwd)/com.ml4w.dotfiles.stable/.config/yazi ~/.config/


#keyd
sudo ln -s $(pwd)/com.ml4w.dotfiles.stable/.config/keyd /etc/
sudo systemctl enable --now keyd
```
