
# Image Carousel
This creates a carousel of Images with a title on the bottom.

  

## Fields

  

You can edit the following fields:

- buttonListKey - Button list key.
- buttonType **(required)** - This defines the type of button to build this need to be **"imageCarousel"** in order to build this button.
- buttonItems **(required)** - This list contains the individual buttons use the following fields to build it:
	- imageUrl **(required)**  - image url to be displayed
	- label - label to display 
	- navPath **(required)** - navigation path


  

## Json Format

  

    {
       "buttonListKey":"example_key",
       "buttonType":"imageCarousel",
       "buttonItems":[
          {
             "imageUrl":"imagePath",
             "label":"label_example",
             "navPath":"/pathToScreen"
          }
          // Add items here
       ]
    }

  

