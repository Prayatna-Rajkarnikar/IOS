//
//  DetailVC.swift
//  Coursework
//
//  Created by Student on 24/01/2025.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var detailTwoImg: UIImageView!
    @IBOutlet weak var detailThreeImg: UIImageView!
    @IBOutlet weak var detailOneImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let images = [detailOneImg, detailTwoImg, detailThreeImg]
        for image in images {
            image?.layer.cornerRadius = 10
            image?.clipsToBounds = true
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cartBtn(_ sender: Any) {
        let cart = self.storyboard?.instantiateViewController(withIdentifier: "ShoeCartVC") as! ShoeCartVC
        navigationController?.pushViewController(cart, animated: true)
        
    }
    
    @IBAction func backBtn(_ sender: Any) {
        let button = self.storyboard?.instantiateViewController(withIdentifier: "BottomNavVC") as! BottomNavVC
        navigationController?.pushViewController(button, animated: true)
    }
    
    
    @IBAction func reviewBtn(_ sender: Any) {
        let button = self.storyboard?.instantiateViewController(withIdentifier: "ReviewVC") as! ReviewVC
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
