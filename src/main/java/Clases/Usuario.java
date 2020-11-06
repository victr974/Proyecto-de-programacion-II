//Si se usa
package Clases;

/**
 *
 * @author Frank
 */
public class Usuario extends Persona{
    private String usernameUsuario;
    private String contraseñaUsuario;
    private String tipoNivelUsuario;
    private String emailUsuario;


    public Usuario() {
    }

    public String getUsernameUsuario() {
        return usernameUsuario;
    }

    public void setUsernameUsuario(String usernameUsuario) {
        this.usernameUsuario = usernameUsuario;
    }

    public String getContraseñaUsuario() {
        return contraseñaUsuario;
    }

    public void setContraseñaUsuario(String contraseñaUsuario) {
        this.contraseñaUsuario = contraseñaUsuario;
        
    }
    
     public String getTipoNivelUsuario() {
        return tipoNivelUsuario;
    }

    public void setTipoNivelUsuario(String tipoNivelUsuario) {
        this.tipoNivelUsuario = tipoNivelUsuario;
    }

    public String getEmailUsuario() {
        return emailUsuario;
    }

    public void setEmailUsuario(String emailUsuario) {
        this.emailUsuario = emailUsuario;
    }

    

    
    
    
    
}
