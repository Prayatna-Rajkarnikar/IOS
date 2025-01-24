//
//  SecondVC.swift
//  Coursework
//
//  Created by Student on 03/12/2024.
//

import UIKit

class SecondVC: UIViewController {
    @IBOutlet weak var homeOneImg: UIImageView!
    @IBOutlet weak var homeTwoImg: UIImageView!
    @IBOutlet weak var homeThreeImg: UIImageView!
    @IBOutlet weak var homeFourImg: UIImageView!
    @IBOutlet weak var homeFiveImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let images = [homeOneImg, homeTwoImg, homeThreeImg, homeFourImg, homeFiveImg]
        for image in images {
            image?.layer.cornerRadius = 20
            image?.clipsToBounds = true
        }
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
