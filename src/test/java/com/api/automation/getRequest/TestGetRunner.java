package com.api.automation.getRequest;


import com.intuit.karate.junit5.Karate;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class TestGetRunner {


    @Karate.Test
    public Karate runTest() {
        return Karate.run("getRequest").relativeTo(getClass());

    }


//reportDirLocation ---> L:\Sumanth_Workspace\karateframework\target\surefire-reports
//private void generateCucumberReport(String reportDirLocation) {
//    File reportDir = new File(reportDirLocation);
//    Collection<File> jsonCollection = FileUtils.listFiles(reportDir, new String[]{"json"}, true);
//
//    List<String> jsonFiles = new ArrayList<String>();
//    jsonCollection.forEach(file -> jsonFiles.add(file.getAbsolutePath()));
//
//    Configuration configuration = new Configuration(reportDir, "Karate Run");
//    ReportBuilder reportBuilder = new ReportBuilder(jsonFiles,configuration);
//    reportBuilder.generateReports();
//}
}