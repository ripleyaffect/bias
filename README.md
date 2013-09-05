= An Analysis Tool for Determining Bias =

== Overview ==

This is a simple system for analyzing text files for bias based on the use and frequency of key words which indicate bias. An exceptionally low or high score after the test is not a guarantee of the presence of bias in the article. Instead, this tool simply aims to make the user aware that they are reading a piece which could be bias in nature (and what the nature of that bias might be).

The bias score is computed by parsing the words in the article, iterating through them, and, if they are words which contain an innate bias, translating that bias to a value (using a dictionary) and adding it to a total 'bias score' which is printed at the end of the program.

This sytem has several limitations, as it is. The most obvious is the use of a non-comprehensive and necessarily subjective dictionary of 'bias' (read 'polarizing') words. Another major limitation is the ability of the system to only analyze the text on a word-by-word basis, and not by phrases. An author's phrasing is often a better indication of their intended tone and can therefore be much more useful when anazlyzing a text for bias. This functionality will be added in future versions of the tool. Finally, the nature of the "bias score" (real integer) means that this tool is only useful for analyzing text for a single polarized parameter. The idea for this tool was originally concieved for use in determining political bias present in political articles, however 

== Use ==

To use the tool, enter "bias.rb <TEXTFILE>" at the command line, where <TEXTFILE> is a file containing the text you wish to be analyzed. The dictionary of words and their bias values are currently hard-coded into the program's source code (and curretnly only arbitrary words usable for testing). This will be changed in a future update to allow users to import their own dictionaries.

== Intended expansions ==

* Adding the functionality for including phrases in the dictionry instead of just single words.
* Adding a more useful dictinary, based on research in the field, and potentially several dictionaries for measureing various values.
* Adding the ability to use propriatory dictionaries and adjust bias values.
* Adding Robustness to account for user error or unexpected input.
* Expanding the tool to measure two parameters simultaneously. This may be implemented using imaginary numbers.
* Adding functionality for multiple input files.
* Adding functionlity for a data mining API (pocket?) to grab articles from online and analyze them on the fly.
* Possible expansion into a web service or browswer extension.
