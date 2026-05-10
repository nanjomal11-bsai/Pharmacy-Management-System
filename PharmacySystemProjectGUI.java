import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.JTableHeader;
import java.awt.*;
import java.awt.event.*;
import java.awt.geom.*;
import java.sql.*;

public class PharmacySystemProjectGUI {

    // ===================== COLORS & FONTS =====================
    static final Color BG_DARK = new Color(10, 14, 23);
    static final Color BG_CARD = new Color(18, 24, 38);
    static final Color BG_CARD2 = new Color(24, 32, 50);
    static final Color ACCENT_TEAL = new Color(0, 210, 190);
    static final Color ACCENT_BLUE = new Color(60, 140, 255);
    static final Color TEXT_WHITE = new Color(230, 235, 245);
    static final Color TEXT_MUTED = new Color(120, 135, 160);
    static final Color TABLE_ROW_ALT = new Color(22, 30, 46);
    static final Color TABLE_ROW = new Color(16, 22, 36);
    static final Color BORDER_COLOR = new Color(40, 55, 80);
    static final Color BTN_HOVER = new Color(0, 180, 165);

    static final Font FONT_TITLE = new Font("Courier New", Font.BOLD, 28);
    static final Font FONT_SUB = new Font("Courier New", Font.BOLD, 13);
    static final Font FONT_BODY = new Font("Courier New", Font.PLAIN, 12);
    static final Font FONT_MENU = new Font("Courier New", Font.BOLD, 15);
    static final Font FONT_LABEL = new Font("Courier New", Font.PLAIN, 12);

    // ===================== MAIN =====================
    public static void main(String[] args) {
        try { UIManager.setLookAndFeel(UIManager.getCrossPlatformLookAndFeelClassName()); }
        catch (Exception ignored) {}
        SwingUtilities.invokeLater(PharmacySystemProjectGUI::showMainMenu);
    }

    // ===================== MAIN MENU =====================
    static void showMainMenu() {
        JFrame frame = new JFrame("PharmaSys — Main Menu");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(700, 520);
        frame.setLocationRelativeTo(null);

        JPanel root = new JPanel(new BorderLayout()) {
            @Override protected void paintComponent(Graphics g) {
                super.paintComponent(g);
                Graphics2D g2 = (Graphics2D) g;
                g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
                g2.setColor(BG_DARK);
                g2.fillRect(0, 0, getWidth(), getHeight());
                g2.setColor(new Color(30, 42, 65, 80));
                for (int x = 0; x < getWidth(); x += 40) g2.drawLine(x, 0, x, getHeight());
                for (int y = 0; y < getHeight(); y += 40) g2.drawLine(0, y, getWidth(), y);
                RadialGradientPaint glow = new RadialGradientPaint(new Point2D.Float(100, 80), 200,
                        new float[]{0f, 1f}, new Color[]{new Color(0, 210, 190, 35), new Color(0,0,0,0)});
                g2.setPaint(glow); g2.fillRect(0, 0, getWidth(), getHeight());
            }
        };

        JPanel header = new JPanel(new BorderLayout()) {
            @Override protected void paintComponent(Graphics g) {
                super.paintComponent(g); Graphics2D g2 = (Graphics2D) g;
                g2.setColor(BG_CARD); g2.fillRect(0, 0, getWidth(), getHeight());
                g2.setColor(ACCENT_TEAL); g2.fillRect(0, getHeight()-2, getWidth(), 2);
            }
        };
        header.setOpaque(false); header.setPreferredSize(new Dimension(700, 90));
        header.setBorder(BorderFactory.createEmptyBorder(18, 36, 14, 36));
        JLabel logo = new JLabel("⬡ PHARMASYS"); logo.setFont(FONT_TITLE); logo.setForeground(ACCENT_TEAL);
        JLabel tagline = new JLabel("Pharmacy & Medical Stock Management"); tagline.setFont(FONT_BODY); tagline.setForeground(TEXT_MUTED);
        JPanel hText = new JPanel(); hText.setOpaque(false); hText.setLayout(new BoxLayout(hText, BoxLayout.Y_AXIS));
        hText.add(logo); hText.add(Box.createVerticalStrut(4)); hText.add(tagline);
        header.add(hText, BorderLayout.WEST);

        JPanel menuPanel = new JPanel(new GridLayout(2, 3, 18, 18));
        menuPanel.setOpaque(false); menuPanel.setBorder(BorderFactory.createEmptyBorder(30, 40, 30, 40));
        String[][] menuItems = {
                {"1", "Suppliers", "Manage supplier records", "⬡"},
                {"2", "Medicines", "Inventory & stock control", "⬢"},
                {"3", "Sales", "Process & track sales", "◈"},
                {"4", "Search", "Find medicines quickly", "◎"},
                {"5", "Reports", "Low stock & analytics", "◫"},
                {"6", "Exit", "Close the application", "⬡"},
        };
        for (String[] item : menuItems) menuPanel.add(buildMenuCard(item[0], item[1], item[2], item[3], frame));

        root.add(header, BorderLayout.NORTH); root.add(menuPanel, BorderLayout.CENTER);
        frame.setContentPane(root); frame.setVisible(true);
    }

