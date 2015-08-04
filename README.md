# Rails2docker

Scripts to ease the rails development with Docker.

## Setup (New rails project)

1. Clone the repository:

    $ git clone git@github.com:domachine/rails2docker.git my-project
    $ cd my-project

2. Install the rails bundle:

    $ ./scripts/bundle install

3. Initialize the new application using the rails generator:

    $ ./scripts/rails new . -d postgresql # Answer yes if it asks to overwrite the Gemfile!

5. Make sure `therubyracer` is included in the Gemfile (normally you uncomment it).
6. Install the dependencies:

    $ ./scripts/bundle install

7. Boot the application:

    $ ./scripts/start_dev

## Setup (New rails project)

1. Merge the files into your project:

    $ git clone git@github.com:domachine/rails2docker.git
    $ mv rails2docker/{.bundle,scripts,Dockerfile.sh,docker-compose.yml.sh} .
    $ rmdir rails2docker

2. Install the dependencies locally:

    $ ./scripts/bundle install

4. Boot the application

    $ ./scripts/start_dev

## Future

Currently these steps feel a little bit clumsy.  I'm using this setup
successfully in various projects but I'm sure it can be done better.
I'll try automate more of these steps to make the bootstrapping
easier.

## Contributions

Contributions are always welcome.  Just send Pull-Requests or file
issues if you encounter bugs.
