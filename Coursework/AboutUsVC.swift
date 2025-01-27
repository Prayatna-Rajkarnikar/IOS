//
//  AboutUsVC.swift
//  Coursework
//
//  Created by Student on 27/01/2025.
//

import UIKit

class AboutUsVC: UIViewController {

    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let images = [img1, img2, img3]
        for image in images {
            image?.layer.cornerRadius = 20
            image?.clipsToBounds = true
        }    }
    

    @IBAction func backBtn(_ sender: Any) {
        let button = self.storyboard?.instantiateViewController(withIdentifier: "BottomNavVC") as! BottomNavVC
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
