//
//  MarvelCharacterTableViewController.swift
//  TableViewTutorial
//
//  Created by Renan Diniz on 06/03/20.
//  Copyright © 2020 RMD Goup. All rights reserved.
//

import UIKit

class MarvelCharacters {
    var name: String?
    var description: String?
    var profilePicture: UIImage?
    
    init(characterName: String, characterDescription: String, characterProfilePicture: UIImage?) {
        name = characterName
        description = characterDescription
        profilePicture = characterProfilePicture
    }
}

class MarvelCharacterTableViewController: UITableViewController {
    
    @IBOutlet var tableViewCharacters: UITableView!
    
    
    var characterArray = [MarvelCharacters]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let spiderman = MarvelCharacters(characterName: "Spider-Man", characterDescription: "Known as the wallcrawler for a reason—his hands and feet allow him to climb vertically and upside down, and his speed, superhuman strength, and leaping ability make him the most agile Super Hero around.", characterProfilePicture: UIImage(named: "Spider-Man"))
        characterArray.append(spiderman)
        
        let venom = MarvelCharacters(characterName: "Venom", characterDescription: "A sentient alien Symbiote with an amorphous, liquid-like form, who survives by bonding with a host, usually human. The Symbiote went on to merge with other hosts, most notably Eddie Brock, its second and most infamous host, with whom it first became Venom and one of Spider-Man's archenemies.", characterProfilePicture: UIImage(named: "Venom"))
        characterArray.append(venom)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return characterArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCharacter")
        
        cell?.textLabel?.text = characterArray[indexPath.row].name
        cell?.imageView?.image = characterArray[indexPath.row].profilePicture
        
        return cell!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailCharacterViewController {
            destination.character = characterArray[(tableViewCharacters.indexPathForSelectedRow?.row)!]
        }
    }
    
}
