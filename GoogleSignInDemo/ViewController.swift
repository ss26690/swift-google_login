import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    @IBOutlet weak var gSignInBtn: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        print(GIDSignIn.sharedInstance.hasPreviousSignIn())
        GIDSignIn.sharedInstance.restorePreviousSignIn(callback: {a,b in
            print(a?.profile?.name)
            print(a?.profile?.email)
            print(a?.profile?.givenName)
            print(a?.profile?.familyName)
        })
        
    }
    
    
    @IBAction func gSigninBtn(_ sender: UIButton) {
        GIDSignIn.sharedInstance.signIn(with: GIDConfiguration.init(clientID: "54286744068-7j9a8e3fqda136jro4gtao344rftsij8.apps.googleusercontent.com"), presenting: self, callback: {a,b in
            print(a?.profile?.name)
            print(a?.profile?.email)
            print(a?.profile?.givenName)
            print(a?.profile?.familyName)
            print(a?.profile?.hasImage)
        })
    }
}

