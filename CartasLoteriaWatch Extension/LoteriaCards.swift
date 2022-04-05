//
//  LoteriaCards.swift
//  CartasLoteriaWatch Extension
//
//  Created by user171889 on 5/25/20.
//  Copyright © 2020 TheLupillo. All rights reserved.
//

import Foundation

private var cards: Array<Card> = Array()
private var lastCardPtr: Int = 0
private var variableCardPtr: Int = 0

public class LoteriaCards {
    init() {
        //cards.append(new Card(number: 1, name: <#T##String#>, image: <#T##String#>))
        cards.append(Card(number: 0, name: "", image: "1-el_gallo_WOS"))
        cards.append(Card(number: 1, name: "El Gallo", image: "1-el_gallo_WOS"))
        cards.append(Card(number: 2, name: "El Diablo", image: "2-el_diablo_WOS"))
        cards.append(Card(number: 3, name: "La Dama", image: "3-la_dama_WOS"))
        cards.append(Card(number: 4, name: "El Catrín", image: "4-el_catrin_WOS"))
        cards.append(Card(number: 5, name: "El Paraguas", image: "5-el_paraguas_WOS"))
        cards.append(Card(number: 6, name: "La Sirena", image: "6-la_sirena_WOS"))
        cards.append(Card(number: 7, name: "La Escalera", image: "7-la_escalera_WOS"))
        cards.append(Card(number: 8, name: "La Botella", image: "8-la_botella_WOS"))
        cards.append(Card(number: 9, name: "El Barril", image: "9-el_barril_WOS"))
        cards.append(Card(number: 10, name: "El Árbol", image: "10-el_arbol_WOS"))
        cards.append(Card(number: 11, name: "El Melón", image: "11-el_melon_WOS"))
        cards.append(Card(number: 12, name: "El Valiente", image: "12-el_valiente_WOS"))
        cards.append(Card(number: 13, name: "El Gorrito", image: "13-el_gorrito_WOS"))
        cards.append(Card(number: 14, name: "La Muerte", image: "14-la_muerte_WOS"))
        cards.append(Card(number: 15, name: "La Pera", image: "15-la_pera_WOS"))
        cards.append(Card(number: 16, name: "La Bandera", image: "16-la_bandera_WOS"))
        cards.append(Card(number: 17, name: "El Bandolón", image: "17-el_bandolon_WOS"))
        cards.append(Card(number: 18, name: "El Violoncello", image: "18-el_violoncello_WOS"))
        cards.append(Card(number: 19, name: "La Garza", image: "19-la_garza_WOS"))
        cards.append(Card(number: 20, name: "El Pájaro", image: "20-el_pajaro_WOS"))
        cards.append(Card(number: 21, name: "La Mano", image: "21-la_mano_WOS"))
        cards.append(Card(number: 22, name: "La Bota", image: "22-la_bota_WOS"))
        cards.append(Card(number: 23, name: "La Luna", image: "23-la_luna_WOS"))
        cards.append(Card(number: 24, name: "El Cotorro", image: "24-el_cotorro_WOS"))
        cards.append(Card(number: 25, name: "El Borracho", image: "25-el_borracho_WOS"))
        cards.append(Card(number: 26, name: "El Negrito", image: "26-el_negrito_WOS"))
        cards.append(Card(number: 27, name: "El Corazón", image: "27-el_corazon_WOS"))
        cards.append(Card(number: 28, name: "La Sandía", image: "28-la_sandia_WOS"))
        cards.append(Card(number: 29, name: "El Tambor", image: "29-el_tambor_WOS"))
        cards.append(Card(number: 30, name: "El Camarón", image: "30-el_camaron_WOS"))
        cards.append(Card(number: 31, name: "Las Jaras", image: "31-las_jaras_WOS"))
        cards.append(Card(number: 32, name: "El Músico", image: "32-el_musico_WOS"))
        cards.append(Card(number: 33, name: "La Araña", image: "33-la_araña_WOS"))
        cards.append(Card(number: 34, name: "El Soldado", image: "34-el_soldado_WOS"))
        cards.append(Card(number: 35, name: "La Estrella", image: "35-la_estrella_WOS"))
        cards.append(Card(number: 36, name: "El Cazo", image: "36-el_cazo_WOS"))
        cards.append(Card(number: 37, name: "El Mundo", image: "37-el_mundo_WOS"))
        cards.append(Card(number: 38, name: "El Apache", image: "38-el_apache_WOS"))
        cards.append(Card(number: 39, name: "El Nopal", image: "39-el_nopal_WOS"))
        cards.append(Card(number: 40, name: "El Alacrán", image: "40-el_alacran_WOS"))
        cards.append(Card(number: 41, name: "La Rosa", image: "41-la_rosa_WOS"))
        cards.append(Card(number: 42, name: "La Calavera", image: "42-la_calavera_WOS"))
        cards.append(Card(number: 43, name: "La Campana", image: "43-la_campana_WOS"))
        cards.append(Card(number: 44, name: "El Cantarito", image: "44-el_cantarito_WOS"))
        cards.append(Card(number: 45, name: "El Venado", image: "45-el_venado_WOS"))
        cards.append(Card(number: 46, name: "El Sol", image: "46-el_sol_WOS"))
        cards.append(Card(number: 47, name: "La Corona", image: "47-la_corona_WOS"))
        cards.append(Card(number: 48, name: "La Chalupa", image: "48-la_chalupa_WOS"))
        cards.append(Card(number: 49, name: "El Pino", image: "49-el_pino_WOS"))
        cards.append(Card(number: 50, name: "El Pescado", image: "50-el_pescado_WOS"))
        cards.append(Card(number: 51, name: "La Palma", image: "51-la_palma_WOS"))
        cards.append(Card(number: 52, name: "La Maceta", image: "52-la_maceta_WOS"))
        cards.append(Card(number: 53, name: "El Arpa", image: "53-el_arpa_WOS"))
        cards.append(Card(number: 54, name: "La Rana", image: "54-la_rana_WOS"))
        
        reset()
    }
    
    func getTotalCards() -> Int {
        return cards.count
    }
    
    func getDefaultCard() -> Card {
        return cards[0]
    }
    
    func getLastCard() -> Card {
        return cards[lastCardPtr]
    }
    
    func getLastCardCounter() -> Int {
        return lastCardPtr
    }
    
    func getNextCard() -> Card {
        if variableCardPtr < (cards.count - 1) {
            if lastCardPtr == variableCardPtr {
                lastCardPtr += 1
                variableCardPtr += 1
            } else {
                variableCardPtr += 1
            }
        }
        
        return cards[variableCardPtr]
    }
    
    func getPreviousCard() -> Card {
        if variableCardPtr > 1 {
            variableCardPtr -= 1
        }
        
        return cards[variableCardPtr]
    }
    
    func reset() {
        cards = randomizeCards()
        lastCardPtr = 0
        variableCardPtr = 0
    }
    
    func randomizeCards() -> Array<Card> {
        var alreadyExist: Bool
        var randomCard: Card
        var randomCards: Array<Card> = Array()
        randomCards.append(cards.first!)
        for _ in 1...(cards.count - 1) {
            repeat {
                randomCard = cards.randomElement()!
                alreadyExist = randomCards.contains(where: { (card) -> Bool in
                    if randomCard.number == card.number {
                        return true
                    }
                    return false
                })
            } while alreadyExist
            randomCards.append(randomCard)
        }
        return randomCards
    }
}
