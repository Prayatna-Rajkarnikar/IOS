//
//  ReviewVC.swift
//  Coursework
//
//  Created by Student on 27/01/2025.
//

import UIKit

class ReviewVC: UIViewController {


    @IBOutlet weak var card3: UIView!
    @IBOutlet weak var card2: UIView!
    @IBOutlet weak var card1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let cards = [card1, card2, card3]
        for card in cards {
            card?.layer.cornerRadius = 12
            card?.clipsToBounds = true
        }    }
    

    @IBAction func sendBtn(_ sender: Any) {
        let button = self.storyboard?.instantiateViewController(withIdentifier: "ReviewVC") as! ReviewVC
        navigationController?.pushViewController(button, animated: true)
        
        showAlert(message: "Message sent successful")
    }
    
    @IBAction func backBtn(_ sender: Any) {
        let button = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
        navigationController?.pushViewController(button, animated: true)
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
