//
//
//
//
//  Created by Student on 19/01/2025.
//

import UIKit

class ShoeViewCell: UICollectionViewCell {
    
   
    @IBOutlet weak var shoeImg: UIImageView!
    @IBOutlet weak var shoePrice: UILabel!
    @IBOutlet weak var shoeName: UILabel!
    
    override func awakeFromNib() {
            super.awakeFromNib()
            
            self.layer.cornerRadius = 20
            self.layer.masksToBounds = true

            shoeImg.layer.cornerRadius = 20
            shoeImg.layer.masksToBounds = true
        }
    
    func setupData(image: UIImage?, name: String?, price: String?){
        
        self.shoeImg.image = image
        
        self.shoeName.text = name
        
        self.shoePrice.text = price
    }
}
