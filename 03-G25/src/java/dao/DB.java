
package dao;

/**
 *
 * @author Jared
 */
import java.sql.Connection;

public abstract class DB {

    protected String URL = "jdbc:derby://localhost:1527/";
    protected String db = "usersdb"; // Please Use This DB Name
    protected String dbuser = "isduser"; // Please Use This DB Username here
    protected String dbpass = "admin"; // Please Use This DB Password here
    protected String driver = "org.apache.derby.jdbc.ClientDriver";
    protected Connection conn;
}
