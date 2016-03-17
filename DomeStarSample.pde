
LEDDisplay dome;

void setup() {
  size(40,160);
  // Sets up the dome
  dome = new LEDDisplay(this, 40, 160, true, "localhost", 58082);
}

void draw() {
  background(0);
  
  int y = frameCount % 10;
  
  for (int i=0; i<4; i++) {
    stroke(frameCount%255,255-frameCount%255,(frameCount+128)%255);
    line(y,0,y,160);
    y += 10;
  }
  
  // Load the pixels array and hand it off to the dome over UDP
  loadPixels();
  dome.sendData(pixels);
}