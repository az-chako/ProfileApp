//
//  HobbyViewController.swift
//  ProfileApp
//
//  Created by spark-03 on 2024/05/17.
//

import UIKit

class HobbyViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previewButton: UIButton!
    
    let photos = ["hobby_mainphoto01","hobby_mainphoto02","hobby_mainphoto03"]
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updatePhotoDisplay()
    }
    
    @IBAction func nextButtonTapped(_ sender: Any){
        currentIndex = (currentIndex + 1) % photos.count
        updatePhotoDisplay(isNext:true)
    }
    
    @IBAction func previewButtonTapped(_ sender: Any){
        currentIndex = (currentIndex == 0) ? photos.count - 1 : currentIndex - 1
        updatePhotoDisplay(isNext:false)
    }
    
    
    func updatePhotoDisplay(isNext: Bool = true) {
            photoImageView.image = UIImage(named: photos[currentIndex])
            
            let transition = CATransition()
            transition.type = .push
            
            transition.subtype = isNext ? .fromRight : .fromLeft
            
            transition.duration = 0.3
            photoImageView.layer.add(transition, forKey: nil)
    }
}

