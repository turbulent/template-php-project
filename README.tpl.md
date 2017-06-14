# %hatch_title%

This is a PHP project intended to be developed using the Substance development
tool.

## How to setup

After copying the project files under your Substance work directory, switch to
the project (assuming the name of the directory is `%hatch_project%`):

```
$ substance switch %hatch_project%
```

Then, perform a first initialization by running the command:

```
$ substance make init
```

The `make init` step only needs to run once per Substance engine you install
this project into.

## Building the project

After setup is done, building the project is as simple as running:

```
$ substance make
```

## Testing the project

Once the setup is done and the project is built, you should be able to see
a Hello world page at
[http://%hatch_client%-%hatch_project%.local.dev](http://%hatch_client%-%hatch_project%.local.dev).

