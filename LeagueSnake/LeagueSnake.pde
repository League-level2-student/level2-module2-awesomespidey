//*
// ***** SEGMENT CLASS *****
// This class will be used to represent each part of the moving snake.
//*
 
class Segment {

//Add x and y member variables. They will hold the corner location of each segment of the snake.
int x; 
int y;

// Add a constructor with parameters to initialize each variable.
 Segment (int x,int y){
 this.x = x;
 this.y = y;
 }


}


//*
// ***** GAME VARIABLES *****
// All the game variables that will be shared by the game methods are here
//*
Segment head;
 int foodX, foodY;
  int direction = UP;
  int foodEaten;


//*
// ***** SETUP METHODS *****
// These methods are called at the start of the game.
//*

void setup() {
size (500,500);
 head = new Segment(10,10);
 frameRate(10 );
   dropFood();
 }

void dropFood() {
  //Set the food in a new random location
    foodX = (int)random(500);
    foodY = (int)random(500);
}

//*
// ***** DRAW METHODS *****
// These methods are used to draw the snake and its food 
//*

void draw() {
  background (0,0,0);
  drawFood();
  move();
  drawSnake();
}

void drawFood() {
  //Draw the food
  fill (#FF0000);
  rect (foodX,foodY,10,10);
}

void drawSnake() {
  //Draw the head of the snake followed by its tail
  fill (#00F9FF);
  rect (head.x,head.y,10,10);
}


//*
// ***** TAIL MANAGEMENT METHODS *****
// These methods make sure the tail is the correct length.
//*

void drawTail() {
  //Draw each segment of the tail 

}

void manageTail() {
  //After drawing the tail, add a new segment at the "start" of the tail and remove the one at the "end" 
  //This produces the illusion of the snake tail moving.
  
}

void checkTailCollision() {
  //If the snake crosses its own tail, shrink the tail back to one segment
  
}


//*
// ***** CONTROL METHODS *****
// These methods are used to change what is happening to the snake
//*

void keyPressed() {
  if (key == CODED){
    if (keyCode == UP){
    fillVal = 255;
    else if (keyCode == DOWN){
    
  }
  
}

void move() {
  //Change the location of the Snake head based on the direction it is moving.
  
    
  switch(direction) {
  case UP:
    head.y--; 
    break;
  case DOWN:
    head.y++; 
    break;
  case LEFT:
   head.x--; 
    break;
  case RIGHT:
   head.x++; 
    break;
  }
  checkBoundaries();
}

void checkBoundaries() {
 if (head.x <= 0){
   head.x = width-10;
 }
 if (head.x >= width){
   head.x = 0;
 }
 if (head.y <= 0){
   head.y = height-10;
 }
 if (head.y >= height){
   head.y = 0;
 }
 
}



void eat() {
  //When the snake eats the food, its tail should grow and more food appear

}
