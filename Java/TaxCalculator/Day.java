import java.util.*;
import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
import java.io.*;


public class Day{
	int wageTp = 0;
	int incomeTp = 0;
	int singleTp = 0;
	int jointlyTp = 0;
	int hohTp = 0;
	int sepratelyTp = 0;
	JFrame day = new JFrame("Day");
	JButton wage = new JButton("wage");
	JButton income = new JButton("income");
	JButton single = new JButton("single");
	JButton hoh = new JButton("HOH");
	JButton jointly = new JButton("jointly");
	JButton seprately = new JButton("seprately");
	JButton done = new JButton("done");	
	JButton home = new JButton("home");
	JTextField gross = new JTextField(7); //textbox 
	JTextField hours = new JTextField(2);
	JTextField state = new JTextField(2); //type two letter state code 
	JTextField dependent = new JTextField(2); //number of dependents

	

	int[] fs = {0, 9526, 38700, 82501, 157501, 200001, 500001};

	int[] fhoh = {0, 13601, 51801, 82501, 157501, 200001, 500001};

	int[] fmj = {0, 19051, 77401, 165001, 315001, 400001, 600001};

	// int[] fms;
	// fms = new int[7];
	// int fms[0] = 0;
	// int fms[1] = 9526;
	// int fms[2] = 38701;
	// int fms[3] = 82501;
	// int fms[4] = 157501;
	// int fms[5] = 200001;
	// int fms[6] = 300001;

	// double[] percent;
	// percent = new double[7];
	// double percent[0] = .1;
	// double percent[1] = .12;
	// double percent[2] = .22;
	// double percent[3] = .24;
	// double percent[4] = .32;
	// double percent[5] = .35;
	// double percent[6] = .37;

	public static void main(String[] args){
		Day gui = new Day();
		Day.actionListeners();

		wage.setBounds(100,100,300,300); //button to choose whether or not to use hourly wage	
		income.setBounds(600,100,300,300); //or yearly income
		single.setBounds(100,100,300,300);
		hoh.setBounds(600,100,300,300);
		jointly.setBounds(100,600,300,300);
		seprately.setBounds(600,600,300,300);
		done.setBounds(400,1000,100,30);
		home.setBounds(850,1070,100,30);
	}

	public Day(){
		prepareGUI();
	}

	private void prepareGUI(){
		day.setSize(1000,1130);
		day.setLayout(new GridLayout(4,1));
		day.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		day.setTitle("Tax App");
		day.setVisible(true);
		day.setResizable(false);
		day.add(wage);
		day.add(income);
	}	

	/*
	@ action listeners for buttons
	@ wageButton
	@ incomeButton
	@ singleButton
	@ jointlyButton
	@ hohButton
	@ sepratelyButton
	@ doneButton
	*/

	private void actionListeners(){
		public void wageButton(){
			wage.addActionListerner(new ActionListener(){
				public void actionPreformed(ActionEvent b){
					if(b.getActionCommand().equals("wage")){
						//salary();
						wageTp = 1;
					}
				}
			});
		}

		public void incomeButton(){
			income.addActionListerner(new ActionListener(){
				public void actionPreformed(ActionEvent c){
					if(c.getActionCommand().equals("income")){
						//salary();
						incomeTp = 1;
					}
				}
			});
		}

		// public void singleButton(){
		// 	single.addActionListerner(new ActionListener(){
		// 		public void actionPreformed(ActionEvent d){
		// 			if(d.getActionCommand().equals("single")){
		// 				filerCondition();
		// 				singleTp = 1;
		// 			}
		// 		}
		// 	});
		// }

		// public void jointlyButton(){
		// 	jointly.addActionListerner(new ActionListener(){
		// 		public void actionPreformed(ActionEvent e){
		// 			if(e.getActionCommand().equals("jointly")){
		// 				filerCondition();
		// 				jointlyTp = 1;
		// 			}
		// 		}
		// 	});
		// }

		// public void hohButton(){
		// 	hoh.addActionListerner(new ActionListener(){
		// 		public void actionPreformed(ActionEvent f){
		// 			if(f.getActionCommand().equals("hoh")){
		// 				filerCondition();
		// 				hohTp = 1;
		// 			}
		// 		}
		// 	});
		// }

		// public void sepratelyButton(){
		// 	seprately.addActionListerner(new ActionListener(){
		// 		public void actionPreformed(ActionEvent g){
		// 			if(g.getActionCommand().equals("seprately")){
		// 				filerCondition();
		// 				sepratelyTp = 1;
		// 			}
		// 		}
		// 	});
		// }

		// public void doneButton(){
		// 	done.addActionListerner(new ActionListener(){
		// 		public void actionPreformed(ActionEvent a){
		// 			if(a.getActionCommand().equals("done")){
		// 				if(wageTp = 1){
		// 					if(singleTp = 1){
		// 						singleTax();
		// 					}
		// 					else if(jointlyTp = 1){
		// 						jointlyTax();
		// 					}
		// 					else if(hohTp = 1){
		// 						hohTax();
		// 					}
		// 					else{
		// 						sepratelyTax();
		// 					}
		// 				}
		// 				else{
		// 					if(singleTp = 1){
		// 						singleTax();
		// 					}
		// 					else if(jointlyTp = 1){
		// 						jointlyTax();
		// 					}
		// 					else if(hohTp = 1){
		// 						hohTax();
		// 					}
		// 					else{
		// 						sepratelyTax();
		// 					}
		// 				}
		// 			}
		// 		}
		// 	});
		// }

		// public void homeButton(){
		// 	done.addActionListerner(new ActionListener(){
		// 		public void actionPreformed(ActionEvent h){
		// 			if(h.getActionCommand().equals("home")){
		// 				this.dispose();
		// 				day.setVisible(true);
		// 			}
		// 		}
		// 	});
		// }			
	}	
	/*
	@ used in button classes 
	@ for filerCondition
	@ and salary of the user
	*/

