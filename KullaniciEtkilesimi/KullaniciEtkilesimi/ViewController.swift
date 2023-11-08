//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by Gülseren Doğrul on 9.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){ _ in
            print("İptal Seçildi")
            
        }
        alert.addAction(iptalAction)
       
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){ _ in
            print("Tamam Seçildi")
            
        }
        alert.addAction(tamamAction)
        
        self.present(alert, animated: true)
    }
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){ _ in
            print("İptal Seçildi")
            
        }
        alert.addAction(iptalAction)
       
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){ _ in
            print("Tamam Seçildi")
            
        }
        alert.addAction(tamamAction)
        
        self.present(alert, animated: true)
    }
    
    @IBAction func buttonOzelAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Sistem Griş", message: "Mailinizi ve şifrenizi giriniz.", preferredStyle: .alert)
        
        alert.addTextField { textField in
            textField.placeholder = "E-mail"
            textField.keyboardType = .emailAddress
        }
        alert.addTextField { textField in
            textField.placeholder = "Şifre"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
        }
        
        let girisAction = UIAlertAction(title: "Giriş", style: .cancel){ _ in
            
        }
        alert.addAction(girisAction)
        
        self.present(alert, animated: true)
        
    }
}

