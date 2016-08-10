# Installation #

This repo contains an applescript that redefines character strings for OSX Text To Speech feature. To install create an service, add the `Run AppleScript` action and paste the contents of `custom-text-to-speech.applescript` into the Automator action. Save the Automator Service as "Custom Text To Speech". Go to `System Preferences > Keyboard > Shortcuts > Services` and check `Custom Text To Speech` under the "text" category.

Now add `textToSpeechDictionary.txt` to your `/Users/<username>/Documents` folder and you should be good to go!

## Usage ##

Select text from any application and right click and press `Services > Custom Text To Speech`. The `textToSpeechDictionary.txt` is a dictionary with colon seperated values. When the script runs into any string on the left, it converts that string to the one on the right.
## Dictionary Examples ##
`mkdir:make directory`
This changes the `mkdir` into `make directory` for a more understandable listening experience.



 
