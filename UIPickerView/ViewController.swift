//
//  ViewController.swift
//  UIPickerView
//
//  Created by D7703_27 on 2018. 4. 19..
//  Copyright © 2018년 D7703_27. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myLable: UILabel!
    @IBOutlet weak var myLable2: UILabel!
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 10
        }else{
            return 100
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myPickerView.delegate = self
        myPickerView.dataSource = self
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        
        if component == 0 {
            return "comp01 \(row)"
        } else {
            return "comp02 \(row)"
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if component == 0 {
            myLable.text = "comp01 \(row)"
        } else {
     myLable2.text = "comp02 \(row)"
        }
        
    }

}

