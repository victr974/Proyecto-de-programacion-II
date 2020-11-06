/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Clases.Administrador;
import java.sql.Connection;
import Clases.Bebidas;
import Clases.Boleta;
import Clases.Cliente;
import Clases.Factura;
import Clases.InfoCategotia;
import Clases.Mesero;
import Clases.Platos;
import Clases.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;


/**
 *
 * @author Victor Cortez
 */
public class ConexionClass {
    
    Conexion_BD conectar = new Conexion_BD();
    Connection conn;
    String cadena = "";
    PreparedStatement ps;
    ResultSet rs;
    
public boolean InsertUsuario(Usuario user) {
    
    cadena = "INSERT INTO usuario ( UserName,contraseña,tipoNivel,nombre,email, telefono)" + "VALUES(?,?,?,?,?)";
    
    try {
        conn = conectar.getConection();
        ps = conn.prepareStatement(cadena);
        ps.setString(1, user.getUsernameUsuario());
        ps.setString(2, user.getContraseñaUsuario());
        ps.setString(3, user.getTipoNivelUsuario());
        ps.setString(4, user.getNombre());
        ps.setString(5, user.getEmailUsuario());
        ps.setString(6, user.getTelefono());
        
        int n = ps.executeUpdate();
        if (n != 0) {
            return true;
        } else {
                return false;
                }
    }catch (SQLException e){
        JOptionPane.showMessageDialog(null, "CONTACTE CON EL ADMINISTRADOR" + e );
        return false;
    }
    }

    public boolean insertarCliente(Cliente cli) {
        cadena = "insert into clientes(nombre,dni,ruc,telefono,correo,ciudad)" + "values(?,?,?,?,?,?)";

        try {
            ps = conn.prepareStatement(cadena);
            ps.setString(1, cli.getNombre());
            ps.setString(2, cli.getDni());
            ps.setString(3, cli.getRuc());///aqui va el ruc 
            ps.setString(4, cli.getTelefono());
            ps.setString(5, cli.getCorreo());///aqui va el correo
            ps.setString(6, cli.getCiudad());///aqui va ciudad

            int n = ps.executeUpdate();//de esto depende si e completo completamente
            if (n != 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "CONTACTE CON EL ADMINISTRADOR" + e);
            return false;
        }
    }
    
    public boolean insertarMesero(Mesero mes) {
        cadena = "insert into Mesero(nombre,telefono,email,contraseña,userName,numeroMesero)" + "values(?,?,?,?,?,?)";

        try {
            ps = conn.prepareStatement(cadena);
            ps.setString(1, mes.getNombre());
            ps.setString(2, mes.getTelefono());
            ps.setString(3, mes.getEmailUsuario());
            ps.setString(4, mes.getContraseñaUsuario());
            ps.setString(5, mes.getUsernameUsuario());
            ps.setInt(6, mes.getNumeroDeMesero());
            int n = ps.executeUpdate();//de esto depende si e completo completamente
            if (n != 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "CONTACTE CON EL ADMINISTRADOR" + e);
            return false;
        }
    }    
    
