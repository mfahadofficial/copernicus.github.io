
float r;

void setup(){
  size(650,650);
  r=width/3 - 16;
}

PVector getVector(int index, int total){
  float angle = map(index % total, 0, total, 0, TWO_PI);
  PVector v = PVector.fromAngle(angle + PI);
  v.mult(r);
  return v;
}

void draw(){
  background(255,0.5);
  int total = int(map(mouseX, 0, width, 0, 200));
  //float delta = TWO_PI / total;

  int factor = 20;
  translate(width/2, height/2);
  stroke(mouseX/4,148,68);
  //strokeWeight(2);
  //fill(mouseX,0,mouseY);
  noFill();
  ellipse(0,0,r*2,r*2);
  for(int i=0; i<total; i++){
    PVector v = getVector(i, total);
    //fill(mouseX,mouseY,255,50);
    //ellipse(v.x,v.y,v.x,v.x);
  }
  
  for (int i=0; i<total; i++){
    PVector a = getVector(i, total);
    PVector b = getVector(i * factor,total);
    ellipse(a.x, a.y,total, total);
  
}
}

void mouseOut(){
  document.getElementById('green-box2').style.display = 'none';
}
void mouseOver(){
  document.getElementById('green-box2').style.display = '';
}
