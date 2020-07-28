package KarateGId.KarateTest.Features;

public class testjavamethods {
	public static String staticmethod(String arg) {
System.out.println("Test Static Methods");
return "I am static " + arg;
}
	public void nonstaticmethods(String arg) {
		System.out.println("Non static methods " +arg);
	}
}
