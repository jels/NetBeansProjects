
package Models;

/**
 *
 * @author Elias
 */
public class Usuarios {

    public String user;
    public String pass;
    public int idUser;

    public Usuarios() {
    }

    public Usuarios(String user, String pass, int idUser) {
        this.user = user;
        this.pass = pass;
        this.idUser = idUser;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

}
