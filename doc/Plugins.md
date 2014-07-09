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
`MANUEL_PLUGIN_DIR` shell variable to an absolute path to your plugin directory.


## Writing plugins

TODO

## Using plugins

TODO