#Exercise 1.1.1
#2.What’s the command to let us navigate the output of git help
git help | less

#3. inspecting the file ~/.gitconfig
cat .gitconfig

#Exercise 1.2.1
#2.Using the result of the previous exercise, run ls on the hidden directory and guess the name of the main Git configuration file. Use cat to dump its contents to the screen.
cd ~/git/repos/website/.git
cat config


#Exercise 1.3.1
#1.Using the touch command, create empty files called foo and bar in your repository directory.
touch foo bar

#2.By using git add foo, add foo to the staging area. Confirm with git status that it worked.
git add foo

#3.Using git commit -m and an appropriate message, add foo to the repository.
git commit -m "Add foo"

#4.By using git add bar, add bar to the staging area. Confirm with git status that it worked.
git add bar

#5.Now run git commit without the -m option. Use your Vim knowledge to add the message “Add bar”
git commit -m "Add bar"

#6.Using git log, confirm that the commits made in the previous exercises worked correctly.
git log


#Exercise 1.4.1
#1.Use touch to create an empty file called baz. What happens if you run git commit -am "Add baz"?
touch baz

#2.Add baz to the staging area using git add -A, then commit with the message "Add bazz".
git add -A
git commir -m "Add bazz"

#3.Realizing there’s a typo in your commit message, change bazz to baz using git commit --amend.
git  commit --amend

#4.Run git log to get the SHA of the last commit, then view the diff using git show <SHA> to verify that the message was amended properly.
git log
git show 3ebf4db92e0b5678c89c71b9f4d8c168c04f1135

#Exercise 1.5.1
#1.The git log command shows only the commit messages, which makes for a compact display but isn’t particularly detailed. Verify by running git log -p that the -p option shows the full diffs represented by each commit.
git log -p

#2.Under the h1 tag in Listing 1.6, use the p tag to add a paragraph consisting of the line “Call me Ishmael.” 
echo "<p>Call me Ishmael.</p>" >> index.html

#Exercise 1.6.1
#2.Commit the new title with a commit message of your choice. Verify using git log -p that the change was committed as expected.
git commit -am "Title Added"
git log -p


#Exercise 2.3.1
#1.add a line at the end of the README with a link to the official Git documentation.
echo "For more information on Git, see the" >> README.md
echo "[official Git documentation](https://git-scm.com/)." >> README.md

#2.Commit your change with an appropriate message (Box 1.4). You don’t have to run git add. Why not?
git commit -am "Modified README.md"

#3.Push your change to GitHub.
git push
