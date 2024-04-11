# <p align="center">webserv</p>
> *Ce projet vous demandera d'écrire votre propre serveur HTTP. Vous devrez suivre la RFC d'HTTP et vous serez donc capable de tester avec un vrai navigateur web.*
>
> *HTTP est l'un des protocoles les plus utilisés sur Internet. Connaître son fonctionnement sera plus qu'utile même si vous ne travaillez pas sur le web à la fin.*

## Checklist
- [x] Config file parsing
- [x] **`GET`**
- [x] **`POST`**
- [x] **`DELETE`**
- [x] Status code
- [x] File upload
- [x] CGI
- [x] No leak
- [x] No crash

## Stress test
![](https://github.com/Skalyaeve/images-1/blob/main/screenshot/webserv.png)

## Installer
```bash
sudo apt update -y
sudo apt install -y g++
sudo apt install -y make
```
```bash
mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/src
mkdir -p $HOME/.local/include
mkdir -p $HOME/.local/srv
mkdir -p $HOME/.config
```
```bash
link=Skalyaeve/webserv
name=webserv

git clone https://github.com/$link.git $name
cd .. && make && make clean

ln -s $PWD/$name $HOME/.local/bin/$name
ln -s $PWD/src $HOME/.local/src/$name
ln -s $PWD/include $HOME/.local/include/$name
ln -s $PWD/srv $HOME/.local/srv/$name
ln -s $PWD/$name.conf $HOME/.config/$name.conf
```

## Utiliser
```bash
export PATH=$HOME/.local/bin:$PATH
webserv <config>
```

## Désinstaller
```bash
name=webserv

rm -r $name
rm $HOME/.local/bin/$name
rm $HOME/.local/src/$name
rm $HOME/.local/include/$name
rm $HOME/.local/srv/$name
rm $HOME/.config/$name.conf
```
