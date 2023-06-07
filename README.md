# Phase 3 Code Challenge: Articles - without AR

## Object Relations without AR : Article Code challenge
### Introduction
For this assignment, you will be working with a Magazine domain.

We have three models: Author, Article, and Magazine.

For our purposes, an Author has many Articles, a Magazine has many Articles, and Articles belong to both Author and Magazine.

Author - Magazine is a many to many relationship.

### Delverables
Create the following classes and their respective methods.

Setup your application so it runs from a configured run file. 

Create instances of the classes on the run file and try out the methods you just created.

Use the notation # for instance methods, and .(dot) for class methods.

Feel free to build out any helper methods if needed.
### Initializers, Readers, and Writers
#### Author
1. Author#initialize(name)
    - An author is initialized with a name, as a string.
    - A name cannot be changed after it is initialized.
2. Author#name
    - Returns the name of the author
#### Magazine
1. Magazine#initialize(name, category)
    - A magazine is initialized with a name as a string and a category as a string
    - The name and category of the magazine can be changed after being initialized.
2. Magazine#name
    - Returns the name of this magazine
3. Magazine#category
    - Returns the category of this magazine
4. Magazine.all
    - Returns an array of all Magazine instances
#### Article
1. Article#initialize(author, magazine, title)
    - An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
    - An article cannot change its author, magazine, or title after it has been initialized.
2. Article#title
    - Returns the title for that given article
3. Article.all
    - Returns an array of all Article instances

### Object Relationship Methods
#### Article
1. Article#author
    - Returns the author for that given article
2. Article#magazine
    - Returns the magazine for that given article
#### Author
1. Author#articles
    - Returns an array of Article instances the author has written
2. Author#magazines
    - Returns a unique array of Magazine instances for which the author has contributed to
#### Magazine
1. Magazine#contributors
    - Returns an array of Author instances who have written for this magazine
### Associations and Aggregate Methods
#### Author
1. Author#add_article(magazine, title)
    -Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
2. Author#topic_areas
    - Returns a unique array of strings with the categories of the magazines the author has contributed to
#### Magazine
1. Magazine.find_by_name(name)
    - Given a string of magazine's name, this method returns the first magazine object that matches
2. Magazine#article_titles
    - Returns an array strings of the titles of all articles written for that magazine
3. Magazine#contributing_authors
    - Returns an array of authors who have written more than 2 articles for the magazine


   ##### Author: Roy Kimathi.  