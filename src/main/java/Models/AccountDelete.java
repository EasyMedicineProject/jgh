package Models;

import Utils.dbConnector;

import java.sql.*;

public class AccountDelete {
    public void deleteAccount(String username) {
        Connection conn;
        ResultSet resultSet = null;
        String DBemail = "";
        String DBusername = "";

        try {
            conn = dbConnector.createConnection();
            String selectQuery = "SELECT *FROM users";

            PreparedStatement preparedStmt = conn.prepareStatement(selectQuery);
            resultSet= preparedStmt.executeQuery(selectQuery);
            while (resultSet.next()) {
                DBemail = resultSet.getString("email");
                DBusername = resultSet.getString("username");
                //TO DO Register check for duplicate users
                if(username.equals(DBemail) || username.equals(DBusername)) {
                    String query = "DELETE FROM users WHERE username=? OR email=?";

                    preparedStmt = conn.prepareStatement(query);
                    preparedStmt.setString(1, username);
                    preparedStmt.setString(2,username);
                    preparedStmt.executeUpdate();
                    System.out.println("Akaunta beshe iztrit");

                    resultSet.close();
                    preparedStmt.close();
                    conn.close();
                }


            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
