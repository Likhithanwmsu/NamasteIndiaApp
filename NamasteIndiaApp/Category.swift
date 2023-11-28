//
//  Category.swift
//  NamasteIndiaApp
//
//  Created by Likhitha Maheswari Chebrolu on 23/11/23.
//

import Foundation
import UIKit

struct Category {
    var name: String
    var imageName: UIImage?
}

let categories: [Category] = [
    Category(name: "Cuisines", imageName: UIImage(named: "cuisine")),
    Category(name: "Groceries", imageName: UIImage(named: "groceries")),
    Category(name: "Vegetables", imageName: UIImage(named: "vegetables"))]
