//
//  User.swift
//  tabvView
//
//  Created by Pasquale on 26/10/2020.
//

import Foundation

struct User{
    var nome : String = ""
    var score : Float = 0.0
}


class DataScore: NSObject, ObservableObject{
    static let shared = DataScore()
    @Published var punteggio : Int = UserDefaults.standard.integer(forKey: "Score")
    
    {
        didSet{
            UserDefaults.standard.set(punteggio, forKey: "Score")
        }
    }
    private override init() {
        
    }
}
