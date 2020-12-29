//
//  Page.swift
//  Reader
//
//  Created by studpc on 29/12/2020.
//  Copyright © 2020 studpc. All rights reserved.
//
import UIKit
import Foundation

class Page {
    var number: Int
    var image: UIImage
    
    init(image: UIImage, number: Int) {
        self.image = image
        self.number = number
    }
}
