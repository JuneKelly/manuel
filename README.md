# manuel

![manuel logo](http://i.imgur.com/WYZI5K6.png)

A grunt-inspired task runner for bash.


# Prerequisites

Manuel depends on `bash` version 4.


# Installation

Simply clone this repository and put the `manuel` script on your path.
For example, clone into `~/opt` and then link the script into `~/bin` :
```bash
$ cd ~/opt
$ git clone git://github.com/ShaneKilkelly/manuel
$ ln -s $HOME/opt/manuel/manuel $HOME/bin/manuel
```


# Usage

- Create a `manuelfile` in your project. `manuel` provides a handy `init` task
  for this purpose
  ```bash
  $ manuel init
  >> Creating new manuelfile in /your/project/directory
  ```

- Fill the `manuelfile` with 'tasks' (aka bash functions):

  ```bash
  #! /usr/bin/env bash

  function build {
    echo ">> I am building in $1 mode"
  }

  function run_tests {
    build 'test'
    echo ">> Testing, all passed!"
  }
  ```

- Run your tasks like so:

  ```bash
  $ manuel run_tests
  >> I am building in test mode
  >> Testing, all passed!
  ```


# Plugins

Manuel supports loading of third-party plugins (again, really just bash functions).
See [Plugins](doc/Plugins.md) for more details.

Some really nice plugins are:
- [manuel-contrib-watch](https://github.com/ShaneKilkelly/manuel-contrib-watch)
- [manuel-contrib-concurrent]
(https://github.com/ShaneKilkelly/manuel-contrib-concurrent)


# Documentation

- [Built-in tasks](doc/Builtins.md)
- [Plugins](doc/Plugins.md)


# License

Released under the [MIT](http://opensource.org/licenses/MIT) license

