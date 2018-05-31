import java.util.*;
private ArrayList menu;
private List Concussions;
private List ACLTears;
private List MCLTears;
private int numPressed;
private String year1text="";
private String year2text="";
private String year1="";
private String year2="";
private int year1Concussions=0;
private int year1ACL=0;
private int year1MCL=0;
private int year2Concussions=0;
private int year2ACL=0;
private int year2MCL=0;



void setup() {
  int[]cArray=new int[]{265, 244, 212, 279, 250, 261};
  int[]aclArray=new int[]{64, 63, 52, 59, 57, 57, };
  int[]mclArray=new int[]{133, 139, 145, 174, 144, 151};

  noStroke();
  textAlign(CENTER, CENTER);
  VisualNavigation test=new VisualNavigation("2012: 265 Concussions, 64 ACL Tears, 133 MCL Tears", 
    "2013: 244 Concussions, 63 ACL Tears, 139 MCL Tears", 
    "2014: 212 Concussions, 52 ACL Tears, 145 MCL Tears", 
    "2015: 279 Concussions, 59 ACL Tears, 174 MCL Tears", 
    "2016: 250 Concussions, 57 ACL Tears, 144 MCL Tears", 
    "2017: 261 Concussions, 57 ACL Tears, 151 MCL Tears", 
    cArray, aclArray, mclArray);

  test.fillMenu();
  menu=test.getMenu();
  Concussions=test.getNumConcussions();
  ACLTears=test.getNumACL();
  MCLTears=test.getNumMCL();
  size(900, 900);
  background(0);
  numPressed=0;
  text("Injuries in 2012", 150, 150);
  text("Injuries in 2013", 450, 150);
  text("Injuries in 2014", 750, 150);
  text("Injuries in 2015", 150, 450);
  text("Injuries in 2016", 450, 450);
  text("Injuries in 2017", 750, 450);
  text("Click two years to compare injury numbers", 450, 750);
}



