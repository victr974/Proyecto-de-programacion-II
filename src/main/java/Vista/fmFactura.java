/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Vista;
import Clases.Cliente;
import Clases.Factura;
import Controlador.ConexionClass;
import Controlador.Conexion_BD;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.awt.Color;
import java.awt.Font;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.WindowConstants;
import javax.swing.table.DefaultTableModel;


/**
 *
 * @author Victor Cortez
 */
public class fmFactura extends javax.swing.JFrame {

    
    static double subtotal, igv1, igv2, montoTotal1, montoTotal2;
    DefaultTableModel modelo = new DefaultTableModel();
    public static String nombreM = "";
       
    
    /**
     * Creates new form fmFactura
     */
    public fmFactura() {
        initComponents();
        setLocationRelativeTo(null);
        setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        
        setTitle("Factura");
        setLocationRelativeTo(null);
        try {
            mostrar();
        } catch (Exception e) {
            System.out.println(e);
        }
        txtSubTotall.setText(Double.toString(subTotal()));
        subtotal = Double.parseDouble(txtSubTotall.getText());
        igv1 = subtotal * 0.18;
        igv2 = redondearDecimales(igv1, 2);
        txtIGV.setText(Double.toString(igv2));
        montoTotal1 = subtotal + igv2;
        montoTotal2 = redondearDecimales(montoTotal1, 2);
        txtMontoTotal.setText(Double.toString(montoTotal2));
        System.out.println(tablaFactura.getRowCount());
        
        
    }
    public double redondearDecimales(double valorInicial, int numeroDecimales) {
        double parteEntera, resultado;
        resultado = valorInicial;
        parteEntera = Math.floor(resultado);
        resultado = (resultado - parteEntera) * Math.pow(10, numeroDecimales);
        resultado = Math.round(resultado);
        resultado = (resultado / Math.pow(10, numeroDecimales)) + parteEntera;
        return resultado;
    }
    
    

    @SuppressWarnings("unchecked")  
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        txtRuc = new javax.swing.JTextField();
        txtNombre = new javax.swing.JTextField();
        txtTelefono = new javax.swing.JTextField();
        txtCuidad = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        txtEmaill = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        txtFecha = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        tablaFactura = new javax.swing.JTable();
        cmb_nm = new javax.swing.JComboBox<>();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        txtMesero = new javax.swing.JTextField();
        generarFactura = new javax.swing.JButton();
        jLabel9 = new javax.swing.JLabel();
        txtSubTotall = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        txtIGV = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();
        txtMontoTotal = new javax.swing.JTextField();
        jLabel12 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setText("Nombre:");

        jLabel2.setText(" RUC:");

        jLabel3.setText("Ciudad:");

        jLabel4.setText("Telefono:");

        jLabel5.setText("Correo:");

        jLabel6.setText(" Fecha:");

