//
//  DetailVC.swift
//  EmojiDictionaryNick
//
//  Created by Mac User on 4/14/19.
//  Copyright © 2019 Hammerhead96. All rights reserved.
//

import UIKit
import AVFoundation

class DetailVC: UIViewController {
    var player = AVAudioPlayer()
    let backPath = Bundle.main.path(forResource:"return", ofType: "mp3")
    @IBOutlet weak var emojiLbl: UILabel!
    @IBOutlet weak var emojiCategory: UILabel!
    @IBOutlet weak var emojiDef: UILabel!
    var previousVC = MainVC()
    var emoji = Emoji(image: "", def: "", category: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        let myBackButton = UIBarButtonItem(title: "back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(DetailVC.back(sender:)))
        self.navigationItem.leftBarButtonItem = myBackButton
        emojiLbl.text = emoji.image
        emojiCategory.text = emoji.category
        emojiDef.text = emoji.def
    }
    
    @objc func back(sender: UIBarButtonItem) {
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: backPath!))
        } catch {
            print("crap for page turning")
        }
        player.play()
        _ = navigationController?.popViewController(animated: true)
    }

}
