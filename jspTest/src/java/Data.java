import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Data {

    private static Connection connection;
    private static boolean initialized = false;

    public static void initialize() {
        if(initialized)
            return;
        Class.forName("java.sql.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/neet", "root", "password");
        initialized = true;
    }

    public static boolean isUserExists(int aadharNo) {
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM users WHERE aadharNo = " + aadharNo + ";");

        boolean exists = resultSet.first();

        resultSet.close();
        statement.close();

        return exists;
    }

    public static boolean validateUser(int aadharNo, String name, String dob) {
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM users WHERE aadharNo = " + aadharNo + ";");

        if(!resultSet.first())
            return false;

        boolean valid = resultSet.getString("name") == name && resultSet.getString("dob") == dob;

        resultSet.close();
        statement.close();

        return valid;
    }
}