	// public void filerCondition(){
	// 	system.out.println("please write your hourly wage only in numbers");
	// 	day.add(jtf);
	// 	system.out.println("how many hours did you work today? (only in numbers)");
	// 	day.add(hours);
	// 	day.add(done);
	// 	day.remove(single);
	// 	day.remove(hoh);
	// 	day.remove(jointly);
	// 	day.remove(seprately);
	// }

	// public void salary(){
	// 	day.add(single);
	// 	day.add(hoh);
	// 	day.add(jointly);
	// 	day.add(seprately);
	// 	day.remove(wage);
	// 	day.remove(income);
	// }

	/*
	@ tax from how they are filed
	@ single
	@ jointly
	@ head of house
	@ seprately
	*/

	// public void singleTax(){
	// 	for(i = 6; i >= 0; i = i-1){
	// 		if(gross >= fs[i]){
	// 			gross * percent[i] = federalTax;
	// 			//state info
	// 			gross - federalTax = net;
	// 			system.out.println("gross wage for the day: " + gross);
	// 			system.out.println("net wage for the day: " + net);
	// 			sysem.out.println("federal tax taken off net is: " + federalTax);
	// 		}else{
	// 			system.out.println("error: use only numbers please! :)");
	// 		}
	// 	}
	// }

	// public void jointlyTax(){
	// 	for(i = 6; i >= 0; i = i-1){
	// 		if(gross >= fmj[i]){
	// 			gross * percent[i] = federalTax;
	// 			//state info
	// 			gross - federalTax = net;
	// 			system.out.println("gross wage for the day: " + gross);
	// 			system.out.println("net wage for the day: " + net);
	// 			sysem.out.println("federal tax taken off net is: " + federalTax);
	// 		}else{
	// 			system.out.println("error: use only numbers please! :)");
	// 		}
	// 	}
	// }

	// public void hohTax(){
	// 	for(i = 6; i >= 0; i = i-1){
	// 		if(gross >= fhoh[i]){
	// 			gross * percent[i] = federalTax;
	// 			//state info
	// 			gross - federalTax = net;
	// 			system.out.println("gross wage for the day: " + gross);
	// 			system.out.println("net wage for the day: " + net);
	// 			sysem.out.println("federal tax taken off net is: " + federalTax);
	// 		}else{
	// 			system.out.println("error: use only numbers please! :)");
	// 		}
	// 	}
	// }

	// public void sepratelyTax(){
	// 	for(i = 6; i >= 0; i = i-1){
	// 		if(gross >= fms[i]){
	// 			gross * percent[i] = federalTax;
	// 			//state info
	// 			gross - federalTax = net;
	// 			system.out.println("gross wage for the day: " + gross);
	// 			system.out.println("net wage for the day: " + net);
	// 			sysem.out.println("federal tax taken off net is: " + federalTax);
	// 		}else{
	// 			system.out.println("error: use only numbers please! :)");
	// 		}
	// 	}
	// }
}