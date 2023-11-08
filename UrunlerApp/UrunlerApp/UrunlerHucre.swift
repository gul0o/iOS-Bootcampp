//
//  UrunlerHucre.swift
//  UrunlerApp
//
//  Created by Gülseren Doğrul on 15.10.2023.
//

import UIKit

protocol HucreProtocol {
    func seepeteEkleTiklandi(indexPath:IndexPath)
}

class UrunlerHucre: UITableViewCell {

    @IBOutlet weak var labelUrunFıyat: UILabel!
    @IBOutlet weak var labelUrunAd: UILabel!
    @IBOutlet weak var imageViewUrun: UIImageView!
    @IBOutlet weak var arkaplan: UIView!
   
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
  
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
   
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.seepeteEkleTiklandi(indexPath: indexPath!)
        
    }
    
}
