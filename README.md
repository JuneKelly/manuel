# manuel

![manuel logo](http://i.imgur.com/HuJ6VGb.png)


A grunt-inspired task runner for bash

# Usage

Don't, frankly.

Ok, if you insist...

- Put the `manuel` script somewhere on your PATH

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

# License

Released under the [MIT](http://opensource.org/licenses/MIT) license
