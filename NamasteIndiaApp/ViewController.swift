//
//  ViewController.swift
//  NamasteIndiaApp
//
//  Created by Likhitha Maheswari Chebrolu on 10/27/23.
//

import UIKit

class ViewController: UIViewController {

    var enteredName: String?
    
    @IBOutlet weak var userNameOL: UITextField!
    
    
    
    @IBOutlet weak var entryOL: UIButton!
    
    
  
    @IBAction func entryBTN(_ sender: UIButton) {
        
        if let name = userNameOL.text {
                    enteredName = name
                    performSegue(withIdentifier: "CategoriesSegue", sender: self)
                }
        
    }
    
    
    @IBAction func userNameTXT(_ sender: UITextField) {
        let username = userNameOL.text!
        
        if username.isEmpty{
            entryOL.isEnabled = false
        }else{
            entryOL.isEnabled = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        entryOL.isEnabled = false

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "CategoriesSegue" {
               if let CategoriesViewController = segue.destination as? CategoriesViewController {
                   CategoriesViewController.name = enteredName
               }
           }
       }

}

