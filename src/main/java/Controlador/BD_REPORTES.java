/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;


public class BD_REPORTES {
    Conexion_BD conectar = new Conexion_BD();
    Connection conn;
    String cadena = "";
    

    
      public DefaultTableModel mostrarFactura(String buscar){
        DefaultTableModel modelo;
        String [] titulos= {"N°","Fecha","Nombre", "Ciudad","Telefono", "SubTotal","MontoTotal"};
        String [] registros= new String[7];
        modelo = new DefaultTableModel(null,titulos);
        cadena = "CALL buscarFactura('%"+buscar+"%')"; 
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(cadena);
            while(rs.next()){
                registros[0] = rs.getString("idfactura");
                registros[1] = rs.getString("fecha");
                registros[2] = rs.getString("nombre");
                registros[3] = rs.getString("ciudad");
                registros[4] = rs.getString("telefono");
                registros[5] = rs.getString("subTotal");
                registros[6] = rs.getString("montoTotal");
                modelo.addRow(registros);
            }
            return modelo;
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
    }
    
     
}
