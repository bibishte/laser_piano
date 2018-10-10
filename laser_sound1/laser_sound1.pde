 //<>//

import processing.sound.*;
import processing.serial.*;
SoundFile note_do;
SoundFile note_re;
SoundFile note_mi;
SoundFile note_fa;
SoundFile note_sol;
SoundFile note_la;
SoundFile note_si;


boolean keyP=true;
char keyispressed;
int count=0;

boolean[] arr=new boolean[7];


Serial myPort;  // Create object from Serial class
String val;     // Data received from the serial port


void setup() {
  size(640, 360);
  background(255);
  
   String portName = "/dev/ttyUSB0"; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
  
  
  note_do = new SoundFile(this, "do1.mp3");
  note_re = new SoundFile(this, "re1.mp3");
  note_mi = new SoundFile(this, "mi1.mp3");
  note_fa = new SoundFile(this, "fa1.mp3");
  note_sol = new SoundFile(this, "sol1.mp3");
  note_la = new SoundFile(this, "la1.mp3");
  note_si = new SoundFile(this, "si1.mp3");
  keyispressed='a';
  
  
  
}      

void draw() { 
  background(255);
  frameRate(500);
  
  fill(0);
  text("press a!",10,110);
      
  while ( myPort.available() > 0) 
  {
    
    val = myPort.readStringUntil('\n');
   
    
    
    /*if(val.equals("a\n"))
    {
      fill(0);
      text("press s!",10,120);
      note_do.play();
      note_re.stop();
      note_mi.stop();
      note_fa.stop();
      note_sol.stop();
      note_la.stop();
      note_si.stop();
      //delay(400);
    
    }
    
    if(val.equals("s\n"))
    {
      fill(0);
      text("press d!",10,120);
      note_do.stop();
      note_re.play();
      note_mi.stop();
      note_fa.stop();
      note_sol.stop();
      note_la.stop();
      note_si.stop();
      //delay(400);
    
    }
    
    if(val.equals("d\n"))
    {
      fill(0);
      text("press f!",10,120);
      note_do.stop();
      note_re.stop();
      note_mi.play();
      note_fa.stop();
      note_sol.stop();
      note_la.stop();
      note_si.stop();
      //delay(400);
    
    }
    
    if(val.equals("f\n"))
    {
      fill(0);
      text("press f!",10,120);
      note_do.stop();
      note_re.stop();
      note_mi.stop();
      note_fa.play();
      note_sol.stop();
      note_la.stop();
      note_si.stop();
      //delay(400);
    
    }
    
    if(val.equals("g\n"))
    {
      fill(0);
      text("press f!",10,120);
      note_do.stop();
      note_re.stop();
      note_mi.stop();
      note_fa.stop();
      note_sol.play();
      note_la.stop();
      note_si.stop();
      //delay(400);
    
    }
    
    
    if(val.equals("n\n"))
    {
      fill(0);
      text("pls a!",100,120);
      
    }*/
    
    
    
    if(val.charAt(0)=='A')
    {
      fill(0);
      text("press s!",10,120);
      note_do.play();
      note_re.stop();
      note_mi.stop();
      note_fa.stop();
      note_sol.stop();
      note_la.stop();
      note_si.stop();
    }
    
    
    if(val.charAt(1)=='S')
    {
      fill(0);
      text("press s!",10,120);
      note_do.stop();
      note_re.play();
      note_mi.stop();
      note_fa.stop();
      note_sol.stop();
      note_la.stop();
      note_si.stop();
    }
    
    
    if(val.charAt(2)=='D')
    {
      fill(0);
      text("press s!",10,120);
      note_do.stop();
      note_re.stop();
      note_mi.play();
      note_fa.stop();
      note_sol.stop();
      note_la.stop();
      note_si.stop();
    }
    
    
    if(val.charAt(3)=='F')
    {
      fill(0);
      text("press s!",10,120);
      note_do.stop();
      note_re.stop();
      note_mi.stop();
      note_fa.play();
      note_sol.stop();
      note_la.stop();
      note_si.stop();
    }
    
    
    if(val.charAt(4)=='G')
    {
      fill(0);
      text("press s!",10,120);
      note_do.stop();
      note_re.stop();
      note_mi.stop();
      note_fa.stop();
      note_sol.play();
      note_la.stop();
      note_si.stop();
    }
    
    if(val.charAt(0)=='A' || val.charAt(1)=='S' || val.charAt(2)=='D' ||val.charAt(3)=='F' || val.charAt(4)=='G')
    {
      if(val.charAt(0)=='A')
      {
           myPort.write('d');
      }
    }
    
  }
  
}
