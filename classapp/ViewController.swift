//
//  ViewController.swift
//  classapp
//
//  Created by Abhisekh Sahoo on 18/02/20.
//  Copyright © 2020 Abhisekh Sahoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var user_name: UILabel!
    
    @IBOutlet weak var num: UITextField!
    @IBOutlet weak var fact: UIButton!
    @IBOutlet weak var ans: UILabel!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var capital: UILabel!
    @IBOutlet weak var cap: UITextField!
    @IBOutlet weak var con: UITextField!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var change: UIButton!
    @IBOutlet weak var lable: UILabel!
    @IBOutlet var mainView: UIView!
    var contry:[String]=["India","China","Nepal","Japan"]
    var captal:[String]=["Delhi","Hongkong","Kathmandu","Tokyo"]
    var sco = 0
    var i:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        user_name.text = "Abhisekh"
        
        // Do any additional setup after loading the view.
        con.text=contry[i]
        img.image=UIImage(named: "2")
    }

    @IBAction func touchup(_ sender: Any) {
        let n:Int = Int(num.text!)!
        
        var facto = 1
        for i in stride(from: 1, to: n+1, by: 1){
            facto *= i
        }
        
        ans.text = String(facto)
    }
   
    @IBAction func check(_ sender: Any) {
        
//        let str=cap.text
//        if (str?.lowercased()=="delhi"){
//          sco = sco+10
//        }
//        score.text=String(sco)
        
        if captal[i] == cap.text{
            sco+=10;
            
        }else{
            sco-=5;
         
        }
        score.text=String(sco)
        if i != contry.count-1{
            i+=1;
        }
        
        con.text=contry[i]
        cap.text=""
    }
    @IBAction func change(_ sender: Any) {
        img.image=UIImage(named: String(Int.random(in: 1...6)))
    }
    @IBAction func sliderValue(_ sender: UISlider) {
        var count=Int(sender.value)
        lable.text="\(count)"
        mainView.backgroundColor=UIColor.init(cgColor: "black" as! CGColor)
    }
    
}

