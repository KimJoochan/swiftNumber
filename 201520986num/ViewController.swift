//
//  ViewController.swift
//  201520986num
//
//  Created by dit06 on 2019. 4. 10..
//  Copyright © 2019년 dit06. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        input.delegate = self as! UITextFieldDelegate
        input.placeholder = "ex) 7"
        input.clearButtonMode = UITextField.ViewMode.always
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func check(_ sender: UIButton) {
        var number : Int? = Int(input.text!);
        if((number) != nil){
            var isFrame=true;
            if(number==1){
                isFrame=false;
            }else if(number!==0){
                isFrame=false;
            }else{
                var i=2;
                while i<number! {
                    if(number!%i==0){
                        isFrame=false
                    }
                    i+=1;
                }
                
            }
            if(isFrame==true){
                result.text="소수입니다."
            }else{
                result.text="소수아닙니다."
                input.text="";
            }
        }else{
            result.text="수를 입력하시오."
            input.text="";
        }
        super.viewDidLoad()
    }
    // background view를 누르면 키패드가 내려감
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // return 키를 누르면 키패드가 내려감
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        input.resignFirstResponder()
        return true
    }
}

