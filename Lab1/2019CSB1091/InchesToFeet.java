import java.util.Scanner;
class InchesToFeet
{
	public static void main (String[] args) throws java.lang.Exception
	{
        Scanner input = new Scanner(System.in);  
        System.out.println("Enter The Number ");
        int  inch = input.nextInt();  
        System.out.println(inch + " inches = " + inch/12 +" feet, "+ inch%12+ " inches" );  
	}
}
