# manuel

```
  __  __                        _
 |  \/  |                      | |
 | \  / | __ _ _ __  _   _  ___| |
 | |\/| |/ _` | '_ \| | | |/ _ \ |
 | |  | | (_| | | | | |_| |  __/ |
 |_|  |_|\__,_|_| |_|\__,_|\___|_|
```

A grunt-inspired task runner for bash

# Usage

Don't, frankly.

Ok, if you insist...

- Put the `manuel` script somewhere on your PATH
- Create a `manuelfile` in your project.
- Fill the `manuelfile` with 'tasks' (aka bash functions):
  ```
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
  ```
  $ manuel run_tests
  >> I am building in test mode
  >> Testing, all passed!
  ```

# License

MIT
