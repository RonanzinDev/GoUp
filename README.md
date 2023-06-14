# Goup
I make this project to simplify the go installation on Linux.

## Prerequisites

* [x] - Your system must have `wget` installed


## Parameters
You have 2 optional parameters

1) First parameter is the Go version that you want. By default, it's the 1.20.5 version.

2) Second one is the path that you want to install Go. By default, it's the home path. 


TODO: The third parameter for the shell. By default is bash (.bashrc).

## Installation

To download with the default parameters just run the following:
<br/>
`curl https://raw.githubusercontent.com/RonanzinDev/GoUp/main/install_golang.sh | sh`

To run with parameters, just run the following:
<br/>
`curl -sS https://raw.githubusercontent.com/RonanzinDev/GoUp/main/install_golang.sh | sh -s 1.go.version /path/to/save/go`

For example:
`curl -sS https://raw.githubusercontent.com/RonanzinDev/GoUp/main/install_golang.sh | sh -s 1.20.5 downloads/`. The 1.20.5 means GO version and downloads/ mean the path that GO will be downloaded.

After the installation is complete, run `source $HOME/.bashrc`. You can find the `go/` folder in your home path.
