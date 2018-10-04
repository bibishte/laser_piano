#define NOTE_1 2
#define sound 9
void setup() {
  pinMode(sound, OUTPUT);
  Serial.begin(9600);
  // put your setup code here, to run once:
  
}

void loop() {
  // put your main code here, to run repeatedly:
  if (analogRead(A0) < 800)
  {
     tone(sound, 523, 130);
     Serial.println( analogRead(A0));
     delay(80);
  }
}
