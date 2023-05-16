# Ticktask

Ticktask is a simple cli for [ticktick](https://ticktick.com) to create tasks.

## Features

* Uses [official](https://developer.ticktick.com/docs#/openapi) open api (which
  is still under development, but creating tasks is already work)
* Support date (\*today and \*tomorrow)
* Support tags (starts with #)
* Support task body (see [config](#Config) section)

## Installation

### Manual

Just save the
[./ticktask](https://raw.githubusercontent.com/UnkwUsr/ticktask/master/ticktask)
file somewhere on your computer (for example, in `/usr/local/bin/`)

## Setup

You need to obtain api key for ticktick, so go to
[https://developer.ticktick.com/manage](https://developer.ticktick.com/manage)
and create your "app". P.S. you will be asked for *ridirect_url* setting. Set
it to anything you want, for example `http://127.0.0.1`.

Next, you need to write your `cliend_id` and `client_secret` in config. Create
`~/.config/ticktask/config.sh` file with the following content:

```sh
CLIENT_ID="your_client_id"
CLIENT_SECRET="your_client_secret"
```

Then run `ticktask` and follow its instructions.

Congratulations! Your token saved in `~/.local/share/ticktask/token`. Now you
can jump to usage section.

## Usage

Just run `ticktask` with your task title as argument. Example:

```sh
ticktask my new task created with ticktask
```

You can use date rules `*today` and `*tomorrow` which will be applied to task
and removed from title text. The same for tags which starts with `#`.

Note: if for some reasons ticktask can't send request to ticktick, your task
text will be saved in `~/.local/share/ticktask/error_tasks/` folder, so you
will never lose anything. P.S. in such situation ticktask exit with code 2, so
you can use it in your scripts (for example send notify with `notify-send`)

### Use with hotkey

[Personally](https://github.com/UnkwUsr/dotfiles/blob/d296e8629f9945efe67e699c0475d3202c53a8d5/config/i3/config#L241-L243),
I use ticktask with [dmenu](https://tools.suckless.org/dmenu/). Command I use
in hotkey:

```bash
echo -n | dmenu -p "ticktask:" | xargs -0 ticktask \
       && notify-send ticktask -t 1000 sent \
       || notify-send ticktask -u critical -t 2000 "not sent"
```

It opens dmenu prompt, then forwards result to tictask, and then sends notify
with status "sent" or "not sent".

## Config

Config file located at `~/.config/ticktask/config.sh`. This is simply bash
script, so it's very hackable and extensible.

For examples see [./config.example.sh](./config.example.sh)

### Task body

To be able to enter a task description, you can define function
`cmd_get_description()` which should output the description as a result. For
example, you can run any gui program with prompt, which will then print it to
stdout.

## Related projects

* [ticked](https://github.com/UnkwUsr/ticked) - allows you to edit your
  [ticktick.com](https://ticktick.com) tasks in your favorite editor (like
  vim/neovim).
