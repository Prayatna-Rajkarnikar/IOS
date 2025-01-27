//
//  CheckoutVC.swift
//  Coursework
//
//  Created by Student on 27/01/2025.
//

import UIKit

class CheckoutVC: UIViewController {


    @IBOutlet weak var paymentOption: UIButton!
    override func viewDidLoad() {
            super.viewDidLoad()

        }
    
    @IBAction func paymentBtn(_ sender: Any) {
        let button = self.storyboard?.instantiateViewController(withIdentifier: "BottomNavVC") as! BottomNavVC
        navigationController?.pushViewController(button, animated: true)
        showAlert(message: "Payment successful!")
    }
    
    @IBAction func backBtn(_ sender: Any) {
        let button = self.storyboard?.instantiateViewController(withIdentifier: "ShoeCartVC") as! ShoeCartVC
        navigationController?.pushViewController(button, animated: true)
        

    }
    
    // Helper function to display alerts
    func showAlert(message: String) {
        let alertController = UIAlertController(title: "Checkout", message: message, preferredStyle: .alert)
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