    static JPanel buildMenuCard(String num, String label, String desc, String icon, JFrame parentFrame) {
        JPanel card = new JPanel(new BorderLayout()) {
            boolean hovered = false;
            {
                setOpaque(false); setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
                addMouseListener(new MouseAdapter() {
                    public void mouseEntered(MouseEvent e) { hovered = true; repaint(); }
                    public void mouseExited(MouseEvent e) { hovered = false; repaint(); }
                    public void mouseClicked(MouseEvent e) { handleMenuAction(num, parentFrame); }
                });
            }
            @Override protected void paintComponent(Graphics g) {
                super.paintComponent(g); Graphics2D g2 = (Graphics2D) g;
                g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
                Color bg = hovered? new Color(24, 36, 58) : BG_CARD2;
                g2.setColor(bg); g2.fillRoundRect(0, 0, getWidth(), getHeight(), 14, 14);
                Color border = hovered? ACCENT_TEAL : BORDER_COLOR;
                g2.setColor(border); g2.setStroke(new BasicStroke(hovered? 2f : 1f));
                g2.drawRoundRect(0, 0, getWidth()-1, getHeight()-1, 14, 14);
                if (hovered) { g2.setColor(new Color(0, 210, 190, 18)); g2.fillRoundRect(0, 0, getWidth(), getHeight(), 14, 14); }
            }
        };
        card.setBorder(BorderFactory.createEmptyBorder(16, 18, 14, 18));
        JLabel numLabel = new JLabel(icon + " " + num); numLabel.setFont(new Font("Courier New", Font.BOLD, 11)); numLabel.setForeground(ACCENT_TEAL);
        JLabel nameLabel = new JLabel(label); nameLabel.setFont(FONT_MENU); nameLabel.setForeground(TEXT_WHITE);
        JLabel descLabel = new JLabel(desc); descLabel.setFont(FONT_LABEL); descLabel.setForeground(TEXT_MUTED);
        JPanel textPanel = new JPanel(); textPanel.setOpaque(false); textPanel.setLayout(new BoxLayout(textPanel, BoxLayout.Y_AXIS));
        textPanel.add(numLabel); textPanel.add(Box.createVerticalStrut(6)); textPanel.add(nameLabel); textPanel.add(Box.createVerticalStrut(4)); textPanel.add(descLabel);
        card.add(textPanel, BorderLayout.CENTER); return card;
    }

    static void handleMenuAction(String num, JFrame parentFrame) {
        switch (num) {
            case "1": showSupplierMenu(parentFrame); break;
            case "2": showMedicineMenu(parentFrame); break;
            case "3": showSalesForm(parentFrame); break;
            case "4": searchMenu(parentFrame); break;
            case "5": showReportsMenu(parentFrame); break;
            case "6": System.exit(0); break;
        }
    }

    // ===================== SUPPLIER & MEDICINE MENUS (same as yours) =====================
    static void showSupplierMenu(JFrame parent) {
        JDialog dialog = styledDialog(parent, "Supplier Management", 380, 260);
        JPanel panel = darkPanel(new GridLayout(4, 1, 0, 14)); panel.setBorder(BorderFactory.createEmptyBorder(28, 36, 28, 36));
        JLabel title = new JLabel("— Supplier Menu —"); title.setFont(FONT_SUB); title.setForeground(ACCENT_TEAL); title.setHorizontalAlignment(SwingConstants.CENTER);
        JButton insert = actionBtn("1. Insert Supplier"); JButton view = actionBtn("2. View Suppliers");
        insert.addActionListener(e -> { dialog.dispose(); showInsertSupplierForm(parent); });
        view.addActionListener(e -> { dialog.dispose(); viewTable("Suppliers", new String[]{"ID","Name","City","Contact"}, fetchSuppliers(), parent); });
        panel.add(title); panel.add(insert); panel.add(view); panel.add(cancelBtn("← Back", dialog));
        dialog.setContentPane(panel); dialog.setVisible(true);
    }

