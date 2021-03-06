# Ticktask
Ticktask is a simple cli for [ticktick](https://ticktick.com) to create tasks.

## Features
* Uses [official](https://developer.ticktick.com/docs#/openapi) open api (it
  sill under development, but creating tasks is already work)
* Parsing date (*today and *tomorrow)
* Parsing tags (starts with #)

## Installation
*(not yet provided. For now you can just copy ./ticktask file and run like bash
script).*

## Setup
You need obtain api key for ticktick, so go to
[https://developer.ticktick.com/manage](https://developer.ticktick.com/manage)
and create your "app". P.S. you will be asked for *ridirect_url* setting. Set
it to anything you want, for example `http://127.0.0.1`.

Next you need write your `cliend_id` and `client_secret` in config. Create
`~/.config/ticktask/config.sh` with following content:

    CLIENT_ID="your_client_id"
    CLIENT_SECRET="your_client_secret"

Then run `ticktask` and follow his instructions.

Congratulations! Your token saved in `~/.cache/ticktask/token`. Now you can
jump to usage section.

## Usage
Just run `ticktask` with your task title as argument. Example:

    ticktask my new task created with ticktask

You can use date rules `*today` and `*tomorrow` which will be applied to task
and removed from title text. The same for tags which starts with `#`.

Note: if for some reasons ticktask can't send request to ticktick, your task
text would be saved in `~/.cache/ticktask/error_tasks/` folder, so you would
never lose your ticktick tasks. P.S. in such situation ticktask exit with code
2, so you can use it in your scripts (for example send notify with
`notify-send`)

## Configuration
*(nothing more than what is indicated in setup section yet).*
