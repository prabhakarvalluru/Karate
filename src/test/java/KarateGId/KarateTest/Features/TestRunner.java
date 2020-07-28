package KarateGId.KarateTest.Features;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import static org.junit.Assert.*;
import org.junit.Test;

@KarateOptions(tags = {"~@ignore"})
public class TestRunner {
	 @Test
	    public void testParallel() {
	      //  System.setProperty("karate.env", "demo"); // ensure reset if other tests (e.g. mock) had set env in CI
	      //  Results results = Runner.path("classpath:demo").tags("~@ignore").parallel(5);
		 
	      Results results = Runner.parallel(getClass(), 2,"target/surefire-reports");
	        generateReport(results.getReportDir());
	        System.out.printf("Directory --", results.getReportDir());

	        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);        
	    }
	    
	    public static void generateReport(String karateOutputPath) {        
	        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
	        List<String> jsonPaths = new ArrayList(jsonFiles.size());
	        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
	        Configuration config = new Configuration(new File("target"), "demo");
	        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
	        reportBuilder.generateReports();        
	    }
	
    }
