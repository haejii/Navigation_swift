import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MyLable2: UILabel!
    
    @IBAction func openlogin(_ sender: Any) {
        
        var loginVC = self.storyboard?.instantiateViewController(identifier: "login")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // 첫 번째 화면에서 두번째 화면이 전환될 때,
    // seque 화면이 전환될 때의 정보
    override func prepare(for segue: UIStoryboardSegue,
                          sender: Any?) {
        
        
        // 타입 변환 as로 한다. ! => 실패 안할 때, ? => 실패할 수 있을 때 커버 만약 안될 시 nill이 할당된다.
        if let vc = segue.destination as? SecondViewController{
            vc.data = "Hello"
        }
    }
    
    
    @IBAction func unwindToViewController(_
        unwindSegue: UIStoryboardSegue) {
        
        if let sourceViewController =
            unwindSegue.source as?
            ThirdViewController{
            
            MyLable2.text =
                sourceViewController.thirdViewControllerData
            
        }
       
     
    }

}

