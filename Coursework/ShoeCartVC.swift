//
//  ShoeCartVC.swift
//  Coursework
//
//  Created by Student on 26/01/2025.
//

import UIKit

class ShoeCartVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkoutBtn(_ sender: Any) {
        let button = self.storyboard?.instantiateViewController(withIdentifier: "CheckoutVC") as! CheckoutVC
        navigationController?.pushViewController(button, animated: true)
    }
    
   
    @IBAction func backBtn(_ sender: Any) {
        let button = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
        navigationController?.pushViewController(button, animated: true)
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
