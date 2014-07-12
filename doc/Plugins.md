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

TODO

## Using plugins

TODO