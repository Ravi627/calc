//
//  ViewController.swift
//  calc
//
//  Created by Ravi Chandak on 20/07/17.
//  Copyright © 2017 Ravi Chandak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textfeild: UILabel!
    var counter:Int32 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @IBAction func clicked (click: UIButton)
    {
        if let num = click.titleLabel?.text{
            
       
            if textfeild.text == "0"{
            textfeild.text = click.titleLabel?.text
           counter = 1;
            }
        
            else{
                
               if counter < 10{
                    textfeild.text = textfeild.text! + num ;
                   counter+=1 ;
               }
        
            }
        }
        print(counter)
    }
    
    @IBAction func plus (click: UIButton)
    {
        if let sign = click.titleLabel?.text{
        print(sign)
        }
    }
    
    @IBAction func minus (click: UIButton)
    {
        if let sign = click.titleLabel?.text{
            print(sign)
        }
    }
    
    @IBAction func multi (click: UIButton)
    {
        if let sign = click.titleLabel?.text{
            print(sign)
        }
    }
    
    @IBAction func divide (click: UIButton)
    {
        if let sign = click.titleLabel?.text{
            print(sign)
        }
    }
}

    
