# PreviZen

**CircleCI** status:

[![CircleCI](https://circleci.com/gh/Zenika/previzen.svg?style=svg&circle-token=be66da2ab284d941cdd2b38ca812886a04219a06)](<https://circleci.com/gh/Zenika/previzen>)
___

A **business prevision tool** intended to manage the Zenika's consultants, agencies and customers ecosystem.

*Repository for Lille's trainees (Anthony Pillot @anthonypillot and Micke Niepceron @Monsieurmm)*.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

*What things you need to install the software and how to install them:*

```
docker
```
To use the `docker-compose.yml` file and deploy Postgres instance.
How to [download and install](https://www.docker.com/products/docker-desktop) Docker.

```
npm && node
```

We're working with Node.js LTS version and NPM built-in Node.js installation, find it [here](https://nodejs.org/fr/).

### Developper tools *(not usefull to run the application)*

```
@nestjs/cli
```

We're working with NestJS CLI, find guide [here](https://docs.nestjs.com/first-steps).

```
@vue/cli
```

We're working with Vue.js CLI, find guide [here](https://cli.vuejs.org/guide/).

## Install and run the application

1. Primary step, clone the application:

    `git clone https://github.com/Zenika/previzen.git`

2. Install and run all parts of the application:

    ```
    $ cd /path-to-previzen-project/

    $ docker-compose up

    $ cd api/
    $ npm install
    $ npm run start

    $ cd ../front/
    $ npm install
    $ npm run serve
    ```

## Running the tests

We're using CircleCI to automated Continuous Integration.

### Running API's tests

Using Jest in NestJS API:

```
$ cd api/
$ npm run test
```

### Break down into end to end tests

(WIP) Explain what these tests test and why.

### And coding style tests

(WIP) Explain what these tests test and why.

## Deployment

(WIP) Explain how deploy application.

## Built With

* [Vue.js](https://vuejs.org/) - The web framework used.
* [Vuetify](https://vuetifyjs.com/) - The Vue.js UI library used.
* [Node.js](https://nodejs.org/) - The back-end JavaScript runtime.
* [NestJS](https://nestjs.com/) - The back-end API framework.
* [NPM](https://www.npmjs.com/) - Dependencies manager for Node.js
* [PostgreSQL](https://www.postgresql.org/) - The open source relational database.
* [Docker](https://www.docker.com/) - The platform that uses OS-level virtualization
* [CircleCI](https://circleci.com/) - The CI system used

## Contributing

Please read [CONTRIBUTING.md]() for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository (WIP)](https://github.com/Zenika/previzen/releases). 

## Authors

* [**Rémi BRIOIS** as @rbriois](https://github.com/rbriois) - *Initial work* - Main contributor
* [**Anthony PILLOT** as @anthonypillot](https://github.com/anthonypillot) - *Initial work* - Main contributor
* [**Micke NIEPCERON** as @Monsieurmm]() - *Initial work* - Main contributor
* [**Logan HAUSPIE** as @lhauspie](https://github.com/lhauspie) - Main contributor

See also the list of [contributors](https://github.com/Zenika/previzen/contributors) who participated in this project.

## License

This project is licensed under the License - see the [LICENSE.md (WIP: not define)](LICENSE.md) file for details

## Acknowledgments

* (WIP).