    static void showMedicineMenu(JFrame parent) {
        JDialog dialog = styledDialog(parent, "Medicine Management", 380, 260);
        JPanel panel = darkPanel(new GridLayout(4, 1, 0, 14)); panel.setBorder(BorderFactory.createEmptyBorder(28, 36, 28, 36));
        JLabel title = new JLabel("— Medicine Menu —"); title.setFont(FONT_SUB); title.setForeground(ACCENT_TEAL); title.setHorizontalAlignment(SwingConstants.CENTER);
        JButton insert = actionBtn("1. Insert Medicine"); JButton view = actionBtn("2. View Medicines");
        insert.addActionListener(e -> { dialog.dispose(); showInsertMedicineForm(parent); });
        view.addActionListener(e -> { dialog.dispose(); viewTable("Medicines", new String[]{"ID","Name","Category","Price","Qty"}, fetchMedicines(), parent); });
        panel.add(title); panel.add(insert); panel.add(view); panel.add(cancelBtn("← Back", dialog));
        dialog.setContentPane(panel); dialog.setVisible(true);
    }

    static void showInsertSupplierForm(JFrame parent) { /* same as your code */
        JDialog dialog = styledDialog(parent, "Insert Supplier", 420, 360);
        JPanel panel = darkPanel(new GridBagLayout()); panel.setBorder(BorderFactory.createEmptyBorder(24, 36, 24, 36));
        GridBagConstraints gc = new GridBagConstraints(); gc.fill = GridBagConstraints.HORIZONTAL; gc.insets = new Insets(7, 4, 7, 4);
        JLabel title = new JLabel("⬡ New Supplier"); title.setFont(FONT_MENU); title.setForeground(ACCENT_TEAL); gc.gridx = 0; gc.gridy = 0; gc.gridwidth = 2; panel.add(title, gc);
        gc.gridwidth = 1; String[] labels = {"Supplier ID:", "Name:", "City:", "Contact:"}; JTextField[] fields = new JTextField[4];
        for (int i = 0; i < labels.length; i++) { gc.gridx = 0; gc.gridy = i + 1; gc.weightx = 0.3; panel.add(styledLabel(labels[i]), gc); fields[i] = styledField(); gc.gridx = 1; gc.weightx = 0.7; panel.add(fields[i], gc); }
        JButton save = actionBtn("✔ Save Supplier"); gc.gridx = 0; gc.gridy = 5; gc.gridwidth = 2; panel.add(save, gc); gc.gridy = 6; panel.add(cancelBtn("✕ Cancel", dialog), gc);
        save.addActionListener(e -> { String[] vals = new String[4]; boolean empty = false; for (int i = 0; i < 4; i++) { vals[i] = fields[i].getText().trim(); if (vals[i].isEmpty()) { empty = true; break; } } if (empty) { JOptionPane.showMessageDialog(dialog, "All fields are required.", "Validation", JOptionPane.WARNING_MESSAGE); return; } insertSupplier(vals[0], vals[1], vals[2], vals[3]); JOptionPane.showMessageDialog(dialog, "Supplier inserted successfully!", "Success", JOptionPane.INFORMATION_MESSAGE); dialog.dispose(); });
        dialog.setContentPane(panel); dialog.setVisible(true);
    }

