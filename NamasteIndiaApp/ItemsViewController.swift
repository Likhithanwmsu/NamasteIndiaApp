//
//  ItemsViewController.swift
//  NamasteIndiaApp
//
//  Created by Likhitha Maheswari Chebrolu on 10/27/23.
//

import UIKit

class ItemsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    var category: Category?
    var subcategories: [String] = []

        init(subcategories: [String]) {
            self.subcategories = subcategories
            super.init(nibName: nil, bundle: nil)
        }


    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
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
