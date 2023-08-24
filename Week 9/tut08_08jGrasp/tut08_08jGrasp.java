import java.util.*;

public class tut08_08jGrasp
{
	public static void main(String[] args)
	{
		ArrayList<Square> squares = new ArrayList<Square>();
		squares.add(new Square(100, 100, 10));
		
		for (Square square : squares)
			square.display();
		
	}
}