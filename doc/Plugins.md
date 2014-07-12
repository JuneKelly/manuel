# Plugins


## Installing plugins

By default, manuel creates a plugins directory in `~/.manuel.d/plugins`.
You can use the `load_plugin` function inside a manuelfile to load a plugin from
that directory by name. Example:

```bash
load_plugin timeutils  # contains the datestamp function

function what_time_is_it {
  now=$(datestamp)
  echo "It's $now"
}
```

The `load_plugin timeutils` line in the above example searches in the plugins
directory for a file called `timeutils.manuel` and loads it into the manuel
context if found.

A `.manuel.d/plugins` directory might look like this:

```

$HOME/.manuel.d
│
└── plugins
    │
    ├── one_plugin
    │   ├── .git
    │   ├── one_plugin.manuel
    │   └── README.md
    │
    ├── another_plugin
    │   ├── .git
    │   ├── another_plugin.manuel
    │   └── README.md
    │
    └── my_fav_plugin.manuel
```

If you would prefer to keep your plugins in another location, just set the
`MANUEL_DIR` shell variable to an absolute path to the place where you would like
to have manuel store it's plugins and other data. Example:
```
$ MANUEL_DIR=/some/path manuel run_tests
>> Initialising plugin directory in /some/path/plugins
...
```


## Writing plugins

A plugin should be written as a file containing bash functions. The file should
be named with the `.manuel` extension, so that the plugin loader can find it.
For example, we might want to write a plugin to provide handy time-related
functions, called `timeutil.manuel` :
```bash
#! /usr/bin/env bash

# timeutils.manuel

function datestamp {
  echo $(date +%Y%m%d-%H%M%S)
}
```

A good way of distributing manuel plugins would be to put the plugin file in a git
repository which the user can clone into their manuel plugins directory:

```bash
$ cd $HOME/.manuel.d/plugins
$ git clone git@github.com:<author>/<plugin>.git
```