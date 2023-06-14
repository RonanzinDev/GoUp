#!/usr/bin/bash
version="$1"
if [[ -z "$version" ]]; then
  version="1.20.5"
fi

directory="$2"
if [[ -z "$directory" ]];then
  directory="$HOME"
fi

target="go$version.linux-amd64.tar.gz"

url="https://go.dev/dl/$target"

echo "Installing go $version at $directory"

wget -P $directory $url


cd $directory

tar -xf $target

rm -r $target

if ! [[ -e "$HOME/go" ]]; then
  mv go/ $HOME 
fi

echo 'export PATH="~/go/bin:$PATH"' >> $HOME/.bashrc

echo "Now, just run the command 'source .bashrc', and you are ready to Go :)."
