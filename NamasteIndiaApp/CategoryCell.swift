//
//  CategoryCell.swift
//  NamasteIndiaApp
//
//  Created by Likhitha Maheswari Chebrolu on 23/11/23.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
//    func configure(with category: Category) {
////            guard !category.imageName.isEmpty else {
//////                imageView.image = UIImage(named: "defaultImage")
////                return
////            }
//
////            if let image = UIImage(named: category.imageName) {
////                // Set the image
////                imageView.image = UIImage(named: image)
//           // }
//
//        //print(Category)
//        print(category.imageName)
//        imageView.image = category.imageName
//
//        }
    
    func configure(with category: Category) {
        if let image = category.imageName {
            // Set the image if it's not nil
          //  imageView.image = image
        }
        
    }
    
}
