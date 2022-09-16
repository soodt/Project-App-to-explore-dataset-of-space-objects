class Widget {            //Anand Sainbileg created widget class and implemented all the methods and variables
int x, y, width, height; 
int textXPos;
int textYPos;
String label; 
int event;
color widgetColor, labelColor; 
PFont widgetFont;
int strokeCol = 0;
int fontSize;
boolean inside, bg;
PImage backgroundImg;
//Ignacy Sus 29/03 adding the fontSize to easily have different fonts
Widget(int x,int y, int width, int height, String label, color widgetColor, PFont widgetFont, int event, int fontSize, boolean bg, PImage backgroundImg){
this.x=x; this.y=y; this.width = width; this.height= height; this.label=label; this.event=event; this.widgetColor=widgetColor; this.widgetFont=widgetFont; labelColor= color(0);
this.fontSize = fontSize; this.bg=bg; this.backgroundImg = backgroundImg;
textXPos = x+10;
textYPos = y+height-10;
   }
 void draw(){

fill(widgetColor);
stroke(strokeCol);
rect(x,y,width,height,10);
fill(labelColor);
//textFont(widgetFont);
textSize(fontSize);
text(label, textXPos, textYPos);

mouseMoved(mouseX, mouseY);

if (bg){                                              //TANUJ SOOD, 4TH APRIL, ADDED METHOD TO PUT IMAGES AS BACKGROUND TO WIDGETS
 // backgroundImg.resize(width,height);
  image(backgroundImg, x + 4, y + 5);
  
}

}
int getEvent(int mX, int mY){        //Anand Sainbileg made changes on the Widget methods 3/30/2022
if(mX>x && mX < x+width && mY >y && mY <y+height){ 
  return event;
}
return EVENT_NULL; 
}

 void eventNumber(int eventNum){      // Anand Sainbileg fixed a bug which is buttons were still grey after mouse released 04/07/2022
 /*
  if(eventNum > 0){
    widgetColor = #717070;
    }
   
    else{
    widgetColor =255;
    }
    */
  }

void mouseMoved(int mX, int mY){
  if(mX>x && mX < x+width && mY >y && mY <y+height){
    strokeCol = 255;
    }
    else{
    strokeCol = 0;
    }
    
  }
  //Ignacy Sus 7/04 someone change a little bit the widget class, so I had to create the function to update the position of the text as i used the same searchBar object in different locations
  void updateLabelPos(){
  textXPos = x+10;
  textYPos = y+height-10;
}
}
ArrayList<Widget> setWidgetsWhite(ArrayList<Widget> widgets)//Gerard Moylan 6/4/22 used in the scatter plots screen.
{
  for (int i = 0; i < widgets.size(); i++)
  {
    widgets.get(i).widgetColor = color(255);
  }
  return widgets;
}
