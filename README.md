# Must See Movies Golden Seven

In the application, users will need to Create, Read, Update, and Delete the following resources:

#### Director

 - name (string)
 - bio (text)
 - dob (string)
 - image_url (string)

#### Actor

 - name (string)
 - bio (text)
 - dob (string)
 - image_url (string)

#### Movie

 - title (string)
 - year (integer)
 - duration (integer)
 - description (text)
 - image_url (string)

## Setup

 - Create the three models and databases table using `rails generate model ...`. [Crud with Ruby cheatsheet](https://gist.github.com/rbetina/bb6336ead63080be2ff4)
 - Add a few rows to each table through Rails Console. Or, alternatively, you can run `rake db:seed` from the command line, which will pre-populate ten rows in each table (I wrote a script to save you some typing).


### READ

 - Build a way to see a list of all rows in the table, e.g., by visiting [http://localhost:3000/directors](http://localhost:3000/directors)
 - Build a way to see the details of an individual row, e.g., by visiting [http://localhost:3000/directors/4](http://localhost:3000/directors/4)

### DELETE

 - Build a way to delete an individual row, e.g., by visiting [http://localhost:3000/delete_director/4](http://localhost:3000/delete_director/4)
 - Add links to the index page and show pages to make it easier to visit these URLs.

### CREATE

 - Build a way to see a blank form to add a new row, e.g., by visiting [http://localhost:3000/directors/new_form](http://localhost:3000/directors/new_form)
 - Build the complementary action to receive inputs from that form and actually save them into a new row.

### UPDATE

 - Build a way to see a pre-populated form to edit an existing row, e.g., by visiting [http://localhost:3000/directors/4/edit_form](http://localhost:3000/directors/4/edit_form)
 - Build the complementary action to receive inputs from that form and actually update the existing row with them.

## Hints

Use the detailed instructions in the Photogram Golden Seven repository as a guide.


