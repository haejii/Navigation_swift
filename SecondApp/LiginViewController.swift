//
//  LiginViewController.swift
//  SecondApp
//
//  Created by Admin on 2021/08/23.
//

import UIKit

class LiginViewController: UIViewController {
    
    var LoginVC:ViewController?
    var PassVC:ViewController?

    @IBOutlet weak var IdField: UITextField!
    @IBOutlet weak var PassField: UITextField!
    
    @IBAction func Cofirm_btn(_ sender: Any) {
        LoginVC?.resultText = IdField.text
        PassVC?.resultText2 = PassField.text
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // 옵저버 등록
//        NotificationCenter.default.addObserver(self, selector: #selector(changeBackcolor(_:)), name:
//                Notification.Name("ChangeBackColor"), object: nil)
//    }
//
//    @objc func changeBackcolor(_ notification:Notification){
//        self.view.backgroundColor = UIColor.red
//    }
      

  

}
