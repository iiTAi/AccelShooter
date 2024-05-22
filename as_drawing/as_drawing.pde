import processing.serial.*;
Serial myPort;

void setup() {
    size(600, 800);
    printArray(Serial.list());
    myPort = new Serial(this, Serial.list()[2], 115200);
    myPort.bufferUntil('\n');
    smooth();

    background(0);
}

void draw() {}

void serialEvent(Serial myPort) {
    String inString = myPort.readStringUntil('\n');
    if (inString != null) {
        inString = trim(inString);
        // println(inString);
    }
}