import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var MyLable2: UILabel!
    @IBOutlet weak var setId: UILabel!
    @IBOutlet weak var setPass: UILabel!
    
    var resultText:String?
    var resultText2:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setId.text = resultText
        setPass.text = resultText2
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let vc = segue.destination as? LiginViewController
            else{
            return
        }
        
        vc.LoginVC = self
        vc.PassVC = self

    }
    
    @IBAction func openlogin(_ sender: Any) {
        
        
        // loginVC1 는 코드문 안에서만 작성가능
//        if let loginVC1 =
//            self.storyboard?
//            .instantiateViewController(identifier: "login"){
//
//            loginVC1
//        }
        
        // loginVC2 는 코드밖에서만 사용 가능 viewController 자기 자신을 화면에 띄운다.
        guard let loginVC =
                self.storyboard?
                .instantiateViewController(identifier: "login") as?
                LiginViewController else{
                return
        }
        
//        self.present(loginVC, animated: true, completion: nil)
        
        self.navigationController?
            .pushViewController(loginVC, animated: true)
        
        
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//    // 첫 번째 화면에서 두번째 화면이 전환될 때,
//    // seque 화면이 전환될 때의 정보
//    override func prepare(for segue: UIStoryboardSegue,
//                          sender: Any?) {
//        
//        
//        // 타입 변환 as로 한다. ! => 실패 안할 때, ? => 실패할 수 있을 때 커버 만약 안될 시 nill이 할당된다.
//        if let vc = segue.destination as? SecondViewController{
//            vc.data = "Hello"
//        }
//    }
//    
    
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