void draw() {
  if (mouseX>=0&&mouseY>=0&&mouseX<300&&mouseY<300&&mousePressed) {
    fill(255);
    rect(0, 0, 300, 300);
  }
  if (mouseX>=300&&mouseY>=0&&mouseX<600&&mouseY<300&&mousePressed) {
    fill(255);
    rect(300, 0, 300, 300);
  }
  if (mouseX>=600&&mouseY>=0&&mouseX<900&&mouseY<300&&mousePressed) {
    fill(255);
    rect(600, 0, 300, 300);
  }
  if (mouseX>=0&&mouseY>=300&&mouseX<300&&mouseY<600&&mousePressed) {
    fill(255);
    rect(0, 300, 300, 300);
  }
  if (mouseX>=300&&mouseY>=300&&mouseX<600&&mouseY<600&&mousePressed) {
    fill(255);
    rect(300, 300, 300, 300);
  }
  if (mouseX>=600&&mouseY>=300&&mouseX<900&&mouseY<600&&mousePressed) {
    fill(255);
    rect(600, 300, 300, 300);
  }
  if (numPressed>=2) {
    createGraph();
  }
  //println(numPressed);
  //println(year1Concussions);
}
void mousePressed() {
  if (mouseButton == LEFT) { 
    numPressed++;
  } else { 
    numPressed = 0;
  }
  if (mouseX>=0&&mouseY>=0&&mouseX<300&&mouseY<300&&mouseButton==LEFT) {
    if (year1text.equals("")) {
      year1text+=menu.get(0).toString();
      year1="2012 (Concussions, ACL Tears, MCL Tears)";
      year1Concussions=(int)Concussions.get(0);
      year1ACL=(int)ACLTears.get(0);
      year1MCL=(int)MCLTears.get(0);
    } else {
      year2text+=menu.get(0).toString();
      year2="2012 (Concussions, ACL Tears, MCL Tears)";
      year2Concussions=(int)Concussions.get(0);
      year2ACL=(int)ACLTears.get(0);
      year2MCL=(int)MCLTears.get(0);
    }
  }
  if (mouseX>=300&&mouseY>=0&&mouseX<600&&mouseY<300&&mousePressed) {
    if (year1text.equals("")) {
      year1text+=menu.get(1).toString();
      year1="2013 (Concussions, ACL Tears, MCL Tears)";
      year1Concussions=(int)Concussions.get(1);
      year1ACL=(int)ACLTears.get(1);
      year1MCL=(int)MCLTears.get(1);
    } else {
      year2text+=menu.get(1).toString();
      year2="2013 (Concussions, ACL Tears, MCL Tears)";
      year2Concussions=(int)Concussions.get(1);
      year2ACL=(int)ACLTears.get(1);
      year2MCL=(int)MCLTears.get(1);
    }
  }
  if (mouseX>=600&&mouseY>=0&&mouseX<900&&mouseY<300&&mousePressed) {
    if (year1text.equals("")) {
      year1text+=menu.get(2).toString();
      year1="2014 (Concussions, ACL Tears, MCL Tears)";
      year1Concussions=(int)Concussions.get(2);
      year1ACL=(int)ACLTears.get(2);
      year1MCL=(int)MCLTears.get(2);
    } else {
      year2text+=menu.get(2).toString();
      year2="2014 (Concussions, ACL Tears, MCL Tears)";
      year2Concussions=(int)Concussions.get(2);
      year2ACL=(int)ACLTears.get(2);
      year2MCL=(int)MCLTears.get(2);
    }
  }
  if (mouseX>=0&&mouseY>=300&&mouseX<300&&mouseY<600&&mousePressed) {
    if (year1text.equals("")) {
      year1text+=menu.get(3).toString();
      year1="2015 (Concussions, ACL Tears, MCL Tears)";
      year1Concussions=(int)Concussions.get(3);
      year1ACL=(int)ACLTears.get(3);
      year1MCL=(int)MCLTears.get(3);
    } else {
      year2text+=menu.get(3).toString();
      year2="2015 (Concussions, ACL Tears, MCL Tears)";
      year2Concussions=(int)Concussions.get(3);
      year2ACL=(int)ACLTears.get(3);
      year2MCL=(int)MCLTears.get(3);
    }
  }
  if (mouseX>=300&&mouseY>=300&&mouseX<600&&mouseY<600&&mousePressed) {
    if (year1text.equals("")) {
      year1text+=menu.get(4).toString();
      year1="2016 (Concussions, ACL Tears, MCL Tears)";
      year1Concussions=(int)Concussions.get(4);
      year1ACL=(int)ACLTears.get(4);
      year1MCL=(int)MCLTears.get(4);
    } else {
      year2text+=menu.get(4).toString();
      year2="2016 (Concussions, ACL Tears, MCL Tears)";
      year2Concussions=(int)Concussions.get(4);
      year2ACL=(int)ACLTears.get(4);
      year2MCL=(int)MCLTears.get(4);
    }
  }
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
  }
}
public void createGraph() {
  fill(0);
  rect(0, 0, 900, 900);
  fill(255);
  rect(150, 150, 5, 600);
  rect(150, 750, 600, 5);
  text("Injury Type and Year", 450, 850);
  text("Number of Injuries", 80, 450);
  text("100", 135, 550);
  text("200", 135, 350);
  text("300", 135, 150);
  text(year1text, 450, 50);
  text(year2text, 450, 65);
  text(year1, 300, 775);
  text(year2, 600, 775);
  rect(175, 750-2*year1Concussions, 50, 2*year1Concussions);
  rect(275, 750-2*year1ACL, 50, 2*year1ACL);
  rect(375, 750-2*year1MCL, 50, 2*year1MCL);
  rect(475, 750-2*year2Concussions, 50, 2*year2Concussions);
  rect(575, 750-2*year2ACL, 50, 2*year2ACL);
  rect(675, 750-2*year2MCL, 50, 2*year2MCL);
}