    static void showInsertMedicineForm(JFrame parent) { /* same as your code */
        JDialog dialog = styledDialog(parent, "Insert Medicine", 420, 400);
        JPanel panel = darkPanel(new GridBagLayout()); panel.setBorder(BorderFactory.createEmptyBorder(24, 36, 24, 36));
        GridBagConstraints gc = new GridBagConstraints(); gc.fill = GridBagConstraints.HORIZONTAL; gc.insets = new Insets(7, 4, 7, 4);
        JLabel title = new JLabel("⬢ New Medicine"); title.setFont(FONT_MENU); title.setForeground(ACCENT_TEAL); gc.gridx = 0; gc.gridy = 0; gc.gridwidth = 2; panel.add(title, gc);
        gc.gridwidth = 1; String[] labels = {"Medicine ID:", "Name:", "Category:", "Price:", "Quantity:"}; JTextField[] fields = new JTextField[5];
        for (int i = 0; i < labels.length; i++) { gc.gridx = 0; gc.gridy = i + 1; gc.weightx = 0.3; panel.add(styledLabel(labels[i]), gc); fields[i] = styledField(); gc.gridx = 1; gc.weightx = 0.7; panel.add(fields[i], gc); }
        JButton save = actionBtn("✔ Save Medicine"); gc.gridx = 0; gc.gridy = 6; gc.gridwidth = 2; panel.add(save, gc); gc.gridy = 7; panel.add(cancelBtn("✕ Cancel", dialog), gc);
        save.addActionListener(e -> { String[] vals = new String[5]; boolean empty = false; for (int i = 0; i < 5; i++) { vals[i] = fields[i].getText().trim(); if (vals[i].isEmpty()) { empty = true; break; } } if (empty) { JOptionPane.showMessageDialog(dialog, "All fields are required.", "Validation", JOptionPane.WARNING_MESSAGE); return; } insertMedicine(vals[0], vals[1], vals[2], vals[3], vals[4]); JOptionPane.showMessageDialog(dialog, "Medicine inserted successfully!", "Success", JOptionPane.INFORMATION_MESSAGE); dialog.dispose(); });
        dialog.setContentPane(panel); dialog.setVisible(true);
    }

    static void searchMenu(JFrame parent) { /* same */
        JDialog dialog = styledDialog(parent, "Search Medicine", 420, 200);
        JPanel panel = darkPanel(new GridBagLayout()); panel.setBorder(BorderFactory.createEmptyBorder(24, 36, 24, 36));
        GridBagConstraints gc = new GridBagConstraints(); gc.fill = GridBagConstraints.HORIZONTAL; gc.insets = new Insets(8, 4, 8, 4);
        JLabel lbl = styledLabel("Medicine Name:"); JTextField field = styledField(); JButton btn = actionBtn("◎ Search");
        gc.gridx = 0; gc.gridy = 0; gc.weightx = 0.4; panel.add(lbl, gc); gc.gridx = 1; gc.weightx = 0.6; panel.add(field, gc);
        gc.gridx = 0; gc.gridy = 1; gc.gridwidth = 2; panel.add(btn, gc); gc.gridy = 2; panel.add(cancelBtn("✕ Cancel", dialog), gc);
        btn.addActionListener(e -> { String name = field.getText().trim(); if (name.isEmpty()) return; dialog.dispose(); viewTable("Search: " + name, new String[]{"Name","Price","Quantity"}, searchMedicineData(name), parent); });
        dialog.setContentPane(panel); dialog.setVisible(true);
    }

