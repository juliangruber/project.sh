
<h1 align="center">project.sh</h1>

<h5 align="center">Tools to navigate and manage source code repositories living on GitHub.</h5>

<div align="center">
  <strong><pre>$ROOT/$ORG/$REPO</pre></strong>
</div>

<br />

## Example

To clone this repository, run:

```bash
$ goto juliangruber project.sh
```

With $ROOT set to `~/dev/`, this repository will have been cloned
to `~/dev/juliangruber/project.sh`.

For projects already cloned, tab completion can be used to navigate more swiftly:

```bash
$ goto ju<TAB>
$ goto juliangruber pro<TAB>
$ goto juliangruber project.sh
```

## Installation

```bash
source project.sh
export PROJ_ROOT=~/dev/
```

If you use `zsh(1)`, be sure to run this first:

```zsh
autoload compinit bashcompinit
compinit
bashcompinit
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
