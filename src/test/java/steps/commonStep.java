package steps;

import io.restassured.specification.RequestSpecification;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import static io.restassured.RestAssured.given;
public class commonStep {
    Properties properties = new Properties();
    public static RequestSpecification request;
    FileInputStream file;
    {
        try {
            file = new FileInputStream("src/test/resources/config.properties");
        }
        catch (FileNotFoundException e){
            e.printStackTrace();
        }
    }

    public RequestSpecification Request() throws IOException {
        properties.load(file);
        request = given().log().all().baseUri(properties.getProperty("baseUrl"));
        return request;
    }
}
