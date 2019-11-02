Particle[] test;
void setup()
{
	size(400, 400);
	test = new Particle[2000];
	for (int i = 0; i < test.length; i++)
		test[i] = new Particle();
	test[0] = new OddballParticle();
}

void draw()
{
	background(0);
	for (int i = 0; i < test.length; i++)
	{
		test[i].show();
		test[i].move();
	}
}

class Particle
{
	double myX, myY, myAngle, mySpeed;
	int myColor;
	Particle()
	{
		myX = myY = 200;
		myAngle = Math.random()*2*Math.PI;
		mySpeed = Math.random()*10;
		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	}
	void move()
	{
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;
	}
	void show()
	{
		fill(myColor);
		ellipse((float)myX, (float)myY, 3, 3);
	}
}

class OddballParticle extends Particle
{
	double myX, myY, mySpeed, myAngle;
	int myColor;
	OddballParticle()
	{
		myX = myY = 200;
		myAngle = Math.random()*2*Math.PI;
		mySpeed = Math.random()*10;
	}
	void move()
	{
	    if (myX > 100 || myX < 300)
	      myX = myX + (int)(Math.random()*15) - 7;
	    if (myY > 100 || myY < 300)
	      myY = myY + (int)(Math.random()*15) - 7;
}
	void show()
	{
		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		fill(myColor);
		ellipse((float)myX, (float)myY, 10, 10);
	}
}
