//
//  CategoriesViewController.swift
//  NamasteIndiaApp
//
//  Created by Likhitha Maheswari Chebrolu on 10/27/23.
//

import UIKit

class CategoriesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
     
    var name: String?
//
//    var name: String?
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//
//        if let name = name {
//                    helloLBL.text = "Hello, \(name)!!"
//                }
//
//    }

    @IBOutlet weak var helloLBL: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
//    var categories: [Category] = []

       override func viewDidLoad() {
           super.viewDidLoad()

           // Assuming you have set the delegate and dataSource in the storyboard or programmatically
           collectionView.delegate = self
           collectionView.dataSource = self
           
           // Register the CategoryCell class for the "categoryCell" identifier
           collectionView.register(CategoryCell.self, forCellWithReuseIdentifier: "categoryCell")

           // Load categories
           //categories = loadCategories()
           
         
       }

//       func loadCategories() -> [Category] {
//           return [
//               Category(name: "Cuisines", imageName: "cuisine"),
//               Category(name: "Groceries", imageName: "groceries"),
//               Category(name: "Vegetables", imageName: "vegetables")
//           ]
//       }

       // MARK: - UICollectionViewDataSource

       func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return categories.count
       }

       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCell

           // Configure the cell using the CategoryCell's configure method
           let category = categories[indexPath.item]
           cell.configure(with: category)

           return cell
       }

       // MARK: - UICollectionViewDelegate

       func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
           // Handle selection, perform segue, or navigate to the next screen
           let selectedCategory = categories[indexPath.item]
           let subcategories = getSubcategories(for: selectedCategory.name)
           performSegue(withIdentifier: "subcategoriesSegue", sender: (selectedCategory, subcategories))
       }

       // MARK: - Navigation

       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "subcategoriesSegue" {
               if let subcategoriesViewController = segue.destination as? ItemsViewController,
                   let (selectedCategory, subcategories) = sender as? (Category, [String]) {
                   subcategoriesViewController.category = selectedCategory
                   subcategoriesViewController.subcategories = subcategories
               }
           }
       }

       // Helper function to get subcategories for a given category
       func getSubcategories(for category: String) -> [String] {
           // Replace this with your actual logic to get subcategories
           switch category {
           case "Cuisines":
               return ["Italian", "Mexican", "Chinese"]
           case "Groceries":
               return ["Bakery", "Dairy", "Produce"]
           case "Vegetables":
               return ["Leafy Greens", "Root Vegetables", "Cruciferous Vegetables"]
           default:
               return []
           }
       }
}
