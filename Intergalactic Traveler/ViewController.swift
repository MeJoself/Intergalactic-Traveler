//
//  ViewController.swift
//  Intergalactic Traveler
//
//  Created by Jose Faustino on 3/7/22.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       assignbackground()
    }
    
    override func prepare(for segue:
                          UIStoryboardSegue, sender: Any?)
    
    {
        let nvc = segue.destination as! StarViewController
        
        let redArray = ["Red Star ", "Hot Sun", "Red sun at a distance"]
        let blueArray = ["Blue Star", "Blue Sun", "Glowing Sun"]
        
        let randomNumber = Int.random(in: 0...2)
        
        if segue.identifier == "blueSegway"
        {
            nvc.starName = blueArray[randomNumber]
        }
            else
                
           {
                nvc.starName = redArray[randomNumber]
            }
            
        
            
    }
    
    
    func assignbackground()
    {
        let background = UIImage(named: "Space Pic")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =
        UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }

}

