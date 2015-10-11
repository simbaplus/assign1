/* please implement your assign1 code in this file. */
PImage shipImage,treasureImage,enemyImage,hp;
PImage backgroundImage,backgroundImage2;

int x,y,randomBlood;
int randomPlaceX,randomPlaceY;
int backgroundPos=0;
void setup () {
  size(640,480);
  
  x = 0;
  y = 350;//x,y存放寶物位置
  
  treasureImage= loadImage("img/treasure.png");;
  shipImage = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  enemyImage=loadImage("img/enemy.png");
  
  backgroundImage = loadImage("img/bg1.png");
  backgroundImage2 = loadImage("img/bg2.png");
  
  //寶物隨機位置
  randomPlaceX=floor(random(width));
  randomPlaceY=floor(random(height));
  randomBlood=floor(random(200));
}

void draw() {
  image(backgroundImage2,0+(backgroundPos%width),0);
  image(backgroundImage,0+(backgroundPos%width)-width,0);
  
  rect(15,15,randomBlood,25);
  fill(255,30,0);
  image(hp,10,10);
  image(enemyImage,x%width,y);
  image(treasureImage,randomPlaceX,randomPlaceY);
  image(shipImage,width-65,height/2);

  
  backgroundPos++;
  x++;}
