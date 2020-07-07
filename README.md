# Fluent

> [Fluent][fluent] is a localization system designed to unleash the expressive power of the natural
  language.

This is a [Sublime Text 3][subl] package providing Fluent syntax highlighting as well as a couple
of completions.

![How it looks](https://raw.githubusercontent.com/SirNickolas/SublimeFluent/master/Screenshot.png)

You can also enable highlighting of Fluent [embedded][fluent-dedent] inside your JavaScript with
[JS Custom][js-custom]:

```json
{
    "configurations": {
        "My Config": {
            "custom_templates": {
                "tags": {
                    "ftl": "scope:source.fluent",
                },
            },
        },
    },
}
```


## Installation

This package is published on [Package Control][pc], so you can install it as you would install just
any other package for Sublime (<kbd>Ctrl/Cmd+Shift+P</kbd> → `pcins` → `Fluent`).


[fluent]: https://projectfluent.org
[subl]: https://www.sublimetext.com
[fluent-dedent]: https://github.com/projectfluent/fluent.js/tree/master/fluent-dedent#readme
[js-custom]: https://packagecontrol.io/packages/JSCustom
[pc]: https://packagecontrol.io
