# cmdg - A command line client to GMail

## Installation

```
brew tap cutzenfriend/homebrew-cmdg
brew install cmdg
```

## Documentation

For documentation and initial configuration refer to: https://github.com/ThomasHabets/cmdg

Copyright Thomas Habets thomas@habets.se 2015-2021

## Configuring
You need to configure `cmdg` in order to provide it with authentication
so it can talk to GMail on your behalf. To do this you'll need to generate
a ClientID and ClientSecret. You can do this with the following steps:

  1. Go to the [Google Developers Console](https://console.developers.google.com/apis).
  1. Select an existing project or create a new project
  1. Navigate to the "APIs & Services > OAuth consent screen" page.
  1. Fill out the OAuth consent screen.
  1. Make sure to add scopes for the various APIs you'll need
     1. Drive API - `.../auth/drive.appdata`
     1. Gmail API - `../auth/gmail.modify`
     1. People API - `.../auth/contacts.readonly`
  1. Click the button "Create Credentials" and select "OAuth client ID" from the dropdown.
  1. Set the "Application type" to "Desktop app" and make the name anything you'd like.
  1. This should give you a Client ID and Client Secret you can provide to `cmdg`.

```
$ cmdg -configure
[It will ask about ClientID and ClientSecret.
For now you have create one at https://console.developers.google.com]
Cut and paste this URL into your browser:
  https://long-url....
Returned code: <code shows up here, just FYI>
$
```
This creates `~/.cmdg/cmdg.conf`.

## Running
```
$ cmdg
```
For keyboard shortcuts press '?' or F1 in most screens.

To quit, press 'q'.
