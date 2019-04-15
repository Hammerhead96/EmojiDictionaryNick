//
//  DetailVC.swift
//  EmojiDictionaryNick
//
//  Created by Mac User on 4/14/19.
//  Copyright © 2019 Hammerhead96. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var emojiLbl: UILabel!
    
    @IBOutlet weak var emojiDef: UILabel!
    
    var emoji = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLbl.text = emoji
        // "😍", "😁", "🤪", "😎", "🤑", "👽", "😤", "😻", "💩", "🤮", "🤡", "🏎", "🚔"
        switch emoji {
        case "😍": emojiDef.text = "Love eyes grin."
        case "😁": emojiDef.text = "Cheesy grin."
        case "🤪": emojiDef.text = "Tilted googley eyes and tongue."
        case "😎": emojiDef.text = "Cool in sunglasses."
        case "🤑": emojiDef.text = "The tongue is money!"
        case "👽": emojiDef.text = "A grinning Grey."
        case "😤": emojiDef.text = "So pissed!"
        case "😻": emojiDef.text = "Kitty heart eyes."
        case "💩": emojiDef.text = "Happy poo!"
        case "🤮": emojiDef.text = "Projectile vomit."
        case "🤡": emojiDef.text = "A Clown."
        case "🏎": emojiDef.text = "Swift Indy car."
        case "🚔": emojiDef.text = "Da Police, Yo!"
        default: print("There has been an error!")
        }
    }

}
