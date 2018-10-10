#define NOTE_1 A0
#define NOTE_2 A1
#define NOTE_3 A2
#define NOTE_4 A3
#define NOTE_5 A4
#define sound 9
void setup() {
  pinMode(sound, OUTPUT);
  Serial.begin(9600);
  // put your setup code here, to run once:
  
}

void loop() {
  String cmd="asdfg";
  //Serial.println(analogRead(A1));
  
  if (analogRead(NOTE_1) < 900)
  {
     tone(sound, 523, 130);
     //Serial.println( analogRead(A0));
     Serial.print("A");
     
  }
  else{
     Serial.print("a");
  }
  
  if (analogRead(NOTE_2) < 900)
  {
      tone(8, 587, 130);
     //Serial.println( analogRead(A0));
     Serial.print("S");
  }
  else
  {
    Serial.print("s");
  }

  if (analogRead(NOTE_3) < 900)
  {
     tone(8, 659, 130);
     //Serial.println( analogRead(A0));
     Serial.print("D");
  }
  else
  {
    Serial.print("d");
  }

  if (analogRead(NOTE_4) < 900)
  {
     tone(8, 699, 130);
     //Serial.println( analogRead(A0));
     Serial.print("F");
  }
  else
  {

    Serial.print("f");
  }

  if (analogRead(NOTE_5) < 900)
  {
     tone(8, 784, 130);
     //Serial.println( analogRead(A0));
     Serial.println("G");
     delay(200);
  }
  else
  {
    Serial.println("g");
     delay(200);
  }
  
  //Serial.println("n\n");
  //delay(100);

  //Serial.println(cmd);
    
  
}
