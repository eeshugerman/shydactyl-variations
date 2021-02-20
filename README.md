# what is it
I wanted a few variations on the Shydactyl theme for [Tridactyl]
(https://github.com/tridactyl/tridactyl), specifically a dark and
light version, both with icons. Unfortunately, [`@import` doesn't
work because security](https://github.com/tridactyl/tridactyl/issues/3037),
so I arrived at this most unpleasant solution.

# how to use it
```
colors --url https://raw.githubusercontent.com/eeshugerman/shydactyl-variations/master/dist/shydactyl-icons.css shydactyl-icons
"or...
colors --url https://raw.githubusercontent.com/eeshugerman/shydactyl-variations/master/dist/shydactyl-dark.css shydactyl-dark
"or...
colors --url https://raw.githubusercontent.com/eeshugerman/shydactyl-variations/master/dist/shydactyl-icons-dark.css shydactyl-icons-dark
```

# see also
- https://github.com/tridactyl/tridactyl/issues/1449
