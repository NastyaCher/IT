int i = 0;
void setup() {
  Serial.begin(9600);

}

void loop() {
    float fi = (6.28/200)*i;
    Serial.print(10*sin(fi));
    Serial.print('*');
    delay(10);
    i = (i+1)%200;

}
