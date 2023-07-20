import ballerina/http;
import ballerina/io;


function getCollectionNames(string? databaseName) returns string|error{

    if databaseName is ""{
        return error("No database is found");
    }
    return "Hello";

}


public function main() returns error? {
    
    io:print("Ballerina running");
}

service / on new http:Listener(9090) {
    resource function get greeting(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}

function getElementbyID(string records) returns string|error{
    if records == ""{
        return error("record");
    }
    return "record";
}
