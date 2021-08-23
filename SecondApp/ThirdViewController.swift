
import UIKit

class ThirdViewController: UIViewController {
    
    var thirdViewControllerData:String?

   
    override func viewDidLoad() {
       
        super.viewDidLoad()

        thirdViewControllerData = "ThiredViewData"
    }
    

    @IBAction func btn(_ sender: Any) {
        NotificationCenter.default.post(name:Notification.Name("ChangeBackColor"), object: nil, userInfo: nil)
    }
}
