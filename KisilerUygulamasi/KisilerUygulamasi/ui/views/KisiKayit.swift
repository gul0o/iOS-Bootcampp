//
//  KisiKayit.swift
//  KisilerUygulamasi
//
//  Created by Gülseren Doğrul on 11.10.2023.
//

import UIKit

class KisiKayit: UITableViewController {
    @IBOutlet weak var tfKisiTel: UITextField!
    @IBOutlet weak var tfKisiAd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ad = tfKisiAd.text,let tel = tfKisiTel.text {
            kaydet(kisi_ad: ad, kisi_tel: tel)
        }
    }
    
    func kaydet(kisi_ad:String,kisi_tel:String){
        print("Kişi Kaydet : \(kisi_ad) - \(kisi_tel)")
    }
    
    
    
    
}
