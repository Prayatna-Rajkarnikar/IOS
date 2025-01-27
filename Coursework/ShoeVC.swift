//
//  ShoeVC.swift
//  Coursework
//
//  Created by Student on 24/01/2025.
//

import UIKit

class ShoeVC: UIViewController {
    
    
    @IBOutlet weak var Shoe: UICollectionView!

    
    @IBOutlet weak var ShoeCollectionView: UICollectionView!
    override func viewDidLoad() {
            super.viewDidLoad()
            self.CollectionViewSetup()
            // Any additional setup after loading the view.
        }

        func CollectionViewSetup() {
            self.Shoe.delegate = self
            self.Shoe.dataSource = self
            self.Shoe.register(UINib(nibName: "ShoeViewCell", bundle: nil), forCellWithReuseIdentifier: "ShoeViewCell")
            self.Shoe.reloadData()
        }
    }

    extension ShoeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        
        // Number of items in the section (you can replace 5 with dynamic data)
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 5  // Example count, replace with dynamic data source if needed
        }
        
        // Configure and return the cell for each index path
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShoeViewCell", for: indexPath) as! ShoeViewCell
            
            // Configure the cell with data (replace with actual data model as needed)
            // change this method name
            cell.setupData(
                image: UIImage(named: "nike"),
                name: "Air Jordan 1's ",
                price: "Rs. 6500"
            )
            
            return cell
        }
        
        // Set size for each item
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 320, height: 140)
        }
        
        // Handle selection of an item
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let DetailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
            navigationController?.pushViewController(DetailVC, animated: true)
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


