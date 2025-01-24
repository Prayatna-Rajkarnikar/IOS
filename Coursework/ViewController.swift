import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var lognBtn: UIButton!
    
    @IBOutlet weak var loginImg: UIImageView!
    @IBOutlet weak var passwordTxtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginImg.layer.cornerRadius = 20
        loginImg.clipsToBounds = true
    }

    @IBAction func lognBtn(_ sender: Any) {
        
        guard let username = usernameTxtField.text, !username.isEmpty else {
            showAlert(message: "Username cannot be empty.")
            return
        }
        
        guard let password = passwordTxtField.text,!password.isEmpty else {
            showAlert(message: "Password cannot be empty.")
            return
        }
        
        // Check if the entered username and password match
        if username == "user" && password == "password" {
            
            
            
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BottomNavVC") as! BottomNavVC
                            
                            navigationController?.pushViewController(vc, animated: true)
            showAlert(message: "Login successful!")
            
        } else {
            showAlert(message: "Incorrect username or password.")
        }
    }
    
    // Helper function to display alerts
    func showAlert(message: String) {
        let alertController = UIAlertController(title: "Login", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alertController, animated: true)
    }
}
