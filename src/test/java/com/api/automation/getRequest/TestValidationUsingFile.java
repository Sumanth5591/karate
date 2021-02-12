package com.api.automation.getRequest;


import com.intuit.karate.junit5.Karate;

public class TestValidationUsingFile {


    @Karate.Test
    public Karate runTest() {
        return Karate.run("validationUsingFile").relativeTo(getClass());

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