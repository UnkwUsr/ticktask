# Ticktask
Ticktask is a simple cli for [tick-tick](ticktick.com) to create tasks.

## Features
* Uses [official](https://developer.ticktick.com/docs#/openapi) open api (it
  sill under development, but creating tasks is already work)
* Parsing date (*today and *tomorrow)

## Installation
*(not yet provided. For now you can just copy ./ticktask file and run like bash
script).*

## Setup
You need obtain api key for tick-tick, so go to
[https://developer.ticktick.com/manage](https://developer.ticktick.com/manage).
P.S. you will be asked for ridirect_url setting. Set it to anything you want,
for example `http://127.0.0.1`.

Next you need write your `cliend_id` and `client_secret` in config. Create
`~/.config/ticktask/config.sh` with following content:

```
CLIENT_ID="your_client_id"
CLIENT_SECRET="your_client_secret"
```

Then run `ticktask` and follow his instructions.

## Usage
Just run `ticktask` with your task title as argument. Example:

```
ticktask my new task created with ticktask
```

You can use date rules `*today` and `*tomorrow` which will be applied to task
and removed from title text.

## Configuration
*(nothing more than what is indicated in setup section yet).*