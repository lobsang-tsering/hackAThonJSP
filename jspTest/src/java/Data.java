import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Data {

    private static Connection connection;
    private static boolean initialized = false;

    public static void initialize() throws ClassNotFoundException, SQLException {
        if(initialized)
            return;
        Class.forName("java.sql.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/neet", "root", "password");
        initialized = true;
    }

    public static void close() {
        if(!initialized)
            return;
        connection.close();
        initialized = false;
    }

    public static boolean isUserExists(int aadharNo) throws SQLException {
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM users WHERE aadharNo = " + aadharNo + ";");

        boolean exists = resultSet.first();

        resultSet.close();
        statement.close();

        return exists;
    }

    public static boolean validateUser(int aadharNo, String name, String dob) throws SQLException {
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM users WHERE aadharNo = " + aadharNo + ";");

        if(!resultSet.first())
            return false;

        boolean valid = (resultSet.getString("name") == null ? name == null : resultSet.getString("name").equals(name)) && (resultSet.getString("dob") == null ? dob == null : resultSet.getString("dob").equals(dob));

        resultSet.close();
        statement.close();

        return valid;
    }

    public static void createUser(int aadharNo, String name, String dob, String mothersName, String fathersName) {
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM users WHERE aadharNo = " + aadharNo + ";");

        if (!resultSet.first())
            return;

        resultSet.close();
        statement.close();

        statement = connection.createStatement();
        resultSet = statement.executeUpdate("INSERT INTO users VALUES (" + aadharNo + ", '" + name + "', '" + dob + "', '" + mothersName + "', '" + fathersName + "';");

        resultSet.close();
        statement.close();
    }
}