    // ===================== SALES - BILL GENERATE =====================
    static void showSalesForm(JFrame parent) {
        JDialog dialog = styledDialog(parent, "Process Sale - Generate Bill", 600, 620);
        JPanel root = darkPanel(new BorderLayout(10,10)); root.setBorder(BorderFactory.createEmptyBorder(20,24,20,24));
        JLabel title = new JLabel("◈ New Sale / Bill"); title.setFont(FONT_MENU); title.setForeground(ACCENT_TEAL); root.add(title, BorderLayout.NORTH);

        JPanel top = darkPanel(new GridBagLayout()); top.setOpaque(false);
        GridBagConstraints gc = new GridBagConstraints(); gc.insets=new Insets(6,4,6,4); gc.fill=GridBagConstraints.HORIZONTAL;
        String[][] meds = fetchMedicineForSale();
        JComboBox<String> medCombo = new JComboBox<>(); for(String[] m: meds){ if(m[0]==null) break; medCombo.addItem(m[0]+" - "+m[1]+" (Stock:"+m[3]+", Rs."+m[2]+")"); }
        medCombo.setBackground(BG_CARD2); medCombo.setForeground(TEXT_WHITE); medCombo.setFont(FONT_BODY);
        JTextField qtyField = styledField(); JTextField custField = styledField(); custField.setText("Walk-in");
        gc.gridx=0; gc.gridy=0; top.add(styledLabel("Medicine:"),gc); gc.gridx=1; gc.weightx=1; top.add(medCombo,gc);
        gc.gridx=0; gc.gridy=1; gc.weightx=0; top.add(styledLabel("Quantity:"),gc); gc.gridx=1; top.add(qtyField,gc);
        gc.gridx=0; gc.gridy=2; top.add(styledLabel("Customer:"),gc); gc.gridx=1; top.add(custField,gc);
        JButton addBtn = actionBtn("+ Add to Cart"); gc.gridx=0; gc.gridy=3; gc.gridwidth=2; top.add(addBtn,gc);

        String[] cols = {"ID","Name","Price","Qty","Total"};
        DefaultTableModel cartModel = new DefaultTableModel(cols,0);
        JTable cart = new JTable(cartModel); cart.setBackground(TABLE_ROW); cart.setForeground(TEXT_WHITE); cart.setRowHeight(26); cart.setFont(FONT_BODY);
        JScrollPane scroll = new JScrollPane(cart); scroll.setPreferredSize(new Dimension(500,220));

        JPanel bottom = darkPanel(new BorderLayout()); bottom.setOpaque(false);
        JLabel totalLbl = new JLabel("Total: Rs. 0.00"); totalLbl.setFont(FONT_SUB); totalLbl.setForeground(ACCENT_TEAL);
        JButton billBtn = actionBtn("✔ Generate Bill"); bottom.add(totalLbl, BorderLayout.WEST); bottom.add(billBtn, BorderLayout.EAST); bottom.setBorder(BorderFactory.createEmptyBorder(10,0,0,0));

        JPanel center = darkPanel(new BorderLayout(0,10)); center.setOpaque(false); center.add(top, BorderLayout.NORTH); center.add(scroll, BorderLayout.CENTER); center.add(bottom, BorderLayout.SOUTH);
        root.add(center, BorderLayout.CENTER);

        addBtn.addActionListener(e -> {
            int idx = medCombo.getSelectedIndex(); if(idx<0) return;
            String[] m = meds[idx]; int stock = Integer.parseInt(m[3]); int q; try{ q=Integer.parseInt(qtyField.getText().trim()); }catch(Exception ex){ return; }
            if(q<=0 || q>stock){ JOptionPane.showMessageDialog(dialog,"Stock kam hai! Available: "+stock); return; }
            double price = Double.parseDouble(m[2]); double tot = price*q;
            cartModel.addRow(new Object[]{m[0], m[1], price, q, tot});
            double sum=0; for(int i=0;i<cartModel.getRowCount();i++) sum+=Double.parseDouble(cartModel.getValueAt(i,4).toString());
            totalLbl.setText("Total: Rs. "+String.format("%.2f",sum)); qtyField.setText("");
        });

        billBtn.addActionListener(ev -> {
            if(cartModel.getRowCount()==0) return;
            String customer = custField.getText().trim();
            StringBuilder bill = new StringBuilder();
            bill.append("************ PHARMASYS BILL ************\n");
            bill.append("Date: ").append(new java.util.Date()).append("\n");
            bill.append("Customer: ").append(customer).append("\n");
            bill.append("----------------------------------------\n");
            bill.append(String.format("%-15s %4s %7s %8s\n","Item","Qty","Price","Total"));
            bill.append("----------------------------------------\n");
            double grand=0;
            for(int i=0;i<cartModel.getRowCount();i++){
                String id = cartModel.getValueAt(i,0).toString(); String name = cartModel.getValueAt(i,1).toString();
                double price = Double.parseDouble(cartModel.getValueAt(i,2).toString()); int q = Integer.parseInt(cartModel.getValueAt(i,3).toString());
                double tot = Double.parseDouble(cartModel.getValueAt(i,4).toString()); grand+=tot;
                insertSale(id,name,q,price,tot,customer); updateMedicineStock(id,q);
                bill.append(String.format("%-15s %4d %7.2f %8.2f\n", name.length()>15?name.substring(0,15):name, q, price, tot));
            }
            bill.append("----------------------------------------\n");
            bill.append(String.format("GRAND TOTAL: Rs. %.2f\n",grand));
            bill.append("******** Thank You Visit Again ********\n");
            JFrame bf = new JFrame("Bill Generated"); bf.setSize(420,520); bf.setLocationRelativeTo(dialog);
            JTextArea ta = new JTextArea(bill.toString()); ta.setFont(new Font("Monospaced", Font.PLAIN, 13)); ta.setEditable(false);
            bf.add(new JScrollPane(ta)); bf.setVisible(true); dialog.dispose();
        });

        dialog.setContentPane(root); dialog.setVisible(true);
    }

