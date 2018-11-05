import ballerina/test;
import ballerina/io;

@test:BeforeSuite
function beforeSuiteFunc () {
    io:println("Start the Service!");
    boolean status = test:startServices("continuous");
}

@test:Config
function testFunction () {
    io:println("Do your service Tests!");
    test:assertTrue(true , msg = "Failed!");
}

@test:AfterSuite
function afterSuiteFunc () {
    io:println("Stop the service!");
    test:stopServices("continuous");
}
