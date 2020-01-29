# Custom Text To Speech #

Custom Text to Speech service allows you to create a dictionary to redefine how selected text will be read on macOS text to speech service.

## Installation ##

Double click on `Custom Text To Speech.workflow` then **Install** and Custom Text To Speech will be installed as a service.

Now add `textToSpeechDictionary.txt` to your `Documents` folder and you should be good to go!

To add a keyboard shortcut:

Open `System Preferences > Keyboard > Shortcuts > Services`, find Custom Text To Speech, then click on **none**.

## Usage ##

Select text from any application and right click and press `Services > Custom Text To Speech` or your keyboard shortcut. 

The `textToSpeechDictionary.txt` is a dictionary with colon seperated values. When the script runs into any string on the left, it converts that string to the one on the right.

You can also use [OS X embedded speech commands link](https://developer.apple.com/library/mac/documentation/UserExperience/Conceptual/SpeechSynthesisProgrammingGuide/FineTuning/FineTuning.html#//apple_ref/doc/uid/TP40004365-CH5-SW11) in your redefinitions. 

## Dictionary Examples ##
`mkdir:make directory`

This changes the `mkdir` into `make directory` for a more understandable listening experience.

## Example Text ##
Try using Custom Text To Speech on these lines:
```
for(int i = 0; i < 10; i++ )
  std::cout << i << std::endl
```

## Coming Soon ##
* Multiple dictionaries
  * Programming langugues support (c++, java)
* Colon escape character
