//
//  ViewController.swift
//  calc
//
//  Created by Ravi Chandak on 20/07/17.
//  Copyright © 2017 Ravi Chandak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   /***************************************************/
    
    @IBOutlet var textfield: UILabel!
    @IBOutlet var operatorlable: UILabel!
    var counter:Int = 0                                             //counting no. of digits
    var signed_counter:Int = 0                                      //for signed or unsigned
    var lastnum:String = ""
    var num1:Int = 0
    var num2:Int = 0
    var ans:Int = 0
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    /**************************************************/
    // numpad
    
   /***************************************************/
   //numpad
    
    @IBAction func clicked (click: UIButton)
    {

        if let num = click.titleLabel?.text{            // foce unwrapping
        
            if textfield.text == "0" || textfield.text == "Error" {
             textfield.text = num
             counter = 1;
            }
            else {
                
               if counter < 10{                                     //limiting the no.of digits
                textfield.text = textfield.text! + num
                counter+=1
               }
            }
        }
       // print(counter)
    }
    /***************************************************/
    // operator functions
    
    @IBAction func plus (click: UIButton)                                   //Addition
    {
        if operatorlable.text == ""{
           
            operatorlable.text = "+"
            if let no = textfield?.text{
                lastnum = no
                print("lastno :",lastnum)
            }
            
            textfield.text = "0"
            print("textfield",textfield.text ?? "error")
        }
            
        else{
            equals(nil)
            operatorlable.text = "+"
        }
    }
    
    
    @IBAction func minus (click: UIButton)                                 // subtraction
    {
        if operatorlable.text == ""{
        
            operatorlable.text = "-"
            if let no = textfield?.text{
                lastnum = no
                print("lastno :",lastnum)
            }
 
            textfield.text = "0"
            print("textfield",textfield.text ?? "error")
        }
        
        else{
        equals(nil)
        operatorlable.text = "-"
        }
    }
    
    
    @IBAction func multi (click: UIButton)                                 //multiplication
    {
        if operatorlable.text == ""{
            
            operatorlable.text = "x"
            if let no = textfield?.text{
                lastnum = no
                print("lastno :",lastnum)
            }
            
            textfield.text = "0"
            print("textfield",textfield.text ?? "error")
        }
            
        else{
            equals(nil)
            operatorlable.text = "x"
        }
    }
    
    
    @IBAction func divide (click: UIButton)                                 // division
    {
        if operatorlable.text == ""{
    
            operatorlable.text = "/"
            if let no = textfield?.text{
                lastnum = no
                print("lastno :",lastnum)
            }
            
            textfield.text = "0"
            print("textfield",textfield.text ?? "error")
        }
            
        else{
            equals(nil)
            operatorlable.text = "/"
        }
    }
    
    
    @IBAction func equals (_:AnyObject?)                                    // main functionality
    {
        
        if let temp = Int(lastnum)                                          // convertin string to no.
        {
            num1 = temp
        }
        
        if let temp1 = textfield?.text                                      // converting string to no.
        {
          if let temp2 = Int(temp1)
          {
           num2 = temp2
          }
        }
        
        
        if operatorlable.text == "-"{
          
            ans = num1 - num2
        }
        else if operatorlable.text == "+"{
         
            ans = num1 + num2
            
        }
        else if operatorlable.text == "x"{
        
            ans = num1 * num2
        }
        else if operatorlable.text == "/"{                                      // divide by 0 resolver
            if num2 == 0
            {
                textfield.text = "Error"
                return
            }
            else{
                ans = num1/num2
            }
        }
    
        operatorlable.text = ""
        textfield.text = String(ans)
        lastnum = ""
    }

    
    
    /**************************************************/
    // functions to clear
    
    
    @IBAction func all_clear (click: UIButton)                                  // clear everything
    {
    textfield.text = "0"
    lastnum = "0"
    operatorlable.text = ""
    }


    @IBAction func clear (click: UIButton)                                      // clear digit at a time and operator if available
    {
       if operatorlable.text != ""{
        
        if let no = textfield?.text{
            
            var temp:Int = Int(no)!
            temp = temp/10
            textfield.text = String(temp) 
            }
        }
       else {
        
            operatorlable.text = ""
        
        }
    
        }

}


