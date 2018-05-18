import java.util.*;
import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
import java.io.*;
import java.lang.System;

public class Day2{
	int wageTp = 0;
	int incomeTp = 0;
	int singleTp = 0;
	int jointlyTp = 0;
	int hohTp = 0;
	int sepratelyTp = 0;
	JFrame day;
	JPanel controlPanel;
	JButton wageBT;
	JButton incomeBT;
	JButton singleBT;
	JButton hohBT;
	JButton jointlyBT;
	JButton sepratelyBT;
	JButton doneBT;
	JButton homeBT;
	JButton backBT;
	JTextField grossTF;
	JTextField hoursTF;
	JTextField stateTF; //type two letter state code 
	JTextField dependentTF; //number of dependents */
	//preloaded panels
	JPanel salaryJP;
	JPanel filerConditionJP;
	

	int[] fs = {0, 9526, 38700, 82501, 157501, 200001, 500001};

	int[] fhoh = {0, 13601, 51801, 82501, 157501, 200001, 500001};
 
	int[] fmj = {0, 19051, 77401, 165001, 315001, 400001, 600001};

	int[] fms = {0, 9526, 38700, 82501, 157501, 200001, 300001};

	double[] percent = {.1, .12, .22, .24, .32, .35, .37};

	public static void main(String args[]){
		Day2 Gui = new Day2();
		Gui.showGui();
	}

	public Day2(){
		prepareGUI();
	}

	private void prepareGUI(){
		day = new JFrame("Day");
		day.setSize(1000,1130);
		//day.setLayout(new GridLayout(4,1));
		//day.setLocationRelativeTo(null);
		day.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		day.setResizable(false);

		day.add(controlPanel);
		day.add(salaryJP);
		day.add(filerConditionJP);
	}	

	private void showGui(){
		day.setTitle("Tax App");

		wageBT = new JButton("wage");
		incomeBT = new JButton("income");
		JButton singleBT = new JButton("single");
		JButton hohBT = new JButton("HOH");
		JButton jointlyBT = new JButton("jointly");
		JButton sepratelyBT = new JButton("seprately");
		JButton doneBT = new JButton("done");
		JButton homeBT = new JButton("home");
		JButton backBT = new JButton("back");
		JTextField grossTF = new JTextField(7);
		JTextField hoursTF = new JTextField(2);
		JTextField stateTF = new JTextField(2); //type two letter state code 
		JTextField dependentTF = new JTextField(2); //number of dependents */


		wageBT.setBounds(100,100,300,300);
		wageBT.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent e) {     
            	salary();
           		wageTp = 1;    
        	}
      	}); 
		controlPanel.add(wageBT);

		incomeBT.setBounds(600,100,300,300);
		incomeBT.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {     
				salary();
				incomeTp = 1;    
			}
		}); 
		controlPanel.add(incomeBT);

		homeBT.setBounds(850,1070,100,30);
		homeBT.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent e) {     
            	//go to start screen  
            	//go to choose screen
        	}
      	}); 
      	controlPanel.add(homeBT);

      	backBT.setBounds(50,1070,100,30);
      	backBT.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent e) {     
            	//go back one page   
            	//to the choice of day week month or year
        	}
      	}); 
      	controlPanel.add(backBT);

		day.setVisible(true);
		controlPanel.setVisible(true);
		salaryJP.setVisible(false);
		filerConditionJP.setVisible(false);
	}

	public void salary(){
		salaryJP = new JPanel();
		
		singleBT.setBounds(100,100,300,300);
		singleBT.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent e) {     
            	filerCondition();
           		singleTp = 1;    
        	}
      	});
		salaryJP.add(singleBT);
		
		hohBT.setBounds(600,100,300,300);
		hohBT.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent e) {     
            	filerCondition();
           		hohTp = 1;    
        	}
      	});
      	salaryJP.add(hohBT);

		jointlyBT.setBounds(100,600,300,300);
		jointlyBT.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent e) {     
            	filerCondition();
           		jointlyTp = 1;    
        	}
      	}); 
      	salaryJP.add(jointlyBT);

		sepratelyBT.setBounds(600,600,300,300);
		sepratelyBT.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent e) {     
            	filerCondition();
           		sepratelyTp = 1;    
        	}
      	}); 
		salaryJP.add(sepratelyBT); 

		homeBT.setBounds(850,1070,100,30);
		homeBT.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent e) {     
            	//go to start screen    
        	}
      	}); 
      	salaryJP.add(homeBT);

      	backBT.setBounds(50,1070,100,30);
      	backBT.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent e) {     
            	controlPanel();   
        	}
      	}); 

      	controlPanel.setVisible(false);
		salaryJP.setVisible(true);
	}


	public void filerCondition(){
		filerConditionJP = new JPanel();

		System.out.println("what is your gorss hourly wage? (only in numbers)");
		day.add(grossTF);
		System.out.println("how many hours did you work today? (only in numbers)");
		day.add(hoursTF);

		day.add(doneBT);
		doneBT.setBounds();
		doneBT.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e){
				//do calculations
			}
		});
		filerConditionJP.add(doneBT)

		homeBT.setBounds(850,1070,100,30);
		homeBT.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent e) {     
            	//go to start screen    
        	}
      	}); 
      	filerConditionJP.add(homeBT);

      	backBT.setBounds(50,1070,100,30);
      	backBT.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent e) {     
            	salary();   
        	}
      	}); 
      	filerConditionJP.add(backBT);

		salaryJP.setVisible(false);
		filerConditionjp.setVisible(true);
	}
}