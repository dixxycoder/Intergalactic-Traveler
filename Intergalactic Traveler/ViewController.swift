//
//  ViewController.swift
//  Intergalactic Traveler
//
//  Created by Grant Spraker on 10/18/21.
//

import UIKit

// Button Corner Radius and Border code from StackOverflow.com

@IBDesignable extension UIButton
{

    @IBInspectable var borderWidth: CGFloat
    {
        set
        {
            layer.borderWidth = newValue
        }
        get
        {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat
    {
        set
        {
            layer.cornerRadius = newValue
        }
        get
        {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor?
    {
        set
        {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get
        {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

class ViewController: UIViewController
{

    
    override func viewDidLoad()
    {
              super.viewDidLoad()
                 assignbackground()
        
        // From StackOverflow.com (for the background)
        func assignbackground()
      {
          let background = UIImage(named: "Space-Bg")

          var imageView : UIImageView!
              imageView = UIImageView(frame: view.bounds)
          imageView.contentMode =  UIView.ContentMode.scaleAspectFill
              imageView.clipsToBounds = true
              imageView.image = background
              imageView.center = view.center
              view.addSubview(imageView)
              self.view.sendSubviewToBack(imageView)
          
//              let randomNumber = Int.random(in: 1...3)
//              starImageView.image = UIImage(named: "\(starName)\(randomNumber)")
      }
    }

      
    

}
    

