import processing.sound.*;
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

void setup() {
  size(640, 360);
  background(255);
  
  
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
      
  if (keyP == true)
  {
      keyPressed();
  }
  keyP=false;
  
  
  
  
}

void keyPressed() {
  
  if (key == 'a') {
    keyP=true;
    note_do.play();
    note_re.stop();
    note_mi.stop();
    note_fa.stop();
    note_sol.stop();
    note_la.stop();
    note_si.stop();
    keyispressed='a';
    count=1;
  }
  if (key == 's') {
    keyP=true;
    note_do.stop();
    note_re.play();
    note_mi.stop();
    note_fa.stop();
    note_sol.stop();
    note_la.stop();
    note_si.stop();
    keyispressed='s';
    count=2;
  }
  if (key == 'd') {
    keyP=true;
    note_do.stop();
    note_re.stop();
    note_mi.play();
    note_fa.stop();
    note_sol.stop();
    note_la.stop();
    note_si.stop();
    keyispressed='d';
    count=3;
  }
  if (key == 'f') {
     keyP=true;
     note_do.stop();
     note_re.stop();
     note_mi.stop();
     note_fa.play();
     note_sol.stop();
     note_la.stop();
     note_si.stop();
     keyispressed='f';
     count=4;
  }
  if (key == 'g') {
    keyP=true;
    note_do.stop();
    note_re.stop();
    note_mi.stop();
    note_fa.stop();
    note_sol.play();
    note_la.stop();
    note_si.stop();
    keyispressed='g';
    count=5;
  }
  if (key == 'h') {
    keyP=true;
    note_do.stop();
    note_re.stop();
    note_mi.stop();
    note_fa.stop();
    note_sol.stop();
    note_la.play();
    note_si.stop();
    keyispressed='h';
    count=6;
  }
  if (key == 'j') {
    keyP=true;
    note_do.stop();
    note_re.stop();
    note_mi.stop();
    note_fa.stop();
    note_sol.stop();
    note_la.stop();
    note_si.play();
    keyispressed='j';
    count=7;
  }
}
