# Installation #

This repo contains an applescript that redefines character strings for OS X Text To Speech feature. To install, open Automator, create an service, add the `Run AppleScript` action and paste the contents of `custom-text-to-speech.applescript` into the Automator action. Save the Automator Service as "Custom Text To Speech". Go to `System Preferences > Keyboard > Shortcuts > Services` and check `Custom Text To Speech` under the `text` category.

Now add `textToSpeechDictionary.txt` to your `/Users/<username>/Documents` folder and you should be good to go!

## Usage ##

Select text from any application and right click and press `Services > Custom Text To Speech`. 

*(Note: If you only have three or less services on your machine simply right click and press `Custom Text To Speech`)*

The `textToSpeechDictionary.txt` is a dictionary with colon seperated values. When the script runs into any string on the left, it converts that string to the one on the right.

You can also use [Absolute OS X embedded speech commands link](https://developer.apple.com/library/mac/documentation/UserExperience/Conceptual/SpeechSynthesisProgrammingGuide/FineTuning/FineTuning.html#//apple_ref/doc/uid/TP40004365-CH5-SW11) in your redefinitions. 

## Dictionary Examples ##
`mkdir:make directory`

This changes the `mkdir` into `make directory` for a more understandable listening experience.

## Example Text ##
Try using Custom Text To Speech on these lines:
```
for(int i = 0; i < 10; i++ )
  std::cout << i << std::endl
```


 
