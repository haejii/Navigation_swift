import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var MyLabel: UILabel!
    var data:String? // optional 선언 시 미리 nill이 할당된다.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyLabel.text = data
    }
}
