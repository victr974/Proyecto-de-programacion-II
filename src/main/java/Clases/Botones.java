
package Clases;


import java.awt.Cursor;
import java.awt.Desktop;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.net.URI;
import javax.swing.JLabel;

/**
 *
 * @author Frank
 */
public class Botones extends JLabel {

    private String link = "";
    private boolean dentro;

    public Botones() {
        addMouseListener(new MouseAdapter() {

            @Override
            public void mousePressed(MouseEvent me) {
                abrirLink();
            }

            @Override
            public void mouseEntered(MouseEvent me) {
                setCursor(new Cursor(Cursor.HAND_CURSOR));
                dentro = true;
                repaint();
            }

            @Override
            public void mouseExited(MouseEvent me) {
                setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
                dentro = false;
                repaint();
            }

        });
    }

    private void abrirLink() {
        try {
            Desktop.getDesktop().browse(new URI(link));
        } catch (Exception e) {
        }
    }

    @Override
    public void paint(Graphics g) {
        Graphics2D gd = (Graphics2D)g;
        
        if(dentro){
            gd.rotate(Math.toRadians(30), getWidth()/2, getHeight()/2);
        }
        
        super.paint(gd);
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
    
}
