//
//  PhotoDetailViewController.swift
//  Flickr App
//
//  Created by Umithan  on 29.07.2022.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ownerImageView: UIImageView!
    @IBOutlet weak var ownerNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "photo detail"
        
        imageView?.backgroundColor = .gray
        ownerImageView?.backgroundColor = .darkGray
        ownerNameLabel?.text = "owner name"
        descriptionLabel?.text = "not a description not a description not a description not a description not a description"
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
