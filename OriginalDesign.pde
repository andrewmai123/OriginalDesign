float sunmove = 240;
int clouds = 120;
int cloud = 270;
float x = 255;

void setup()
{
  size(400,400);

}

void clouds(){

	noStroke();
	fill(255,255,255,200);
	ellipse(clouds, 80, 160, 50);
	ellipse(cloud, 160, 160, 50);	
}


void sun(){
	fill(255,157,27);
	ellipse(200, sunmove, 150, 150);

}


void draw(){
	background(50,126,x);
	x = x - 0.08;
	if (x<170) {
		x = 255;
	}

	sunmove = sunmove + 0.6;
	if (sunmove > 450) {
		sunmove = 0;
	}

	clouds = clouds + 2;
	if (clouds>450){
		clouds = -50; 
	}
	cloud = cloud + 2;
	if (cloud>400){
		cloud = -50; 
	}

	sun();
	clouds();
	

	fill(245,239,84);
	noStroke();
	rect(0, 300, 400, 150);

}







