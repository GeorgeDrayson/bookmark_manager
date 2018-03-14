# bookmark_manager

## Getting Started ##

Ruby version:
```
2.5.0
```
Run:
```
bundle install
```
To setup the databases required, run:
```
rake setup
```

## User stories ##

```
As a user,
So that I can see my bookmarks,
I would like a list of links

As a user,
So that I know when a link was posted,
I would like the date to be shown

As a user,
So that I can make a bookmark,
I would like to add a link to a list

As a user,
So that my links can be identified as mine,
I would like to name

As a user,
So that I can remove links,
I would like to delete them

As a user,
So that I can edit the links I have already posted,
I would like to be able to update the url/tag/name

As a user,
So that I can give my thoughts on a link,
I would like to comment

As a user,
So that I can categorise my link,
I would like to tag it

As a user,
So that I can find a link related to a topic,
I would like to search by tag
```
```
As a user,
So that no one else can edit my links,
I would like to sign in
```
## Domain model ##
```
           (.all)
            --->   
controller         link
            <---
      (array of links)
```
