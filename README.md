# An Analysis Tool for Determining Bias #

## Overview ##

This is a simple system for analyzing text files for bias based on the use and frequency of key words which indicate bias. An exceptionally low or high score after the test is not a guarantee of the presence of bias in the article. Instead, this tool simply aims to make the user aware that they are reading a piece which could be bias in nature (and what the nature of that bias might be).

The bias score is computed by parsing the words in the article, iterating through them, and, if they are words which contain an innate bias, translating that bias to a value (using a dictionary) and adding it to a total 'bias score' which is printed at the end of the program.

This sytem has several limitations, as it is. The most obvious is the use of a non-comprehensive and necessarily subjective dictionary of 'bias' (read 'polarizing') words. Another major limitation is the ability of the system to only analyze the text on a word-by-word basis, and not by phrases. An author's phrasing is often a better indication of their intended tone and can therefore be much more useful when anazlyzing a text for bias. This functionality will be added in future versions of the tool. Finally, the nature of the "bias score" (real integer) means that this tool is only useful for analyzing text for a single polarized parameter. The idea for this tool was originally concieved for use in determining political bias present in political articles, however 

## Use ##

To use the tool, enter the command "./bias.rb FILENAME" at the command line, where FILENAME is a file containing the text you wish to be analyzed. Note that it may be neccesary to change the file persmissions to allow bias.rb to run as an executable. You can do this by typing "chmod +x bias.rb" at the command line. The tool comes packaged with a default dictionary, but has the capabilty to use proprietary dicitonaries. A proprietary dictionary should be supplied on the command line, after the name of the file to be analyzed. Thus, the command to analyze a file with dictionary DICTIONARY is "bias.rb FILENAME DICTIONARY"

## Dictionary Files ##

The tool allows the user to make use of a proprietary dictionary when analyzing text. To include a dictionary, simply provide the name of the dictionary as the second parameter when running the program ("bias.rb FILENAME DICTIONARY"). If a dictionary is not included, the program will read in the default dictionary, specified in preferences.rb. The tool includes a dictionary, compiled by the author.

### Format ###

The dictionary file must adhere to a specific format:

* Each entry must begin on a new line and must follow the format "PHRASE = VALUE"
* Comments may be added to the dictionary on a new line beginning with an octothorpe character ("#"). 
* An undefined bias value is interpreted as a 0 (A word is "undefined" if is has no assosciated bias value).


## Intended expansions ##

* Adding a more useful dictionary, based on research in the field, and potentially several dictionaries for measuring various values.
* Adding Robustness to account for user error or unexpected input.
* Expanding the tool to measure two parameters simultaneously. This may be implemented using imaginary numbers.
* Adding functionality for multiple input files.
* Adding more feedback for the user, like displayig which words contributed to the score and how much/in which direction they contributed.
* Adding functionlity for a data mining API (pocket?) to grab articles from online and analyze them on the fly.
* Possible expansion into a web service or browswer extension.