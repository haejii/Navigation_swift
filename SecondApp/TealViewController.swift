//
//  TealViewController.swift
//  SecondApp
//
//  Created by Admin on 2021/08/23.
//

import UIKit

class TealViewController: UIViewController {

    @IBOutlet weak var tealLable: UILabel!
    
    var resultText:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tealLable.text = resultText
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        
        guard let vc = segue.destination as? IndigoViewController
            else{
            return
        }
        vc.tearVC = self
   
    
    }


}
