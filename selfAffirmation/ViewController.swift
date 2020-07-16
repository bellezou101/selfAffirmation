//
//  ViewController.swift
//  selfAffirmation
//
//  Created by Belle  Zou  on 7/14/20.
//  Copyright © 2020 Belle  Zou . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var imageView: UIImageView!
    //var images = [self.imageView, self.imageViewTwo, self.imageViewThree]
    override func viewDidLoad() {
        super.viewDidLoad()

                  }
       
    override func viewWillAppear(_ animated: Bool) {
        imageView.isHidden = false
        
    }
   

       var count = 1
   
    @IBAction func buttonTapped(_ sender: Any) {
        imageView.isHidden = false
        //var imageName = affirmations[Int.random(in:0...2)]
        imageView.image = UIImage(named:affirmations[count%19])
        count = count+1
    }
    

       
    
var affirmations = ["imageOne.png", "imageTwo.png", "imageThree.png", "ImageFour.png", "ImageFive.png", "ImageSix.png", "ImageSeven.png", "ImageEight.png", "ImageNine.png", "ImageTen.png", "ImageEleven.png", "ImageTwelve.png", "ImageThirteen.png", "ImageFourteen.png", "ImageFifteen.png", "ImageSixteen.png", "ImageSeventeen.png", "ImageEighteen.png", "ImageNineteen.png"]
    
func pickAffirmation() -> String {
    let random = Int.random(in: 1..<20)
    let affirmation = affirmations[random] // note about how this work below!
    return affirmation
    

let randomAffirmation = pickAffirmation()
print(randomAffirmation)

}
}


