
# Image Button
This creates up to three buttons with images and a title on the bottom.

  

## Fields

  

You can edit the following fields:

- buttonType **(required)** - This defines the type of button to build this need to be **"imageButton"** in order to build this button.
- buttonItems **(required)** - This list contains the individual buttons use the following fields to build it:
	- imageUrl **(required)**  - image url to be displayed
	- label - label to display 
	- navPath **(required)** - navigation path


  

## Json Format

  

    {
       "buttonType":"imageButton",
       "buttonItems":[
          {
             "imageUrl":"imagePath",
             "label":"label_example",
             "navPath":"/pathToScreen"
          }
          // Add items here
       ]
    }

  

