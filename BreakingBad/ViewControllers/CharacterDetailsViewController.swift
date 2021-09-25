//
//  CharacterDetailsViewController.swift
//  BreakingBad
//
//  Created by Aiza on 25.09.2021.
//

import UIKit

class CharacterDetailsViewController: UIViewController {
    
    @IBOutlet var characterImageView: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    
    var character: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = character.name
        descriptionLabel.text = character.description
        DispatchQueue.global().async {
            guard let url = URL(string: self.character.img ) else { return }
            guard let imageData = try? Data(contentsOf: url) else { return }
            DispatchQueue.main.async {
                self.characterImageView.image = UIImage(data: imageData)
            }
        }
    }
}