     public boolean insertarAdministrador(Administrador adm) {
        cadena = "insert into Administrador(nombre,telefono,email,contraseña,username)"+ "values(?,?,?,?,?)";

        try {
             ps = conn.prepareStatement(cadena);
            ps.setString(1, adm.getNombre());
            ps.setString(2, adm.getTelefono());
            ps.setString(3, adm.getEmailUsuario());
            ps.setString(4, adm.getContraseñaUsuario());
            ps.setString(5, adm.getUsernameUsuario());

            int n = ps.executeUpdate();//de esto depende si e completo completamente
            if (n != 0) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "CONTACTE CON EL ADMINISTRADOR" + e);
            return false;
        }
    }
    
    
    
    public boolean insertarBoleta(Boleta bo) {
        cadena = "insert into Boleta(nombre,dni,telefono,atendidoPor,fecha,subTotal,igv,montoTotal)"+ "values(?,?,?,?,?,?,?,?)";

        try {
            ps = conn.prepareStatement(cadena);
            ps.setString(1, bo.getNombre());
            ps.setString(2, bo.getDni());
            ps.setString(3, bo.getTelefono());
            ps.setString(4, bo.getAtendidoP());
            ps.setString(5, bo.getFecha());
            ps.setDouble(6, bo.getSubtotal());
            ps.setDouble(7, bo.getIgv());
            ps.setDouble(8, bo.getMontoTotal());///aqui va el subtotal

            int n = ps.executeUpdate();//de esto depende si e completo completamente
            if (n != 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "CONTACTE CON EL ADMINISTRADOR" + e);
            return false;
        }
    }
    
     public boolean insertarFactura(Factura fac) {
        cadena = "insert into Factura(fecha,montoTotal,ciudad,ruc,correo,nombre,telefono,subTotal,atendidoPor)"+ "values(?,?,?,?,?,?,?,?,?)";
        try {
            ps = conn.prepareStatement(cadena);
            ps.setString(1, fac.getFecha());
            ps.setDouble(2, fac.getMontoTotal());
            ps.setString(3, fac.getCiudad());
            ps.setString(4, fac.getRuc());
            ps.setString(5, fac.getCorreo());
            ps.setString(6, fac.getNombre());
            ps.setString(7, fac.getTelefono());
            ps.setDouble(8, fac.getSubtotal());//aqui va el subtotal
            ps.setString(9, fac.getAtendidoPor());///aqui va el atendidoP
            int n = ps.executeUpdate();//de esto depende si e completo completamente
            if (n != 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "CONTACTE CON EL ADMINISTRADOR" + e);
            return false;
        }
    }
     
        public boolean insertarPlato(Platos plat) {
        cadena = "insert into restaurante.plato_pedido(nombrePlato, cantidadPlato, precioPlato, montoPlato)"+ "values(?,?,?,?)";

        try {
            conn = conectar.getConection();
             ps = conn.prepareStatement(cadena);
            ps.setString(1, plat.getDescripcion());
            ps.setInt(2, plat.getCantidad());
            ps.setDouble(3, plat.getPrecio());
            ps.setDouble(4, plat.getMonto());

            int n = ps.executeUpdate();//de esto depende si e completo completamente
            if (n != 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "CONTACTE CON EL ADMINISTRADOR" + e);
            return false;
        }
    }
        
     public boolean insertarBebida(Bebidas bebid) {
        cadena = "insert into bebida_pedido(nombreBebida, cantidadBebida, precioBebida, montoBebida)"+ "values(?,?,?,?)";

        try {
            ps = conn.prepareStatement(cadena);
            ps.setString(1, bebid.getDescripcion());
            ps.setInt(2, bebid.getCantidad());
            ps.setDouble(3, bebid.getPrecio());
            ps.setDouble(4, bebid.getMonto());

            int n = ps.executeUpdate();//de esto depende si e completo completamente
            if (n != 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "CONTACTE CON EL ADMINISTRADOR" + e);
            return false;
        }
    }
     
     public boolean insertarPedido(InfoCategotia info) {
        cadena = "insert into pedido(descripcion, cantidad, precio, monto, numeropedido)" + "values(?,?,?,?,?)";
        try {
            ps = conn.prepareStatement(cadena);
            ps.setString(1, info.getDescripcion());
            ps.setInt(2, info.getCantidad());
            ps.setDouble(3, info.getPrecio());
            ps.setDouble(4, info.getMonto());
            ps.setInt(5, info.getNumerocarta());

            int n = ps.executeUpdate();//de esto depende si e completo completamente
            if (n != 0) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "CONTACTE CON EL ADMINISTRADOR" + e);
            return false;
        }
    }
     
        
        
   public String seleccionarNM(int numeroM) {
        cadena = "select nombre from mesero where numeroMesero = '" + numeroM + "'";

        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery(cadena);
            if (rs.next()) {
                String nombre = rs.getString("nombre");
                return nombre;
            }
            return "Prueba";

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "CONTACTE CON EL ADMINISTRADOR" + e);
            return null;
        }

    }
   
    public String seleccionarPedidos() {
        cadena = "select nombre_del_Plato , nombre_deBebida from pedido ";

        int con = 1;
        try {
            Statement st = conn.createStatement();
             rs = st.executeQuery(cadena);
            if (rs.next()) {

                do {
                    String nombre = rs.getString(con);
                    con++;
                    return nombre;
                } while (rs.next());

            }
            return "Prueba";

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "CONTACTE CON EL ADMINISTRADOR" + e);
            return null;
        }

    }
    
    public boolean vaciarTabla() {
        cadena = "truncate table pedido ";
     
        try {
            ps = conn.prepareStatement(cadena);

            int n = ps.executeUpdate();//de esto depende si e completo completamente
            return n != 0;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "CONTACTE CON EL ADMINISTRADOR" + e);
            return false;
        }

    }
    
    public boolean eliminarBoleta(String buscar) {
        cadena =  "DELETE FROM boleta "+ "WHERE nombre=?";
        try {
            ps = conn.prepareStatement(cadena);
            ps.setString(1, buscar );
            int n = ps.executeUpdate();
            if (n != 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
            return false;
        }
    }
 
        public boolean eliminarFactura(String buscar) {
        cadena =  "DELETE FROM factura " + "WHERE nombre=?";
        try {
            ps = conn.prepareStatement(cadena);
            ps.setString(1, buscar );
            int n = ps.executeUpdate();
            if (n != 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
            return false;
        }
    
        }
        public boolean eliminarMesero(String buscar) {
        cadena =  "DELETE FROM mesero " + "WHERE nombre=?";
        try {
            ps = conn.prepareStatement(cadena);
            ps.setString(1, buscar );
            int n = ps.executeUpdate();
            if (n != 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
            return false;
        }
        
        }
        
        public boolean eliminarCliente(String buscar) {
        cadena =  "DELETE FROM clientes " + "WHERE nombre=?";
        try {
            ps = conn.prepareStatement(cadena);
            ps.setString(1, buscar );
            int n = ps.executeUpdate();
            if (n != 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
            return false;
        }
    }
        
        
        public boolean eliminarAdministrador(String buscar) {
        cadena =  "DELETE FROM administrador "+ "WHERE nombre=?";
        try {
            ps = conn.prepareStatement(cadena);
            ps.setString(1, buscar );
            int n = ps.executeUpdate();
            if (n != 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
            return false;
        }
    }
        
        
        
   }

        
        
        
        
        
    
        
    
    
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             

    
    
    
                
        
        
