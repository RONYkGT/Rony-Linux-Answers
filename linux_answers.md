# Linux Answers

1. **Question 1:**
   - ls -l: extended file info like permissions. ls -a: display all files like hidden ones.

2. **Question 2:**
   - When you don't have write permission. Use sudo or give perms.

3. **Question 3:**
   - cat file1 file2 > newfile

4. **Question 4:**
   - cat displays existing file content, touch creates file.

5. **Question 5:**
   - cp *.txt newdir // copies all files with .txt extension into newdir.

6. **Question 6:**
   - cd ..

7. **Question 7:**
   - Renames the file or overwrites the other file. use -i for warning prompts

8. **Question 8:**
   - Outputs current directory. Can be used to check if script is in correct dir.

9. **Question 9:**
   - whereis: locates all useful files for a command. whatis: simple description of command. which: locates the executable bin of the file. Use whereis to find all files related to command, whatis to know what it does simply, which to find the exec that runs it.

10. **Question 10:**
   - man: Displays the installed manual. info: Displays manual from the internet.

11. **Question 11:**
   - Searches for keywords from an output. ex: ls -a | grep .txt displays all files with .txt extension.

12. **Question 12:**
   - By default head displays first 10 lines, tail displays 10 last lines. use -n num to customize num of lines.

13. **Question 13:**
   - If file has grades of students in descending order, use tac to get the lowest grades. 

14. **Question 14:**
   - Use echo to display output of a script or create terminal loading bar.

15. **Question 15:**
   - Checks the partitions and the filesystem of the system. Used to check storage problems like full space in one of the partitions.

16. **Question 16:**
   - df checks the space usage of child directories up until the current one. du checks the filesystem and partitions of the storage hardware.

17. **Question 17:**
   - Just use top. Or use ps with -e to display in full, and -o with options pid,cmd,%cpu to display them with their name and usage.

18. **Question 18:**
   - Using alias you can customize commands or create shortcut commands for efficiency ex: cd to auto go home.

19. **Question 19:**
   - When connecting via ssh to remote servers, use uname to know the system you're working on.

20. **Question 20:**
   - sudo to execute one command as root, su to login as root and do many commands with root perms so you don't have to keep using sudo.
