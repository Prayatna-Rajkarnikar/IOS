//
//  ContactVC.swift
//  Coursework
//
//  Created by Student on 27/01/2025.
//

import UIKit

class ContactVC: UIViewController {

    @IBOutlet weak var infoView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        infoView.layer.cornerRadius = 12
        infoView.layer.masksToBounds = true
    }
    
    @IBAction func viewMoreBtn(_ sender: Any) {
        let button = self.storyboard?.instantiateViewController(withIdentifier: "AboutUsVC") as! AboutUsVC
        navigationController?.pushViewController(button, animated: true)
    }
    
    @IBAction func sendBtn(_ sender: Any) {
        let button = self.storyboard?.instantiateViewController(withIdentifier: "BottomNavVC") as! BottomNavVC
        navigationController?.pushViewController(button, animated: true)
        
        showAlert(message: "Form submission successful!")
    }
    
    // Helper function to display alerts
    func showAlert(message: String) {
        let alertController = UIAlertController(title: "Successful", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alertController, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
