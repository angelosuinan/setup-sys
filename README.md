# System final project

System Analysis & Design, Object Oriented Programming & Relational Database Management System

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on the raspberry pi.
linux operating system

Systems
* [Auth](https://github.com/angelosuinan/auth-sys) - Backend and authentication
* [Ordering](https://github.com/angelosuinan/ordering-sys) - Ordering System frontend
* [Attendance](https://github.com/docker/docker-install) - Attendance System frontend
* [Production](https://github.com/docker/docker-install) - Production System frontend
* [Inventory](https://github.com/docker/docker-install) - Inventory System frontend

### Prerequisites

What things you need to install the software and how to install them


* Linux - mandatory
* git
* [atom](https://atom.io/) - download then ctrl shift P, type install package, search and install linter-pycodestyle
* Get and follow instructions in [dotfiles](https://github.com/angelosuinan/dotfiles) - awesome dotfiles
* [postman](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=en) - download postman plugin for chrome
* Create a projects folder
```
cd ~/
mkdir projects
```
* Get [docker](https://github.com/docker/docker-install) - Dependency Management
```
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
```
* Get [docker-compose](https://docs.docker.com/compose/install/) - run multiple containers
```
sudo pip install docker-compose
```
* add ssh key
  - Get [ssh-key](https://help.github.com/articles/connecting-to-github-with-ssh/) - generate ssh key


### Installing

A step by step series of examples that tell you have to get a development env running

* On the home folder
```
cd ~/
git clone git@github.com:angelosuinan/setup-sys.git setup
cd setup
make setup
make build
```

### Local development
* Run the Containers
```
make run
```
* Example logs, printing and debugging a system, make sure your on tmux
  - make logs-<system_name>
```
tmux
make logs-web
```
* restart a system
  - make logs-<system_name>
```
make logs-web
```

### And coding style tests

Install package in atom linter-pycodestyle

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [django](https://docs.djangoproject.com/en/1.11/) - Frontend
* [djangorest](https://maven.apache.org/) - Backend
* [docker](http://www.django-rest-framework.org/tutorial/quickstart/#quickstart) - Dependency Management

## Contributing

Fork and Contribute. push to fork, make a pull request

Always do git pull origin ... but if you have unapplied changes git stash first
Ex. on the system folder without unapplied git add ..
```
git pull origin development
```
Ex. on the system folder with unapplied git add ..
```
git stash
git pull origin development
git apply stash
```

Pushing changes
```
git push fork development
```

Pull request

* When pull request was merge, imediately do git pull origin development from above
  but be aware of if you have unapplied changes

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.
