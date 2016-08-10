on run {input, parameters}
	killAllAutomatorProcesses()
	set SPACE_PADDING to " "
	set userName to short user name of (system info)
	set filePath to "/Users/" & userName & "/Documents/textToSpeechDictionary.txt"
	set dictionaryList to getDictionary(filePath)
	repeat with entry in dictionaryList
		set the input to replace_text(input as string, item 1 of entry, (SPACE_PADDING & item 2 of entry & SPACE_PADDING))
	end repeat
	
	say input
	
end run

on killAllAutomatorProcesses()
	tell application "System Events"
		set AutomatorProcessList to (name of every process whose name is "Automator Runner")
		set AutomatorListSize to count of AutomatorProcessList
		set SpeechSynProcessList to (name of every process whose name is "SpeechSynthesisServer")
		set SpeechSynListSize to count of SpeechSynProcessList
		if ("Automator Runner" is in AutomatorProcessList and (AutomatorListSize > 1 and SpeechSynListSize > 0)) then
			do shell script "killall \"Automator Runner\""
		end if
		return
	end tell
end killAllAutomatorProcesses

on getDictionary(filePath)
	set dictionary to {}
	set COLON_DELIMITER to ":"
	set WHITE_SPACES to {"", " ", "\t"}
	set dictionaryFile to paragraphs of (read POSIX file filePath)
	set AppleScript's text item delimiters to {COLON_DELIMITER}
	repeat with entry in dictionaryFile
		if contents of entry is not in WHITE_SPACES then
			set delimitedEntry to every text item of entry
			copy delimitedEntry to the end of dictionary
		end if
	end repeat
	return dictionary
end getDictionary

on replace_text(this_text, search_string, replacement_string)
	set AppleScript's text item delimiters to the search_string
	set the item_list to every text item of this_text
	set AppleScript's text item delimiters to the replacement_string
	set this_text to the item_list as string
	set AppleScript's text item delimiters to {""}
	return this_text
end replace_text