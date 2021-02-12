package com.api.automation.getRequest;

import com.intuit.karate.junit5.Karate;

public class TestVariableRunner {

    @Karate.Test

    public Karate runTest(){
        return Karate.run("variable").relativeTo(getClass());
    }
}
