//
//  DetailCharacterViewController.swift
//  TableViewTutorial
//
//  Created by Renan Diniz on 06/03/20.
//  Copyright © 2020 RMD Goup. All rights reserved.
//

import Foundation
import UIKit

class DetailCharacterViewController: UIViewController {
    
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var characaterName: UILabel!
    @IBOutlet weak var characterDescription: UILabel!
    
    var character: MarvelCharacters?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //cell?.textLabel?.text = characterArray[indexPath.row].name
        //cell?.imageView?.image = characterArray[indexPath.row].profilePicture
        characterImage.image = character?.profilePicture
        characaterName.text = character?.name
        characterDescription.text = character?.description
    }
}
