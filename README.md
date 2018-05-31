# finalProject

# Project Title and purpose

Project Title: NFL Injury Visualization (Still in the works)
Purpose: The idea of this project was to visualize the types of injuries and their frequencies in the NFL over a period of time (seeing how it changes over time). It was also meant to be interactive, so that a user would be able to navigate the project and see which portions of the data they wanted to.

### Difficulties or opportunities you encountered along the way.

One of the most difficult parts happened to be at the beginning, because finding the data to fit the idea was not as easy as expected. There wasn't a file with a list of injuries and number of times they happened that could be accessed for free it seemed, so I had to gather the data from other sources that had recieved it. Given more time, a larger amount of data could be used which would improve the usefulness of the project.

### Most interesting piece of your code and explanation for what it does.

if (mouseX>=600&&mouseY>=300&&mouseX<900&&mouseY<600&&mousePressed) {
    if (year1text.equals("")) {
      year1text+=menu.get(5).toString();
      year1="2017 (Concussions, ACL Tears, MCL Tears)";
      year1Concussions=(int)Concussions.get(5);
      year1ACL=(int)ACLTears.get(5);
      year1MCL=(int)MCLTears.get(5);
    } else {
      year2text+=menu.get(5).toString();
      year2="2017 (Concussions, ACL Tears, MCL Tears)";
      year2Concussions=(int)Concussions.get(5);
      year2ACL=(int)ACLTears.get(5);
      year2MCL=(int)MCLTears.get(5);
    }
    
   I used this to set the variables depending on where the mouse clicks. It also checks if one group of variables is already filled, and fills another set if so. 

## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* Max Hjelmstad


## Acknowledgments
* Was inspired to create this by another visualization of some dataset from the NFL, as well as an interest in what the situation regarding injuries is like (Whether it is increasing/decreasing from new technology)
