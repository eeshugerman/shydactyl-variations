# what is it
I wanted a few variations on the Shydactyl theme for [Tridactyl]
(https://github.com/tridactyl/tridactyl), specifically a dark and
light version, both with icons. Unfortunately, [`@import` doesn't
work because security](https://github.com/tridactyl/tridactyl/issues/3037),
so I arrived at this most unpleasant solution.

# variations
## light
- `shydactyl-favicons`
- `shydactyl-all-icons`
## dark
- `shydactyl-dark`
- `shydactyl-favicons-dark`
- `shydactyl-all-icons-dark`

# how to use it
The easiest way to use this is with `colors --url`, eg:
```
colors --url https://raw.githubusercontent.com/eeshugerman/shydactyl-variations/master/dist/shydactyl-favicons.css shydactyl-favicons
```

# see also
- https://github.com/tridactyl/tridactyl/issues/1449
