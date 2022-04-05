//
//  ViewController.swift
//  CartasLoteria
//
//  Created by TheLupillo on 5/18/20.
//  Copyright © 2020 TheLupillo. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

class CardsViewController: UIViewController {
        
    @IBOutlet weak var resetButton: UIBarButtonItem!
    
    @IBOutlet weak var numbersCardsStackView: UIStackView!
    
    @IBOutlet weak var lastCardLabel: UILabel!
    @IBOutlet weak var counterCardLabel: UILabel!
    @IBOutlet weak var totalCardsLabel: UILabel!
    
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var cardNameLabel: UILabel!
    @IBOutlet weak var cardNumberLabel: UILabel!
    @IBOutlet weak var instructionsLabel: UILabel!
    
    let loteriaGame: LoteriaCards = LoteriaCards()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalCardsLabel.text = (loteriaGame.getTotalCards() - 1).description
        resetButtonOnClick(resetButton)
    }
    
    func updateViewCard(card: Card) {
        if UserDefaults.standard.bool(forKey: "TextToSpeachOption") {
            Text2SpeachCard.speak(card: loteriaGame.getDefaultCard())
        }
        
        cardImage.image = UIImage(named: card.image)
        cardNameLabel.text = card.name
        cardNumberLabel.text = card.number.description
        
        lastCardLabel.text = loteriaGame.getLastCard().number.description
        counterCardLabel.text = loteriaGame.getLastCardCounter().description
    }

    @IBAction func resetButtonOnClick(_ sender: UIBarButtonItem) {
        resetButton.isEnabled = false
        cardNameLabel.isHidden = true
        cardNumberLabel.isHidden = true
        numbersCardsStackView.isHidden = true
        instructionsLabel.isHidden = false
        
        updateViewCard(card: loteriaGame.getDefaultCard())
        loteriaGame.reset()
    }
    
    @IBAction func nextCardSwipe(_ sender: UISwipeGestureRecognizer) {
        if loteriaGame.getLastCard().number == 0 {
            resetButton.isEnabled = true
            cardNameLabel.isHidden = false
            cardNumberLabel.isHidden = false
            numbersCardsStackView.isHidden = false
            instructionsLabel.isHidden = true
        }
        
        updateViewCard(card: loteriaGame.getNextCard())
    }
    
    @IBAction func previousCardSwipe(_ sender: UISwipeGestureRecognizer) {
        updateViewCard(card: loteriaGame.getPreviousCard())
    }
    
}

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var textToSpeachSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textToSpeachSwitch.isOn = UserDefaults.standard.bool(forKey: "TextToSpeachOption")
    }
    
    @IBAction func textToSpeachSwitchChanged(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "TextToSpeachOption")
    }
}

