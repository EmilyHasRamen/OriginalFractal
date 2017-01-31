public void setup() 
{
	size(800, 800);
}
public void draw()
{

	myFractal(400,400,400);	

}
public void myFractal(float x, float y, float size)
{
	//stroke(26, 68, 137);
	fill(33, 65, 178,50);
	ellipse(x, y, size, size);
	ellipse(x-size/2, y-size/2, size-size/2, size-size/2);
	ellipse(x+size/2, y-size/2, size-size/2, size-size/2);
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