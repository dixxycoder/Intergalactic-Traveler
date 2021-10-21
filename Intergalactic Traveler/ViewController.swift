//
//  ViewController.swift
//  Intergalactic Traveler
//
//  Created by Grant Spraker on 10/20/21.
//

import UIKit

class ViewController: UIViewController
{

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        assignbackground()
        
       
    }
    
    func assignbackground(){
            let background = UIImage(named: "Space-Bg")

            var imageView : UIImageView!
            imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = background
            imageView.center = view.center
            view.addSubview(imageView)
            self.view.sendSubviewToBack(imageView)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let nextViewController = segue.destination as! StarController
        
        let randomNumber = Int.random(in: 1...3)
        
        
        if segue.identifier == "redDwarf"
        {
            nextViewController.starName = "redDwarf\(randomNumber)"
        }
        else
        {
            nextViewController.starName = "blueDwarf\(randomNumber)"
        }
    }
   

}
