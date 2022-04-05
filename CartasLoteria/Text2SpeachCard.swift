//
//  Text2SpeachCard.swift
//  CartasLoteria
//
//  Created by TheLupillo on 5/25/20.
//  Copyright © 2020 TheLupillo. All rights reserved.
//

import Foundation
import AVFoundation

class Text2SpeachCard {
    class func speak(card: Card) {
        let utterance = AVSpeechUtterance(string: card.name)
        utterance.voice = AVSpeechSynthesisVoice(language: "es-MX")

        let synth = AVSpeechSynthesizer()
        synth.speak(utterance)
    }
}
