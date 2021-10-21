//
//  StarController.swift
//  Intergalactic Traveler
//
//  Created by Grant Spraker on 10/20/21.
//

import UIKit

class StarController: UIViewController {
    
    @IBOutlet weak var starImage: UIImageView!
    
    var starName = ""
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        starImage.image = UIImage(named: starName)
        print(starName)
    }
    


}
