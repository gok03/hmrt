/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void forword(GImageButton source, GEvent event) { 
   if(statu==1)
 { 
 
   arduino.digitalWrite(lout1, Arduino.HIGH);
   arduino.digitalWrite(lout2, Arduino.LOW);
   arduino.analogWrite(lpwn, 255);
   arduino.digitalWrite(rout1, Arduino.HIGH);
   arduino.digitalWrite(rout2, Arduino.LOW);
   arduino.analogWrite(rpwn, 255); 
   
   println("moving front");
 }
 else
 println("power is off");
}

public void backward(GImageButton source, GEvent event) { 
  if(statu==1)
  { 
    
     arduino.digitalWrite(lout1, Arduino.LOW);
   arduino.digitalWrite(lout2, Arduino.HIGH);
   arduino.analogWrite(lpwn, 255);
    arduino.digitalWrite(rout1, Arduino.LOW);
   arduino.digitalWrite(rout2, Arduino.HIGH);
   arduino.analogWrite(rpwn, 255);
    
  
      println("moving back");
  }
  else
 println("power is off");
}

public void right(GImageButton source, GEvent event) {
  if(statu==1)
   { 
   arduino.digitalWrite(lout1, Arduino.LOW);
   arduino.digitalWrite(lout2, Arduino.HIGH);
   arduino.analogWrite(lpwn, 255);
   arduino.digitalWrite(rout1, Arduino.HIGH);
   arduino.digitalWrite(rout2, Arduino.LOW);
   arduino.analogWrite(rpwn, 255);
      println("moving right");
   }
   else
 println("power is off");
} 

public void left(GImageButton source, GEvent event) { 
   if(statu==1)
 { 
   arduino.digitalWrite(lout1, Arduino.HIGH);
   arduino.digitalWrite(lout2, Arduino.LOW);
   arduino.analogWrite(lpwn, 255);
   arduino.digitalWrite(rout1, Arduino.LOW);
   arduino.digitalWrite(rout2, Arduino.HIGH);
   arduino.analogWrite(rpwn, 255);
      println("moving left");
 }
 else
 println("power is off");
} 

public void power(GImageToggleButton source, GEvent event) { 
   if(statu==0)
  {
    statu=1;
    println("motor started");
  }
  else if(statu==1)
  {
    statu=0;
    println("motor power off");
  }
  
}


public void button1_click1(GButton source, GEvent event) { 
  if(statu==1)
 {
   println("stoped");
   arduino.digitalWrite(lout1, Arduino.HIGH);
   arduino.digitalWrite(lout2, Arduino.HIGH);
   arduino.analogWrite(lpwn, 0);
   arduino.digitalWrite(rout1, Arduino.HIGH);
   arduino.digitalWrite(rout2, Arduino.HIGH);
   arduino.analogWrite(rpwn, 0);
    }
 else
 println("power is off");
}



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("Sketch Window");
  imgButton1 = new GImageButton(this, 240, 4, 96, 81, new String[] { "up.png", "up.png", "up.png" } );
  imgButton1.addEventHandler(this, "forword");
  imgButton2 = new GImageButton(this, 240, 143, 94, 84, new String[] { "down.png", "down.png", "down.png" } );
  imgButton2.addEventHandler(this, "backward");
  imgButton3 = new GImageButton(this, 355, 81, 100, 60, new String[] { "right.png", "right.png", "right.png" } );
  imgButton3.addEventHandler(this, "right");
  imgButton4 = new GImageButton(this, 116, 80, 100, 60, new String[] { "left.jpg", "left.jpg", "left.jpg" } );
  imgButton4.addEventHandler(this, "left");
  imgTogButton2 = new GImageToggleButton(this, 25, 157, "trrt.png", 1, 2);
  imgTogButton2.addEventHandler(this, "power");
  button1 = new GButton(this, 244, 99, 80, 30);
  button1.setText("STOP");
  button1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button1.addEventHandler(this, "button1_click1");
}

// Variable declarations 
// autogenerated do not edit
GImageButton imgButton1; 
GImageButton imgButton2; 
GImageButton imgButton3; 
GImageButton imgButton4; 
GImageToggleButton imgTogButton2; 
GButton button1; 