    // ===================== REPORTS =====================
    static void showReportsMenu(JFrame parent){
        JDialog dialog = styledDialog(parent, "Reports", 380, 300);
        JPanel panel = darkPanel(new GridLayout(4,1,0,14)); panel.setBorder(BorderFactory.createEmptyBorder(28,36,28,36));
        JLabel title = new JLabel("— Reports —"); title.setFont(FONT_SUB); title.setForeground(ACCENT_TEAL); title.setHorizontalAlignment(SwingConstants.CENTER);
        JButton low = actionBtn("1. Low Stock (<10)"); JButton hist = actionBtn("2. Sales History"); JButton daily = actionBtn("3. Daily Summary");
        low.addActionListener(e->{dialog.dispose(); viewTable("Low Stock", new String[]{"ID","Name","Qty"}, fetchLowStockReal(), parent);});
        hist.addActionListener(e->{dialog.dispose(); viewTable("Sales History", new String[]{"ID","Medicine","Qty","Price","Total","Date","Customer"}, fetchSalesHistory(), parent);});
        daily.addActionListener(e->{dialog.dispose(); viewTable("Daily Sales", new String[]{"Date","Total Sales","Bills"}, fetchDailySales(), parent);});
        panel.add(title); panel.add(low); panel.add(hist); panel.add(daily);
        dialog.setContentPane(panel); dialog.setVisible(true);
    }

