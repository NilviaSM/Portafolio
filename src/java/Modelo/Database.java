package Modelo;

public class Database {

    private String url;
    private String user;
    private String pass;
    private String driver;

    public Database() {
        //BBDD Nilvia
        this.url = "jdbc:oracle:thin:@localhost:1521:XE";
        this.user = "HOSTALFINAL";
        this.pass = "HOSTALFINAL";
        this.driver = "oracle.jdbc.OracleDriver";
/*
        //BBDD Seba L
        this.url = "jdbc:oracle:thin:@localhost:1521:XE";
        this.user = "finalclarita";
        this.pass = "finalclarita";
        this.driver = "oracle.jdbc.driver.OracleDriver";
*/
/*
        //BBDD Seba S
        this.url = "jdbc:oracle:thin:@localhost:1521:XE";
        this.user = "HOSTALFINAL";
        this.pass = "HOSTALFINAL";
        this.driver = "oracle.jdbc.OracleDriver";
*/
    }

    public String getUrl() {
        return url;
    }

    public String getUser() {
        return user;
    }

    public String getPass() {
        return pass;
    }

    public String getDriver() {
        return driver;
    }
}
