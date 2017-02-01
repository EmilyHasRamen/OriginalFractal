int siz = 200;
int x = 400;
int y = 400;
public void setup() 
{
	size(800, 800);
}
public void draw()
{

	myFractal(x,y,siz);	

}
public void mousePressed() {
	siz += 10;
}
public void myFractal(float x, float y, float size)
{
	
	//fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	fill(33, 65, 178,50);
	ellipse(x, y, size, size);
	ellipse(x-size/2, y-size/2, size-size/2, size-size/2);
	ellipse(x+size/2, y-size/2, size-size/2, size-size/2);
	fill(63, 252, 145,50);
	ellipse(x-size/2, y+size/2, size-size/2, size-size/2);
	ellipse(x+size/2, y+size/2, size-size/2, size-size/2);

	if(size>10)
	{
		myFractal(x-size/2, y-size/2, size-size/2);
		myFractal(x+size/2, y-size/2, size-size/2);
		myFractal(x-size/2, y+size/2, size-size/2);
		myFractal(x+size/2, y+size/2, size-size/2);


	}

} 