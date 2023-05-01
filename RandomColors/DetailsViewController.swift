//
//  DetailsViewController.swift
//  RandomColors
//
//  Created by Kresimir Ivanjko on 22.02.2023..
//

import UIKit

class DetailsViewController: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue

        
    }
 
}
