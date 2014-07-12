# Plugins


## Installing plugins

By default, manuel creates a plugins directory in `~/.manuel.d/plugins`.
Any files in that directory ending in the extension `.manuel` will be loaded
automatically and be made available for use.

A `.manuel.d/plugins` directory might look like this:

```

$HOME/.manuel.d
│
└── plugins
    │
    ├── one_plugin
    │   ├── tasks.manuel
    │   └── README.md
    │
    ├── another_plugin
    │   ├── tasks.manuel
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

TODO

## Using plugins

TODO