    // ===================== TABLE VIEW (same) =====================
    static void viewTable(String title, String[] cols, String[][] data, JFrame parent) {
        JFrame frame = new JFrame(title); frame.setSize(860, 500); frame.setLocationRelativeTo(parent); frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        JPanel root = darkPanel(new BorderLayout());
        JPanel hdr = new JPanel(new BorderLayout()); hdr.setOpaque(false); hdr.setBorder(BorderFactory.createEmptyBorder(18, 28, 14, 28));
        JLabel lbl = new JLabel("⬡ " + title.toUpperCase()); lbl.setFont(FONT_MENU); lbl.setForeground(ACCENT_TEAL);
        JButton back = new JButton("← Back"); styleSmallBtn(back); back.addActionListener(e -> frame.dispose());
        hdr.add(lbl, BorderLayout.WEST); hdr.add(back, BorderLayout.EAST);
        DefaultTableModel model = new DefaultTableModel(data, cols) { public boolean isCellEditable(int r, int c) { return false; } };
        JTable table = new JTable(model); table.setBackground(TABLE_ROW); table.setForeground(TEXT_WHITE); table.setFont(FONT_BODY); table.setRowHeight(30);
        table.setGridColor(new Color(35, 50, 75)); table.setSelectionBackground(new Color(0, 150, 140, 80)); table.setSelectionForeground(ACCENT_TEAL);
        table.setShowVerticalLines(false); table.setIntercellSpacing(new Dimension(0, 1));
        table.setDefaultRenderer(Object.class, new DefaultTableCellRenderer() {
            public Component getTableCellRendererComponent(JTable t, Object val, boolean sel, boolean foc, int row, int col) {
                super.getTableCellRendererComponent(t, val, sel, foc, row, col);
                setBackground(sel? new Color(0, 150, 140, 80) : (row % 2 == 0? TABLE_ROW : TABLE_ROW_ALT));
                setForeground(sel? ACCENT_TEAL : TEXT_WHITE); setFont(FONT_BODY); setBorder(BorderFactory.createEmptyBorder(0, 12, 0, 12)); return this;
            }
        });
        JTableHeader th = table.getTableHeader(); th.setBackground(BG_CARD); th.setForeground(ACCENT_TEAL); th.setFont(new Font("Courier New", Font.BOLD, 12));
        th.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, ACCENT_TEAL));
        JScrollPane scroll = new JScrollPane(table); scroll.getViewport().setBackground(TABLE_ROW); scroll.setBorder(BorderFactory.createMatteBorder(1, 0, 0, 0, BORDER_COLOR));
        root.add(hdr, BorderLayout.NORTH); root.add(scroll, BorderLayout.CENTER);
        frame.setContentPane(root); frame.setVisible(true);
    }

    // ===================== UI HELPERS (same) =====================
    static JDialog styledDialog(JFrame parent, String title, int w, int h) { JDialog d = new JDialog(parent, title, true); d.setSize(w, h); d.setLocationRelativeTo(parent); return d; }
    static JPanel darkPanel(LayoutManager layout) { JPanel p = new JPanel(layout) { @Override protected void paintComponent(Graphics g) { super.paintComponent(g); g.setColor(BG_DARK); g.fillRect(0, 0, getWidth(), getHeight()); } }; p.setOpaque(true); return p; }
    static JButton actionBtn(String text) { JButton b = new JButton(text) { boolean hov = false; { setOpaque(false); setContentAreaFilled(false); setBorderPainted(false); setFocusPainted(false); setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR)); addMouseListener(new MouseAdapter() { public void mouseEntered(MouseEvent e) { hov = true; repaint(); } public void mouseExited(MouseEvent e) { hov = false; repaint(); } }); } @Override protected void paintComponent(Graphics g) { Graphics2D g2 = (Graphics2D) g; g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON); g2.setColor(hov? BTN_HOVER : ACCENT_TEAL); g2.fillRoundRect(0, 0, getWidth(), getHeight(), 8, 8); g2.setFont(FONT_SUB); g2.setColor(BG_DARK); FontMetrics fm = g2.getFontMetrics(); int x = (getWidth() - fm.stringWidth(getText())) / 2; int y = (getHeight() + fm.getAscent() - fm.getDescent()) / 2; g2.drawString(getText(), x, y); } }; b.setPreferredSize(new Dimension(200, 38)); return b; }
    static JButton cancelBtn(String text, JDialog dialog) { JButton b = new JButton(text) { boolean hov = false; { setOpaque(false); setContentAreaFilled(false); setBorderPainted(false); setFocusPainted(false); setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR)); addMouseListener(new MouseAdapter() { public void mouseEntered(MouseEvent e) { hov = true; repaint(); } public void mouseExited(MouseEvent e) { hov = false; repaint(); } }); addActionListener(e -> dialog.dispose()); } @Override protected void paintComponent(Graphics g) { Graphics2D g2 = (Graphics2D) g; g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON); g2.setColor(hov? new Color(60,75,100) : BG_CARD2); g2.fillRoundRect(0, 0, getWidth(), getHeight(), 8, 8); g2.setColor(BORDER_COLOR); g2.drawRoundRect(0, 0, getWidth()-1, getHeight()-1, 8, 8); g2.setFont(FONT_SUB); g2.setColor(TEXT_MUTED); FontMetrics fm = g2.getFontMetrics(); int x = (getWidth() - fm.stringWidth(getText())) / 2; int y = (getHeight() + fm.getAscent() - fm.getDescent()) / 2; g2.drawString(getText(), x, y); } }; b.setPreferredSize(new Dimension(200, 34)); return b; }
    static void styleSmallBtn(JButton b) { b.setBackground(BG_CARD2); b.setForeground(TEXT_MUTED); b.setFont(FONT_BODY); b.setFocusPainted(false); b.setBorder(BorderFactory.createLineBorder(BORDER_COLOR)); b.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR)); }
    static JLabel styledLabel(String text) { JLabel l = new JLabel(text); l.setFont(FONT_LABEL); l.setForeground(TEXT_MUTED); return l; }
    static JTextField styledField() { JTextField f = new JTextField(); f.setBackground(BG_CARD2); f.setForeground(TEXT_WHITE); f.setCaretColor(ACCENT_TEAL); f.setFont(FONT_BODY); f.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createLineBorder(BORDER_COLOR), BorderFactory.createEmptyBorder(5, 10, 5, 10))); return f; }

    // ===================== DATABASE METHODS =====================
    static String[][] fetchSuppliers() { String[][] data = new String[200][4]; try (Connection conn = DBConnection.getConnection(); Statement st = conn.createStatement(); ResultSet rs = st.executeQuery("SELECT * FROM supplier")) { int i = 0; while (rs.next()) { data[i][0] = rs.getString(1); data[i][1] = rs.getString(2); data[i][2] = rs.getString(3); data[i][3] = rs.getString(4); i++; } } catch (Exception e) { e.printStackTrace(); } return data; }
    static String[][] fetchMedicines() { String[][] data = new String[200][5]; try (Connection conn = DBConnection.getConnection(); Statement st = conn.createStatement(); ResultSet rs = st.executeQuery("SELECT * FROM medicine")) { int i = 0; while (rs.next()) { data[i][0] = rs.getString("medicineId"); data[i][1] = rs.getString("name"); data[i][2] = rs.getString("category"); data[i][3] = rs.getString("price"); data[i][4] = rs.getString("quantity"); i++; } } catch (Exception e) { e.printStackTrace(); } return data; }
    static String[][] searchMedicineData(String name) { String[][] data = new String[200][3]; try (Connection conn = DBConnection.getConnection(); PreparedStatement ps = conn.prepareStatement("SELECT * FROM medicine WHERE name LIKE?")) { ps.setString(1, "%" + name + "%"); ResultSet rs = ps.executeQuery(); int i = 0; while (rs.next()) { data[i][0] = rs.getString("name"); data[i][1] = rs.getString("price"); data[i][2] = rs.getString("quantity"); i++; } } catch (Exception e) { e.printStackTrace(); } return data; }
    static void insertSupplier(String id, String name, String city, String contact) { try (Connection conn = DBConnection.getConnection(); PreparedStatement ps = conn.prepareStatement("INSERT INTO supplier VALUES (?,?,?,?)")) { ps.setString(1, id); ps.setString(2, name); ps.setString(3, city); ps.setString(4, contact); ps.executeUpdate(); } catch (Exception e) { e.printStackTrace(); } }
    static void insertMedicine(String id, String name, String category, String price, String qty) { try (Connection conn = DBConnection.getConnection(); PreparedStatement ps = conn.prepareStatement("INSERT INTO medicine (medicineId, name, category, price, quantity) VALUES (?,?,?,?,?)")) { ps.setString(1, id); ps.setString(2, name); ps.setString(3, category); ps.setString(4, price); ps.setString(5, qty); ps.executeUpdate(); } catch (Exception e) { e.printStackTrace(); } }

    // ----- NEW METHODS FOR SALES -----
    static String[][] fetchMedicineForSale(){ String[][] data = new String[200][4]; try(Connection conn=DBConnection.getConnection(); Statement st=conn.createStatement(); ResultSet rs=st.executeQuery("SELECT medicineId,name,price,quantity FROM medicine")){ int i=0; while(rs.next()){ data[i][0]=rs.getString(1); data[i][1]=rs.getString(2); data[i][2]=rs.getString(3); data[i][3]=rs.getString(4); i++; } }catch(Exception e){e.printStackTrace();} return data; }
    static void insertSale(String id,String name,int qty,double price,double total,String cust){ try(Connection conn=DBConnection.getConnection(); PreparedStatement ps=conn.prepareStatement("INSERT INTO sales(medicineId,medicineName,quantity,price,total,customerName) VALUES(?,?,?,?,?,?)")){ ps.setString(1,id); ps.setString(2,name); ps.setInt(3,qty); ps.setDouble(4,price); ps.setDouble(5,total); ps.setString(6,cust); ps.executeUpdate(); }catch(Exception e){e.printStackTrace();} }
    static void updateMedicineStock(String id,int qty){ try(Connection conn=DBConnection.getConnection(); PreparedStatement ps=conn.prepareStatement("UPDATE medicine SET quantity = quantity -? WHERE medicineId=?")){ ps.setInt(1,qty); ps.setString(2,id); ps.executeUpdate(); }catch(Exception e){e.printStackTrace();} }

    // ----- NEW METHODS FOR REPORTS -----
    static String[][] fetchLowStockReal(){ String[][] data=new String[200][3]; try(Connection conn=DBConnection.getConnection(); PreparedStatement ps=conn.prepareStatement("SELECT medicineId,name,quantity FROM medicine WHERE quantity < 10"); ResultSet rs=ps.executeQuery()){ int i=0; while(rs.next()){ data[i][0]=rs.getString(1); data[i][1]=rs.getString(2); data[i][2]=rs.getString(3); i++; } }catch(Exception e){e.printStackTrace();} return data; }
    static String[][] fetchSalesHistory(){ String[][] data=new String[500][7]; try(Connection conn=DBConnection.getConnection(); Statement st=conn.createStatement(); ResultSet rs=st.executeQuery("SELECT saleId,medicineName,quantity,price,total,saleDate,customerName FROM sales ORDER BY saleDate DESC")){ int i=0; while(rs.next()){ for(int j=0;j<7;j++) data[i][j]=rs.getString(j+1); i++; } }catch(Exception e){e.printStackTrace();} return data; }
    static String[][] fetchDailySales(){ String[][] data=new String[200][3]; try(Connection conn=DBConnection.getConnection(); Statement st=conn.createStatement(); ResultSet rs=st.executeQuery("SELECT DATE(saleDate), SUM(total), COUNT(*) FROM sales GROUP BY DATE(saleDate) ORDER BY DATE(saleDate) DESC")){ int i=0; while(rs.next()){ data[i][0]=rs.getString(1); data[i][1]=rs.getString(2); data[i][2]=rs.getString(3); i++; } }catch(Exception e){e.printStackTrace();} return data; }

    // ===================== DB CONNECTION =====================
    static class DBConnection {
        public static Connection getConnection() {
            try { Class.forName("com.mysql.cj.jdbc.Driver");
                return DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacyAndMedicalStock", "root", "Nanjo786");
            } catch (Exception e) { e.printStackTrace(); return null; }
        }
    }
}