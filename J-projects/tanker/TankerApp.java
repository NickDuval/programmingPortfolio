//import layout listener and controls
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.JLabel;

//class name
public class TankerApp{
	//controls for app
	private JFrame mainFrame;
	private JLabel headerLabel;
	private JLabel statusLabel;
	private JPanel controlPanel;
	private JTextField text1;
	private JTextField text2;
	private JTextField text3;
	private JTextField text4;

//constructor
	public TankerApp(){
		prepareGUI();
	}

//entry point
	public static void main(String[] args){
		TankerApp swingTanker = new TankerApp();
		swingTanker.showTextField();
	}

//setup GUI
	private void prepareGUI(){
		//setup app frame
		mainFrame = new JFrame("Tanker app");
		mainFrame.setSize(500, 500);
		mainFrame.setLayout(new GridLayout(3,2));

		//setup label
		headerLabel = new JLabel("Tanker app", JLabel.CENTER);
		statusLabel = new JLabel("enter data", JLabel.CENTER);
		statusLabel.setSize(250,100);

		//setup layour
		controlPanel = new JPanel();
		controlPanel.setLayout(new FlowLayout());

		//add controls
		mainFrame.add(headerLabel);
		mainFrame.add(statusLabel);
		mainFrame.add(controlPanel);
		mainFrame.setVisible(true);

	}

	//display controls
	private void showTextField(){
		
		//set values
		JLabel name = new JLabel("what is your name",JLabel.CENTER);
     	//JLabel birth = new JLabel("what is your birth date",JLabel.CENTER);
		JLabel age = new JLabel("how long do you want to live",JLabel.CENTER);
     	JLabel amount = new JLabel("how much do you drink per day (oz)",JLabel.CENTER);
     	//text1 = new JTextField(10);
     	text2 = new JTextField(10);
     	text3 = new JTextField(10);
     	text4 = new JTextField(10);
     	/*text2.addActionListener(new ActionListener() {
     		public void actionPerformed(ActionEvent e) {
     			showanswer();
     		}
     	});
     	text3.addActionListener(new ActionListener() {
     		public void actionPerformed(ActionEvent e) {
     			showanswer();
     		}
     	});
     	text4.addActionListener(new ActionListener() {
     		public void actionPerformed(ActionEvent e) {
     			showanswer();
     		}
     	});*/
		
		//action listener
      	JButton submitButton = new JButton("Submit");
      	submitButton.setActionCommand("Submit");
      	submitButton.addActionListener(new ButtonClickListener());
		
		//place controls
		controlPanel.add(name);
		controlPanel.add(text2);
		//controlPanel.add(birth);
      	controlPanel.add(age);
      	controlPanel.add(text3);
      	//controlPanel.add(text1);
      	controlPanel.add(amount);   
        controlPanel.add(text4);
      	controlPanel.add(submitButton);
      	
      	 

		//set visibility
      	mainFrame.setVisible(true); 
    }


	private class ButtonClickListener implements ActionListener{
    	public void actionPerformed(ActionEvent e) {
        	String command = e.getActionCommand();  
         
        	if( command.equals( "Submit" ) | command.equals("return"))  {
            	showanswer();
        	}
      	}  	
	}

	private void showanswer() {
		try{
			//Float name = Float.parseFloat(text4.getText());
			Float ozperyear = Float.parseFloat(365 * text2);
			Float ozperlife = Float.parseFloat(ozperyear * text3);
			Float numOfTruck = ozperlife / 1024000;
			statusLabel.setText(text4.getText() + "will drink" + (Float.toString(numOfTruck) + " trucks in their life"));
		} catch(java.lang.NumberFormatException a) {
			statusLabel.setText("YOUR WRONG!");
		}
	}

}

