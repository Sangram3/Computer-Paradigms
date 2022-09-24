public class Temperature {
public static void main(String[] args) {
double degFahrenheit;
double degCelsius;
degFahrenheit = 98.6;
degCelsius = (degFahrenheit - 32) / 1.8;
System.out.print(degFahrenheit);
System.out.print(" degrees Fahrenheit equals ");
System.out.print(degCelsius);
System.out.println(" degrees Celsius");
}
}