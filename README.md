# Articles without AR

# Description

This is the project made for the sixth code challenge done in Ruby

It contains deliverables with classes that have the following properties and methods.

- Author

Author#initialize(name)
An author is initialized with a name, as a string.
A name cannot be changed after it is initialized.

Author#name
Returns the name of the author

Article#author
Returns the author for that given article

Article#magazine
Returns the magazine for that given article

Author#add_article(magazine, title)
Given a magazine (as a Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.

Author#topic_areas
Returns a unique array of strings with the categories of the magazines the author has contributed to

- Magazine

Magazine#initialize(name, category)
A magazine is initialized with a name as a string and a category as a string
The name and category of the magazine can be changed after being initialized.

Magazine#name
Returns the name of this magazine

Magazine#category
Returns the category of this magazine

Magazine. all
Returns an array of all Magazine instances

Magazine#contributors
Returns an array of Author instances who have written for this magazine

Magazine.find_by_name(name)
Given a string of magazine name, this method returns the first magazine object that matches

Magazine#article_titles
Returns an array string of the titles of all articles written for that magazine

Magazine#contributing_authors
Returns an array of authors who have written more than 2 articles for the magazine

- Article

Article#initialize(author, magazine, title)
An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
An article cannot change its author, magazine, or title after it has been initialized.

Article#title
Returns the title for that given article

Article. all
Returns an array of all Article instances

Article#author
Returns the author for that given article

Article#magazine
Returns the magazine for that given article

## Project Setup

In order for you to use the content on this repo ensure you have the following:

- A computer that runs on Linux
- Ruby installed
- Any text editor such as VSCode installed

## Instructions

- Open a terminal on your computer
- Clone the repo by using the following:

        git clone https://github.com/ianrich69420/phase-3-wk-2-moringa-ruby-app.git

- After the repository has been cloned succesfully change directory to the repository folder:

        cd phase-3-wk-2-moringa-ruby-app

- Open it in a text editor of your choice, however I personally prefer using VSCode so in order to open the folder in VSCode do the following:

        code .

You can use the following steps to run the app:

- Install required dependencies

        bundle install  

- Test out the deliverables!

## Author
This project was contributed to by:
- [Ian Richard Orieko](https://github.com/ianrich69420/)
