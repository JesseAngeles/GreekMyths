package greekmyths;

import java.awt.Dimension;
import java.awt.Font;
import java.awt.Toolkit;
import javax.swing.BorderFactory;
import javax.swing.DefaultListModel;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.JTextArea;
import javax.swing.border.EtchedBorder;
import javax.swing.event.ListSelectionEvent;

public class GUI extends JFrame {

    Controller controller;

    private String[] classes;
    private String[] properties;
    
    private JList classList;
    private JList propertyList;
    
    private JLabel image = new JLabel();

    private final DefaultListModel listModel1 = new DefaultListModel();
    private final DefaultListModel listModel2 = new DefaultListModel();
    private final JTextArea displayArea = new JTextArea();
    private final JTextArea descriptionArea = new JTextArea();

    private final Font titleFont = new Font("Times New Roman", Font.BOLD, 16);
    private final Font textFont = new Font("Times New Roman", Font.PLAIN, 15);

    public GUI() {
        super("Greek Myths");
        this.controller = new Controller();

        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        Dimension dimension = Toolkit.getDefaultToolkit().getScreenSize();
        int width = dimension.width;
        int height = dimension.height;
        setBounds((width - 865) / 2, (height - 600) / 2, 865, 610);
        initComponents();
    }

    private void initComponents() {
        JTabbedPane tabbedPane = new JTabbedPane();
        tabbedPane.setBounds(0, 0, 855, 580);

        tabbedPane.add("Search by class", classSearch());
        tabbedPane.add("Search by properties", propertySearch());

        this.add(tabbedPane);
    }

    private JPanel classSearch() {
        JPanel panel = new JPanel();
        classes = controller.consultClasses();
        for (int i = 0; i < classes.length; i++) {
            listModel1.addElement((classes[i]).trim());
        }
        classList = new JList(listModel1);
        
        // Init components
        JLabel label1 = new JLabel("Clases");
        JLabel label2 = new JLabel("Properties");
        JLabel label3 = new JLabel("Description");

        JScrollPane sp1 = new JScrollPane(classList);
        JScrollPane sp2 = new JScrollPane(displayArea);
        JScrollPane sp3 = new JScrollPane(descriptionArea);

        // Config
        displayArea.setEditable(false);
        descriptionArea.setEditable(false);
        descriptionArea.setLineWrap(true);
        descriptionArea.setWrapStyleWord(true);
        //image.setBorder(BorderFactory.createEtchedBorder(EtchedBorder.RAISED));
        
        panel.setLayout(null);

        // Font
        label1.setFont(titleFont);
        label2.setFont(titleFont);
        label3.setFont(titleFont);

        // Bounds
        label1.setBounds(10, 10, 300, 20);
        label2.setBounds(10, 245, 300, 20);
        label3.setBounds(10, 430, 300, 20);

        sp1.setBounds(10, 30, 300, 200);
        sp2.setBounds(10, 265, 300, 150);
        sp3.setBounds(10, 450, 820, 110);

        image.setBounds(330, 30, 500, 385);

        // Add
        panel.add(label1);
        panel.add(label2);
        panel.add(label3);
        panel.add(sp1);
        panel.add(sp2);
        panel.add(sp3);
        panel.add(this.image);

        // Function
        classList.addListSelectionListener((e) -> classController(e));
        classList.setSelectedIndex(0);
        return panel;
    }

    private JPanel propertySearch() {
        JPanel panel = new JPanel();

        return panel;
    }

    void classController(ListSelectionEvent e) {
        String selectedValue = (String) classList.getSelectedValue();
        String t = "";

        if (!selectedValue.trim().equals("top")) {
            String[] superclases = controller.consultSuperclasses(selectedValue);
            for (int i = 0; i < superclases.length; i++) {
                if (!superclases[i].trim().equals("top")) {
                    t += "es(" + superclases[i].trim() + ")\n";
                }
            }
        }

        String[] propiedades = controller.consultProperties(selectedValue);
        for (int i = 0; i < propiedades.length; i++) {
            t += propiedades[i].trim() + "\n";
        }

        displayArea.setText(t);

        String str = controller.consultDescription(selectedValue);
        str = str.substring(1, str.length() - 1);
        descriptionArea.setText(str);
        
        System.out.println(selectedValue);
        image.setIcon(new ImageIcon("resources/" + selectedValue + ".png"));
    }
}
