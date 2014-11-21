package com.uyghur;
import java.awt.Graphics;
import java.awt.Image;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class JFrame18 {

	public static void main(String[] args) {
	    JFrame frame = new JFrame();
	    frame.setBounds(0, 0, 300, 400);
	    frame.setTitle("∑…œË¥Û’Ω");
	    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	    MyJPanel mp = new MyJPanel();
	    frame.add(mp);
	   MyJButton button = new MyJButton();
	button.setBounds(100, 300, 100, 50);
		frame.add(button);
	   MyJButton bp = new MyJButton();
	   frame.add(bp);
	   frame.setLayout(null);

	    frame.setVisible(true);
	}

}
class MyJButton extends JButton{
	public void paintComponent(Graphics f){
		ImageIcon imgIcon = new ImageIcon("img/start.jpg");
		Image img = imgIcon.getImage();
		f.drawImage(img,0,0,100,50,null);
		
	}
	
}
class MyJPanel extends JPanel{
	  public void paint(Graphics g){
		  super.paint(g);
		  ImageIcon imgIcon = new ImageIcon("img/bg6.jpg");
		  Image img = imgIcon.getImage();
		  g.drawImage(img,0,0,300,400,null);
		  
	  }
}