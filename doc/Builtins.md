# Built-in Tasks

## init

`$ manuel init`

Creates a new `manuelfile` in the current directory

Example:
```bash
$ cd ~/code/my_awesome_project
$ manuel init
>> Creating new manuelfile in /home/username/code/my_awesome_project
```

## manuel_watch

`manuel_watch [directory] [actions]`

Watches a specified directory, and when change is detected looks up the supplied
associative-array of actions to determine which actions to perform

Example:
```bash
# In a manuelfile

function do_something {
  declare -A actions=(
    ["\.js$"]="echo 'we should concat and minify the js again'"
    ["\.go$"]="go build ."
  )

  manuel_watch . actions
}

```