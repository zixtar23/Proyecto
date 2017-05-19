package modelo;

/**
 *
 * @author IAN
 */
public class usuario {
    private String usuario;
    private String contra;
    private String correo;

    public usuario(String usuario, String contra) {
        this.usuario = usuario;
        this.contra = contra;
       
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
    
}
