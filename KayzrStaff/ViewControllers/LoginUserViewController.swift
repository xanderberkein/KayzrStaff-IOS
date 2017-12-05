import UIKit
import KayzrStaff_Shared
class LoginUserViewController : UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var user : User = User(userId: 0, username: "", fullname: "", password: "", phonenumber: "", role: .Mod)
    
    @IBAction func logUserIn() {
        if (usernameField.text == "admin"  && passwordField.text == "admin") ||
            (usernameField.text == "root"  && passwordField.text == "") {
            user = User(userId: 1, username: usernameField.text!, fullname: "admin mafken", password: passwordField.text! , phonenumber: "0471333333", role: .Admin)
        }
    }
    
    @IBAction func moveFocusToPassword() {
        usernameField.resignFirstResponder()
        passwordField.becomeFirstResponder()
    }
    
    override func viewDidLoad() {
        usernameField.becomeFirstResponder()
        loginButton.layer.cornerRadius = 5
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "MainAppSegue" else {
            fatalError("Unknown Segue")
        }
        
        //let destination = segue.destination as! HomeViewController
        //destination.user = user
    }
    
    
}

