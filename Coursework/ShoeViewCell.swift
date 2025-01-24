//
//
//
//
//  Created by Student on 19/01/2025.
//

import UIKit

class ShoeViewCell: UICollectionViewCell {
    
    @IBOutlet weak var MedicineImage: UIImageView!
    
    @IBOutlet weak var MedicineName: UILabel!
    
    @IBOutlet weak var MedicinePrice: UILabel!
    
    
    func setupData(image: UIImage?, name: String?, price: String?){
        
        self.MedicineImage.image = image
        
        self.MedicineName.text = name
        
        self.MedicinePrice.text = price
    }
}
