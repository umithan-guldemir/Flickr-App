//
//  PhotoDetailViewController.swift
//  Flickr App
//
//  Created by Umithan  on 29.07.2022.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
    var photo: PhotoElement?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ownerImageView: UIImageView!
    @IBOutlet weak var ownerNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        title = photo?.title
        ownerNameLabel?.text = photo?.ownername
        descriptionLabel?.text = photo?.photoDescription?.content
        
        ownerImageView.layer.cornerRadius = 24.0
        
        NetworkManager.shared.fetchImage(with: photo?.buddyIconUrl) { data in
            self.ownerImageView.image = UIImage(data: data)
        }
    

        
        NetworkManager.shared.fetchImage(with: photo?.urlN) { data in
            self.imageView.image = UIImage(data: data)
        }
    }
    


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
