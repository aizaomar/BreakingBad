//
//  CharacterCell.swift
//  BreakingBad
//
//  Created by Aiza on 25.09.2021.
//

import UIKit

class CharacterCell: UITableViewCell {
    
    @IBOutlet var characterNameLabel: UILabel!
    @IBOutlet var characterImageView: UIImageView! {
        didSet {
            characterImageView.layer.cornerRadius = characterImageView.frame.height / 2
        }
    }
    
    func configure(with character: Character) {
        characterNameLabel.text = character.name
        DispatchQueue.global().async {
            guard let url = URL(string: character.img ) else { return }
            guard let imageData = try? Data(contentsOf: url) else { return }
            DispatchQueue.main.async {
                self.characterImageView.image = UIImage(data: imageData)
            }
        }
    }
}
