
# project.sh

Navigate and manage source code repositories from GitHub, following the convention

```
$ROOT/$ORG/$REPO
```

With $ROOT set to `~/dev/` for example, this command would clone this repo into `~/dev/juliangruber/project.sh` and change into it:

```bash
$ clone juliangruber project.sh
```

## Installation

```bash
source project.sh
export PROJ_ROOT=~/dev/
```

## Functions

### goto $ORG $REPO

Go to `$ROOT/$ORG/REPO`. If this directory does _not_ exist, the project will be cloned for you. This makes it the main function to use.

### clone $ORG $REPO

Clone the project from `https://github.com/$ORG/$REPO` into `$ROOT/$ORG/$REPO` and cd into the directory.

## Configuration

You only need to set `PROJ_ROOT` to your project root.

## Kudos

I picked this idea up when I was working at segment, but we never got around to publishing it.

## License

MIT
