//
//  MainVC.swift
//  EmojiDictionaryNick
//
//  Created by Mac User on 4/14/19.
//  Copyright © 2019 Hammerhead96. All rights reserved.
//

import UIKit
import AVFoundation

class MainVC: UITableViewController {
    var emojis : [Emoji] = []
    var player = AVAudioPlayer()
    let pagePath = Bundle.main.path(forResource:"toEmoji", ofType: "mp3")

    override func viewDidLoad() {
        super.viewDidLoad()
       emojis = createEmojis()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = emojis[indexPath.row].image
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: pagePath!))
        } catch {
            print("crap for page turning")
        }
        player.play()
        performSegue(withIdentifier: "ToDetail", sender: emoji)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let emojiDefVC = segue.destination as? DetailVC {
            if let emoji = sender as? Emoji {
                emojiDefVC.emoji = emoji
            }
            //emojiDefVC.emoji = sender as!
        }
    }
    func createEmojis() -> [Emoji] {
        let 😍 = Emoji(image: "😍", def: "Heart eyes grin.", category: Emoji.Category.one.rawValue)
        let 😁 = Emoji(image: "😁", def: "Cheesy grin.", category: Emoji.Category.one.rawValue)
        let 🤪 = Emoji(image: "🤪", def: "Goofy face.", category: Emoji.Category.one.rawValue)
        let 😎 = Emoji(image: "😎", def: "Cool in sunglasses.", category: Emoji.Category.one.rawValue)
        let 🤑 = Emoji(image: "🤑", def: "Money-Mouth face.", category: Emoji.Category.one.rawValue)
        let 👽 = Emoji(image: "👽", def: "A grinning Grey.", category: Emoji.Category.one.rawValue)
        let 😤 = Emoji(image: "😤", def: "Huffing with anger.", category: Emoji.Category.one.rawValue)
        let 😻 = Emoji(image: "😻", def: "Kitty heart eyes.", category: Emoji.Category.one.rawValue)
        let 💩 = Emoji(image: "💩", def: "Happy poop!", category: Emoji.Category.one.rawValue)
        let 🤮 = Emoji(image: "🤮", def: "Vomitting face.", category: Emoji.Category.one.rawValue)
        let 🤡 = Emoji(image: "🤡", def: "Clown face.", category: Emoji.Category.one.rawValue)
        let 🏎 = Emoji(image: "🏎", def: "Swift Indy car.", category: Emoji.Category.two.rawValue)
        let 🚔 = Emoji(image: "🚔", def: "Da Police, Yo!", category: Emoji.Category.two.rawValue)
        let 🐼 = Emoji(image: "🐼", def: "Panda Face.", category: Emoji.Category.three.rawValue)
        let 🧀 = Emoji(image: "🧀", def: "Cheese Wedge", category: Emoji.Category.four.rawValue)
        let 🤺 = Emoji(image: "🤺", def: "Fencer", category: Emoji.Category.five.rawValue)
        return [😍, 😁, 🤪, 😎, 🤑, 👽, 😤, 😻, 💩, 🤮, 🤡, 🏎, 🚔, 🐼, 🧀, 🤺]
//        let 😍 = Emoji()
//        😍.image = "😍"; 😍.def = "Heart eyes grin."; 😍.category = Emoji.Category.one.rawValue
//        let 😁 = Emoji()
//        😁.image = "😁"; 😁.def = "Cheesy grin."; 😁.category = Emoji.Category.one.rawValue
//        let 🤪 = Emoji()
//        🤪.image = "🤪"; 🤪.def = "Goofy face." ; 🤪.category = Emoji.Category.one.rawValue
//        let 😎 = Emoji()
//        😎.image = "😎"; 😎.def = "Cool in sunglasses."; 😎.category = Emoji.Category.one.rawValue
//        let 🤑 = Emoji()
//        🤑.image = "🤑"; 🤑.def = "Money-Mouth face."; 🤑.category = Emoji.Category.one.rawValue
//        let 👽 = Emoji()
//        👽.image = "👽"; 👽.def = "A grinning Grey."; 👽.category = Emoji.Category.one.rawValue
//        let 😤 = Emoji()
//        😤.image = "😤"; 😤.def = "Huffing with anger."; 😤.category = Emoji.Category.one.rawValue
//        let 😻 = Emoji()
//        😻.image = "😻"; 😻.def = "Kitty heart eyes."; 😻.category = Emoji.Category.one.rawValue
//        let 💩 = Emoji()
//        💩.image = "💩"; 💩.def = "Happy poop!"; 💩.category = Emoji.Category.one.rawValue
//        let 🤮 = Emoji()
//        🤮.image = "🤮"; 🤮.def = "Vomitting face."; 🤮.category = Emoji.Category.one.rawValue
//        let 🤡 = Emoji()
//        🤡.image = "🤡"; 🤡.def = "Clown face."; 🤡.category = Emoji.Category.one.rawValue
//        let 🏎 = Emoji()
//        🏎.image = "🏎"; 🏎.def = "Swift Indy car."; 🏎.category = Emoji.Category.two.rawValue
//        let 🚔 = Emoji()
//        🚔.image = "🚔"; 🚔.def = "Da Police, Yo!"; 🚔.category = Emoji.Category.two.rawValue
//        let 🐼 = Emoji()
//        🐼.image = "🐼"; 🐼.def = "Panda Face."; 🐼.category = Emoji.Category.three.rawValue
//        let 🧀 = Emoji()
//        🧀.image = "🧀"; 🧀.def = "Cheese Wedge"; 🧀.category = Emoji.Category.four.rawValue
//        let 🤺 = Emoji()
//        🤺.image = "🤺"; 🤺.def = "Fencer"; 🤺.category = Emoji.Category.five.rawValue
//        return [😍, 😁, 🤪, 😎, 🤑, 👽, 😤, 😻, 💩, 🤮, 🤡, 🏎, 🚔, 🐼, 🧀, 🤺]
    }
}
