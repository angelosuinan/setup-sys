# System final project

System Analysis & Design, Object Oriented Programming & Relational Database Management System 
[web](http://bfar-niftc-tanay.herokuapp.com/)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

## STAGING FOR TEST CLOUD WEBSITE if the installion does not work

[web](http://bfar-niftc-tanay.herokuapp.com/)
[webadmin](http://bfar-niftc-tanay.herokuapp.com/admin)

### Prerequisites

What things you need to install the software and how to install them

* For windows users donwload and install cygwin for linux commands in windows cmd/bash
  [cygwin]https://www.cygwin.com/
  
* Get [docker](https://github.com/docker/docker-install) - Dependency Management
  or install the .exe files for docker in this foler
```
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
```

### Installing

A step by step series of examples that tell you have to get a development env running

* Open the folder using terminal/cmd/bash and type the following

```
make setup
make build
make up
make restart-web
```

### USEFUL Commands for Local development
* Run the Containers
```
make up
```
* Example logs, printing and debugging a system
```
make logs-web
```
* restart a system
```
make logs-web
```

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
