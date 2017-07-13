# System final project

System Analysis & Design, Object Oriented Programming & Relational Database Management System

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on the raspberry pi.
linux operating system

### Prerequisites

What things you need to install the software and how to install them


Linux - mandatory
git
atom - download then ctrl shift P, type install package, search and install linter-pycodestyle
Get and follow instructions in [dotfiles](https://github.com/angelosuinan/dotfiles) - awesome dotfiles

Create a projects folder
```
cd ~/
mkdir projects
```
Get [docker](https://github.com/docker/docker-install) - Dependency Management
```
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
```
Get [docker-compose](https://docs.docker.com/compose/install/) - run multiple containers
```
pip install docker-compose
```

### Installing

A step by step series of examples that tell you have to get a development env running

On the home folder
```
cd ~/
cd setup-sys
make setup-main
make setup-build
```
Run the Containers
```
docker-compose -f docker-compose.yml up -d
```
Example logs and debugging
```
docker-compose -f docker-compose.yml logs --tail 10 -f <sytem_name>
```

End with an example of getting some data out of the system or using it for a little demo

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

## Authors

* **Jamlang, Teejay** - *Initial work* - [githhub](https://github.com/abrahamlanggam)
* **Pol Roman, Tristan** - *Initial work* - [github](https://github.com/aRTiPee)
* **Punzalan, Daniel James** - *Initial work* - [github](https://github.com/djmp09)
* **Suinan, Angelo** - *Initial work* - [github](https://github.com/angelosuinan)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.
