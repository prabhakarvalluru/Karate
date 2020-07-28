package KarateGId.KarateTest.Features;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

public class Writer {
	
	public static void writeData(String args) throws FileNotFoundException, UnsupportedEncodingException {
		PrintWriter writer= new PrintWriter("data.txt", "UTF-8");
		writer.println(args);
		writer.close();
	}

}
