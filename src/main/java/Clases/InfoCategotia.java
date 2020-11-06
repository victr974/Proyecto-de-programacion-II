
package Clases;


public class InfoCategotia {
    private int idcat;
    private String descripcion;
    private int cantidad;
    private double precio;
    private double monto;
    private int numerocarta;
    private String idplatos;
    private String idbebidas;

    public InfoCategotia() {
    }

    public InfoCategotia(int idcat, String descripcion, int cantidad, double precio, double monto, int numerocarta, String idplatos, String idbebidas) {
        this.idcat = idcat;
        this.descripcion = descripcion;
        this.cantidad = cantidad;
        this.precio = precio;
        this.monto = monto;
        this.numerocarta = numerocarta;
        this.idplatos = idplatos;
        this.idbebidas = idbebidas;
    }
    public int getIdcat(){
        return idcat;
    }
    public void setIdcat(int idcar){
        this.idcat= idcat;
    }
    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }
    
    public int getNumerocarta() {
        return numerocarta;
    }

    public void setNumerocarta(int numerocarta) {
        this.numerocarta = numerocarta;
    }
    public String getIdplatos() {
        return idplatos;
    }

    public void setIdplatos(String idplatos) {
        this.idplatos = idplatos;
    }
    
    public String getIdbebidas() {
        return idbebidas;
    }

    public void setIdbebidas(String idbebidas) {
        this.idbebidas = idbebidas;
    }
}