        tablaFactura.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Cantidad", "Descripcion", "Precio Unitario", "Monto"
            }
        ));
        jScrollPane1.setViewportView(tablaFactura);

        cmb_nm.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15" }));
        cmb_nm.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cmb_nmActionPerformed(evt);
            }
        });

        jLabel7.setText("No. Mesa");

        jLabel8.setText("Mesero");

        generarFactura.setText("Generar Factura");
        generarFactura.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                generarFacturaMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                generarFacturaMouseExited(evt);
            }
        });
        generarFactura.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                generarFacturaActionPerformed(evt);
            }
        });

        jLabel9.setText("Sub total:");

        jLabel10.setText("IGV:");

        jLabel11.setText("Monto total:");

        jLabel12.setFont(new java.awt.Font("Calibri", 3, 24)); // NOI18N
        jLabel12.setText("Factura");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addComponent(jLabel9)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtSubTotall, javax.swing.GroupLayout.PREFERRED_SIZE, 76, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel10)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtIGV, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel11)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtMontoTotal)
                .addGap(18, 18, 18)
                .addComponent(generarFactura, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(25, 25, 25))
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(44, 44, 44)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addGroup(layout.createSequentialGroup()
                                            .addComponent(jLabel2)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                            .addComponent(txtRuc))
                                        .addGroup(layout.createSequentialGroup()
                                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                .addComponent(jLabel1)
                                                .addComponent(jLabel4))
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                                .addComponent(txtNombre)
                                                .addComponent(txtTelefono, javax.swing.GroupLayout.PREFERRED_SIZE, 174, javax.swing.GroupLayout.PREFERRED_SIZE))))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel3)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(txtCuidad, javax.swing.GroupLayout.PREFERRED_SIZE, 199, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel7)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(cmb_nm, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel8)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(txtMesero, javax.swing.GroupLayout.PREFERRED_SIZE, 147, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel5)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(txtEmaill, javax.swing.GroupLayout.PREFERRED_SIZE, 195, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(30, 30, 30)
                                        .addComponent(jLabel6)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(txtFecha, javax.swing.GroupLayout.PREFERRED_SIZE, 166, javax.swing.GroupLayout.PREFERRED_SIZE))))))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(262, 262, 262)
                        .addComponent(jLabel12)))
                .addContainerGap(41, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(26, 26, 26)
                .addComponent(jLabel12)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txtRuc, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txtNombre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel4)
                            .addComponent(txtTelefono, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3)
                            .addComponent(txtCuidad, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel5)
                            .addComponent(txtEmaill, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel6)
                            .addComponent(txtFecha, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addGap(30, 30, 30)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel7)
                    .addComponent(cmb_nm, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel8)
                    .addComponent(txtMesero, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 176, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(34, 34, 34)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(generarFactura, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel9)
                    .addComponent(txtSubTotall, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel10)
                    .addComponent(txtIGV, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel11)
                    .addComponent(txtMontoTotal, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    
    private void cmb_nmActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cmb_nmActionPerformed

        ConexionClass conn = new ConexionClass();
        if(cmb_nm.getSelectedIndex() == 1 || cmb_nm.getSelectedIndex() == 2 || cmb_nm.getSelectedIndex() == 3 ){
            txtMesero.setText(String.valueOf(conn.seleccionarNM(1)));
        }else if(cmb_nm.getSelectedIndex() == 4 || cmb_nm.getSelectedIndex() == 5 || cmb_nm.getSelectedIndex() == 6 ){
            txtMesero.setText(String.valueOf(conn.seleccionarNM(2)));
        }else if(cmb_nm.getSelectedIndex() == 7 || cmb_nm.getSelectedIndex() == 8 || cmb_nm.getSelectedIndex() == 9 ){
            txtMesero.setText(String.valueOf(conn.seleccionarNM(3)));
        }else if(cmb_nm.getSelectedIndex() == 10 || cmb_nm.getSelectedIndex() == 11 || cmb_nm.getSelectedIndex() == 12 ){
            txtMesero.setText(String.valueOf(conn.seleccionarNM(4)));
        }else if(cmb_nm.getSelectedIndex() == 13 || cmb_nm.getSelectedIndex() == 14 || cmb_nm.getSelectedIndex() == 15 ){
            txtMesero.setText(String.valueOf(conn.seleccionarNM(5)));
        }

    }//GEN-LAST:event_cmb_nmActionPerformed

    private void generarFacturaMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_generarFacturaMouseEntered
    }//GEN-LAST:event_generarFacturaMouseEntered

    private void generarFacturaMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_generarFacturaMouseExited
    }//GEN-LAST:event_generarFacturaMouseExited

    private void generarFacturaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_generarFacturaActionPerformed
        //variables para recuperar datos
        try {
            String fecha;
            String nombre, ruc, correo, ciudad, telefono;
            //Datos Obtenidos de las casillas del diseño de los txt
            // montoTotal =Double.parseDouble(txtPrecioTotal.getText());
            DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
            fecha = df.format(txtFecha.getText());
            nombre = txtNombre.getText();
            correo = txtEmaill.getText();
            ciudad = txtCuidad.getText();
            int validacion = 0;
            ruc = txtRuc.getText();
            telefono = txtTelefono.getText();
            if (nombre.equals("")) {
                txtNombre.setBackground(Color.red);
                validacion++;
            } else {
                txtNombre.setBackground(Color.white);
            }
            if (ruc.equals("")) {
                txtRuc.setBackground(Color.red);
                validacion++;
            } else {
                txtRuc.setBackground(Color.white);
            }
            if (telefono.equals("")) {
                txtTelefono.setBackground(Color.red);
                validacion++;
            } else {
                txtTelefono.setBackground(Color.white);
            }
            if (correo.equals("")) {
                txtEmaill.setBackground(Color.red);
                validacion++;
            } else {
                txtEmaill.setBackground(Color.white);
            }
            if (ciudad.equals("")) {
                txtCuidad.setBackground(Color.red);
                validacion++;
            } else {
                txtCuidad.setBackground(Color.white);
            }
            if (fecha.equals("")) {
                txtFecha.setBackground(Color.red);
                validacion++;
            } else {
                txtFecha.setBackground(Color.white);
            }
            if (validacion == 0) {
                txtNombre.setBackground(Color.green);
                txtRuc.setBackground(Color.green);
                txtTelefono.setBackground(Color.green);
                txtEmaill.setBackground(Color.green);
                txtCuidad.setBackground(Color.green);

                ConexionClass conn = new ConexionClass();
                int cmbNM;
                String nombreM = "";
                cmbNM = cmb_nm.getSelectedIndex() + 1;

                if (cmbNM == 1 || cmbNM == 2 || cmbNM == 3) {
                    int numeroMesero = 1;
                    nombreM = conn.seleccionarNM(numeroMesero);
                    txtMesero.setText(nombreM);

                    txtMesero.getText();
                } else if (cmbNM == 4 || cmbNM == 5 || cmbNM == 6) {
                    int numeroMesero = 2;
                    nombreM = conn.seleccionarNM(numeroMesero);
                    txtMesero.setText(nombreM);

                  txtMesero.getText();
                } else if (cmbNM == 7 || cmbNM == 8 || cmbNM == 9) {
                    int numeroMesero = 3;
                    nombreM = conn.seleccionarNM(numeroMesero);
                    txtMesero.setText(nombreM);
                    txtMesero.getText();
                } else if (cmbNM == 10 || cmbNM == 11 || cmbNM == 12) {
                    int numeroMesero = 4;
                    nombreM = conn.seleccionarNM(numeroMesero);
                    txtMesero.setText(nombreM);
                    txtMesero.getText();
                } else if (cmbNM == 13 || cmbNM == 14 || cmbNM == 15) {
                    int numeroMesero = 5;
                    nombreM = conn.seleccionarNM(numeroMesero);
                    txtMesero.setText(nombreM);
                    txtMesero.getText();
                }
                Cliente cliente = new Cliente();

                Factura factura = new Factura();
                //this cliente
                cliente.setNombre(nombre);
                cliente.setDni("00000000");
                cliente.setTelefono(telefono);
                cliente.setRuc(ruc);
                cliente.setCorreo(correo);
                cliente.setCiudad(ciudad);
                //this factura
                factura.setNombre(nombre);
                factura.setRuc(ruc);
                factura.setCiudad(ciudad);
                factura.setTelefono(telefono);
                factura.setCorreo(correo);
                factura.setFecha(fecha);
                factura.setAtendidoPor(nombreM);
                //this valores
                factura.setIgv(igv2);
                factura.setSubtotal(subtotal);
                factura.setMontoTotal(montoTotal2);

                if (conn.insertarFactura(factura) && conn.insertarCliente(cliente)) {
                    JOptionPane.showMessageDialog(null, "Factura Registrada corecctamente");

                } else {
                    JOptionPane.showMessageDialog(null, "Error Contacte con el Administrador");
                }

                //ESTO ES PARA MOSTAR PRUEBAS
                System.out.println(factura.getNombre()
                    + factura.getRuc()
                    + factura.getCiudad()
                    + factura.getTelefono()
                    + factura.getCorreo()
                    + factura.getFecha());

                int seleccion = JOptionPane.showOptionDialog(null, "DESEA DESCARGAR FACTURA?", "Imprimir Factura", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null, null, null);
                if (seleccion == 0) {
                    Document doc = new Document();
                    ResultSet rs = Conexion_BD.getTabla("select * from pedido;");

                    try {

                        String ruta = System.getProperty("user.home");
                        PdfWriter.getInstance(doc, new FileOutputStream(ruta + "/Desktop/Factura"+factura.getNombre()+".pdf"));
        
                        Paragraph parrafo = new Paragraph();
                        parrafo.setAlignment(Paragraph.ALIGN_LEFT);
                        parrafo.setFont(FontFactory.getFont("Tahoma", 18, Font.BOLD, BaseColor.DARK_GRAY));
                        parrafo.add("Nombre: " + factura.getNombre().concat("                " + "Ciudad: " + factura.getCiudad()) + "\n \n");
                        parrafo.add("Ruc: " + factura.getRuc().concat("                            " + "Correo: " + factura.getCorreo()) + " \n \n");
                        parrafo.add("Telefono: " + factura.getTelefono().concat("                      " + "Fecha: " + factura.getFecha()) + "\n \n");
                        doc.open();
                        doc.add(parrafo);

                        PdfPTable tabla = new PdfPTable(4);

                        String rotulosColumnas[] = {"Descripcion", "Cantidad", "Precio Unitario", "Total"};
                        tabla.setHorizontalAlignment(Element.ALIGN_CENTER);
                        tabla.setWidthPercentage(100);

                        PdfPCell CeldaFinal = new PdfPCell(new Paragraph());
                        CeldaFinal.setColspan(4);
                        for (int i = 0; i < rotulosColumnas.length; i++) {
                            CeldaFinal = new PdfPCell(new Paragraph(rotulosColumnas[i]));
                            CeldaFinal.setVerticalAlignment(Element.ALIGN_MIDDLE);
                            CeldaFinal.setHorizontalAlignment(Element.ALIGN_CENTER);
                            tabla.addCell(CeldaFinal);
                        }
                        while (rs.next()) {
                            CeldaFinal = new PdfPCell(new Paragraph(String.valueOf(rs.getString("descripcion"))));
                            tabla.addCell(CeldaFinal);
                            CeldaFinal = new PdfPCell(new Paragraph(String.valueOf(rs.getString("cantidad"))));
                            tabla.addCell(CeldaFinal);
                            CeldaFinal = new PdfPCell(new Paragraph(String.valueOf(rs.getString("precio"))));
                            tabla.addCell(CeldaFinal);
                            CeldaFinal = new PdfPCell(new Paragraph(String.valueOf(rs.getString("monto"))));
                            tabla.addCell(CeldaFinal);
                        }
                        Paragraph parrafo1 = new Paragraph();
                        parrafo1.setAlignment(Paragraph.ALIGN_RIGHT);
                        parrafo1.setFont(FontFactory.getFont("Tahoma", 14, Font.BOLD, BaseColor.DARK_GRAY));
                        parrafo1.add("SubTotal: " + factura.getSubtotal() + "\n \n");
                        parrafo1.add("IGV 18%: " + factura.getIgv() + " \n \n");
                        parrafo1.add("Total: " + factura.getMontoTotal() + "\n \n");

                        doc.add(tabla);
                        doc.add(parrafo1);
                        doc.close();
                        JOptionPane.showMessageDialog(null, "FACTURA DESCARGADA EN INICIO");
                        this.dispose();

                        //                mostrar();
                    } catch (DocumentException e) {
                        System.out.println("error" + e);
                    }
                } else {
                    this.dispose();
                }

            } else {
                JOptionPane.showMessageDialog(null, "COMPLETA LAS CASILLAS EN ROJO");
            }

            ConexionClass conn = new ConexionClass();
            conn.vaciarTabla();

        } catch (Exception e) {
            if (txtNombre.getText().equals("")) {
                txtNombre.setBackground(Color.red);
            } else {
                txtNombre.setBackground(Color.white);
            }
            if (txtRuc.getText().equals("")) {
                txtRuc.setBackground(Color.red);
            } else {
                txtRuc.setBackground(Color.white);
            }
            if (txtCuidad.getText().equals("")) {
                txtCuidad.setBackground(Color.red);
            } else {
                txtCuidad.setBackground(Color.white);
            }
            if (txtEmaill.getText().equals("")) {
                txtEmaill.setBackground(Color.red);
            } else {
                txtEmaill.setBackground(Color.white);
            }
            if (txtTelefono.getText().equals("")) {
                txtTelefono.setBackground(Color.red);
            } else {
                txtTelefono.setBackground(Color.white);
            }
            if (txtFecha.getText() == null) {
                txtFecha.setBackground(Color.red);
            } else {
                txtFecha.setBackground(Color.white);
            }
            if (txtMesero.getText().equals("")) {
                txtMesero.setBackground(Color.red);
            } else {
                txtMesero.setBackground(Color.white);
            }
            if (cmb_nm.getSelectedItem() == "----") {
                cmb_nm.setBackground(Color.red);
            } else {
                cmb_nm.setBackground(Color.white);
            }
            JOptionPane.showMessageDialog(rootPane, "Debe completa las casillas de rojo");
        }
    }//GEN-LAST:event_generarFacturaActionPerformed

     public void mostrar() {

        ResultSet rs = Conexion_BD.getTabla("select * from pedido;");
        try {
            while (rs.next()) {
                modelo.setColumnIdentifiers(new Object[]{"Descripcion", "Cantidad", "Precio", "Monto"});
                modelo.addRow(new Object[]{rs.getString("descripcion"), rs.getInt("cantidad"), rs.getDouble("precio"), rs.getDouble("monto")});
                tablaFactura.setModel(modelo);
            }
        } catch (SQLException ex) {
            Logger.getLogger(fmFactura.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public double subTotal() {
        int contar = tablaFactura.getRowCount();
        double subTotal = 0;
        for (int i = 0; i < contar; i++) {
            subTotal = subTotal + Double.parseDouble(tablaFactura.getValueAt(i, 3).toString());
        }
        return subTotal;
    }

    
    
    
    
    
    
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(fmFactura.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(fmFactura.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(fmFactura.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(fmFactura.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new fmFactura().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox<String> cmb_nm;
    private javax.swing.JButton generarFactura;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tablaFactura;
    private javax.swing.JTextField txtCuidad;
    private javax.swing.JTextField txtEmaill;
    private javax.swing.JTextField txtFecha;
    private javax.swing.JTextField txtIGV;
    private javax.swing.JTextField txtMesero;
    private javax.swing.JTextField txtMontoTotal;
    private javax.swing.JTextField txtNombre;
    private javax.swing.JTextField txtRuc;
    private javax.swing.JTextField txtSubTotall;
    private javax.swing.JTextField txtTelefono;
    // End of variables declaration//GEN-END:variables
}
