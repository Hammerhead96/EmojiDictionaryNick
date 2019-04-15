//
//  MainVC.swift
//  EmojiDictionaryNick
//
//  Created by Mac User on 4/14/19.
//  Copyright © 2019 Hammerhead96. All rights reserved.
//

import UIKit

class MainVC: UITableViewController {
    var emojis = ["😍", "😁", "🤪", "😎", "🤑", "👽", "😤", "😻", "💩", "🤮"]

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
 

}
