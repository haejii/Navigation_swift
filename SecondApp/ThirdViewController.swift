
import UIKit

class ThirdViewController: UIViewController {
    
    var thirdViewControllerData:String?

   
    override func viewDidLoad() {
       
        super.viewDidLoad()

        thirdViewControllerData = "ThiredViewData"
    }
    

    @IBAction func btn(_ sender: Any) {
        NotificationCenter.default.post(name:Notification.Name("ChangeBackColor"), object: nil, userInfo: nil)
        
        self.navigationController?
            .popToRootViewController(animated: true) // 내가 포함되어있는 제일 상위로 올라갈래!!

       // self.navigationController?.popToViewController(self.navigationController?.viewController[2], animated: <#T##Bool#>)
    }
}
