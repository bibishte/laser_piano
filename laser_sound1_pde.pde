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
  myPort = new Serial(this, portName, 115200);
  
  
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
  
  fill(0);
  text("press a!",10,110);
      
      
  while (myPort.available() > 0) {
    val = myPort.readString(); 
  //val = myPort.readStringUntil('\n');         // read it and store it in val
  println(val);
  
  
  if(val=="a\n")
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
  if(val=="n\n")
  {
    fill(0);
    text("pls a!",100,120);
  }
  
  }
  
  
  
    
  
}