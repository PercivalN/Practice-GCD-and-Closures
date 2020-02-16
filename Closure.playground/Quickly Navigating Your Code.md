# Quickly Navigating Your Code

### Quick Note:
What’s awesome about the tips & tricks this document talks about is that a lot of these quick shortcuts or hotkeys will apply to other applications. Most applications try to keep things unified so there is some familiarity for the user. Also, don’t fix what ain’t broken, I guess.

## Symbols:
- `⌘` (Command)
- `⌥` (Option)
- `⌃` (Control)
- `⇧` (Shift)
- `↑ ↓ ← →` (Arrows)
- `[]` (Left and Right Square Brackets)
*You can ignore the “+” symbol in terms of what keys to press as it’s only used to connect symbols/commands together*

### Getting Around
- Jump to top or bottom of file -  `(⌘ + ↑)`  or  `(⌘ + ↓)`
- Jump to beginning or end of line - `(⌘ + ←)` or `(⌘ + →)`
- Jump to beginning or end of each word - `(⌥ + ←)`  or `(⌥ + →)`
- Move up & down 1 line at a time - `(⌥ + ↑)` or `(⌥ + ↓)`

### Selection
- Select everything upwards of cursor position - `(⌘ + ⇧ + ↑)`
- Select everything below cursor position - `(⌘ + ⇧ + ↓)`
- Select line above - `(⇧ + ↑)`
- Select line below - `(⇧ + ↓)`
*Note that the line below or above will only be selected from where your cursor is on the current line. You can easily select the rest of the line by using the next bullet point*
- Select entire line …
	- If cursor is at the end of the line - `(⌘ + ⇧ + ←)`
	- If cursor is at the beginning of the line - `(⌘ + ⇧ + →)`
- Select entire line above or below, ignoring current cursor position …
	- Above - `(⌥ + ⇧ + ↑)`
	- Below `(⌥ + ⇧ + ↓)`
- Selection by word …
	- To the left - `(⌥ + ⇧ + ←)`
	- To the right - `(⌥ + ⇧ + →)`
- Selection by character …
	- To the left - `(⇧ + ←)`
	- To the right - `(⇧ + →)`

### Moving Your Code or Text
#### (Xcode)
1. First select the code/text you want to move
2. Move selected code/text up - `(⌘ + ⌥ + [)`
3. Move selected code/text down - `(⌘ + ⌥ + ])`
4. Move selected code/text indentation - `(⌘ + ←)` or `(⌘ + →)`

#### (VSCode)
1. First select the code/text you want to move
2. Move selected code/text up - `(⌥ + ↑)`
3. Move selected code/text up - `(⌥ + ↓)`

### Modifying Your Code/text Quickly
If you want to quickly add quotes `""`, square brackets `[]`, or parenthesis `()`, you can do this by selecting the code or text you wish to encapsulate using one of the above methods. Once your selection has been made, just select _ONE_ of the symbols.  

##### Example:
Let’s say I have this code:  
`let reuseIdentifier = UserCell`

As we all know, a `tableView`’s reuse identifier needs to be a string and you can see I forgot to add quotes.

All I have to do is select `UserCell` by putting my cursor at the end of `UserCell` and using `(⌥ + ⇧ + ←)` to select just that word, then press: `(⇧ + ")`. That’s it! Just one double quote is all you need as Xcode is smart enough to figure out the rest.  
  
If I want to do the rest…
- For `(UserCell)`  `⇧ + (`   \<- Only works with the left parenthesis
- For `[UserCell]`  `[`  \<- Only works with left bracket

##### The Basics (Cut, Copy, Paste):
- Cut: `⌘ + x`
- Copy: `⌘ + c`
- Paste: `⌘ + v`


### Writing On/Editing Multiple Lines At Once
If you want to edit multiple lines at once, you can do this pretty easily.  

- For lines that are consecutive:
	- Hold ⌥ + click and drag down or up (choose one direction). This can be a little finicky and you may (in Xcode) see a `"?"` but just keep selecting.
	- Remember, the selection has to be directly in line with each other. For example, the beginning of the line.
	- If by chance you end up selecting the first character of the selected lines, that’s okay. Just press the left arrow `← `. That will set all of the cursors to the beginning of those lines and you’re ready to edit.
- For non-consecutive lines:
	- Hold `(⌃  +  ⇧ )` while clicking anywhere you want to add a cursor.
	- Then just start editing.
- To exit multi-line editing, just hit `esc`
- **Fun Fact** - All the quick shortcuts listed in this article will work wile you’re editing multiple lines!


## Conclusion
You’ll have to get yourself into the habit of using these over time, but once you do, it will save you a lot of time because your workflow will be much, much faster. Happy coding!

** Quick Tip **
You can add this `.md` file to your Xcode project folder and have it open in your assistant editor for quick reference. 