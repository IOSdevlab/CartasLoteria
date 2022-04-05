//
//  InterfaceController.swift
//  CartasLoteriaWatch Extension
//
//  Created by user171889 on 5/25/20.
//  Copyright © 2020 TheLupillo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var resetButton: WKInterfaceButton!
    
    @IBOutlet weak var numCardLabel: WKInterfaceLabel!
    @IBOutlet weak var cardImage: WKInterfaceImage!
    @IBOutlet weak var cardNameLabel: WKInterfaceLabel!
    
    @IBOutlet weak var bottomGroup: WKInterfaceGroup!
    @IBOutlet weak var lastCardNumLabel: WKInterfaceLabel!
    @IBOutlet weak var counterCardLabel: WKInterfaceLabel!
    @IBOutlet weak var totalCardsLabel: WKInterfaceLabel!
    
    @IBOutlet weak var instructionsLabel: WKInterfaceLabel!
    
    @IBOutlet weak var creditsLabel: WKInterfaceLabel!
    
    let loteriaGame: LoteriaCards = LoteriaCards()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        totalCardsLabel.setText((loteriaGame.getTotalCards() - 1).description)
        resetButtonOnClick()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func updateViewCard(card: Card) {
        numCardLabel.setText(card.number.description)
        cardImage.setImage(UIImage(named: card.image))
        cardNameLabel.setText(card.name)
        lastCardNumLabel.setText(loteriaGame.getLastCard().number.description)
        counterCardLabel.setText(loteriaGame.getLastCardCounter().description)
    }
    
    @IBAction func resetButtonOnClick() {
        resetButton.setHidden(true)
        cardNameLabel.setHidden(true)
        numCardLabel.setHidden(true)
        bottomGroup.setHidden(true)
        instructionsLabel.setHidden(false)
        creditsLabel.setHidden(false)
        
        loteriaGame.reset()
        updateViewCard(card: loteriaGame.getDefaultCard())
    }
    
    @IBAction func nextSwipeGesture(_ sender: Any) {
        if loteriaGame.getLastCard().number == 0 {
            resetButton.setHidden(false)
            cardNameLabel.setHidden(false)
            numCardLabel.setHidden(false)
            bottomGroup.setHidden(false)
            instructionsLabel.setHidden(true)
            creditsLabel.setHidden(true)
        }
        updateViewCard(card: loteriaGame.getNextCard())
    }
    @IBAction func previousSwipeGesture(_ sender: Any) {
        updateViewCard(card: loteriaGame.getPreviousCard())
    }
    
}
