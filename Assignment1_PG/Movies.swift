//
//  Movies.swift
//  Assignment1_PG
//
//  Created by Aini Zahari on 5/04/2015.
//  Copyright (c) 2015 Siti Nur Aini Zahari. All rights reserved.
//

import Foundation

enum Movies:Int{
    case PGL=1, Mukhsin, JamesBond, Titanic, TheImitationGame
    
    init(){
        self = .PGL
    }
    
    init?(number:Int){
        switch number{
        case 1: self = .PGL
        case 2: self = .Mukhsin
        case 3: self = .JamesBond
        case 4: self = .Titanic
        case 5: self = .TheImitationGame
        default: return nil
        }
    }
    
    var rank:Int{
        get{
            return self.rawValue
        }
    }
    
    var name:String{
        get{
            switch self{
            case .PGL: return "PGL"
            case .Mukhsin: return "Mukhsin"
            case .JamesBond: return "JamesBond"
            case .Titanic: return "Titanic"
            case .TheImitationGame: return "TheImitationGame"
            }
        }
    }
    
    var interpretation:String{
        get{
            switch self{
            case .PGL: return "An ugly princess living on top of a mountain called Gunung Ledang is fighting for a revenge from a beautiful fairy that has killed her parents and took over the throne."
            case .Mukhsin: return "Two best friends Orked and Mukhsin lives in a small village in Peninsular Malaysia. Orked is a daughter of a teacher and Mukhsin is an orphan living with his troubled brother and aunt."
            case .JamesBond: return "Almost the same storyline and ending for each Bon product"
            case .Titanic: return "When Jack won a cruise ticket from gambling and then he met Rose. They fall in love and suddenly Titanic hit an iceberg. Jack thinks he is lucky but not relly."
            case .TheImitationGame: return "Based on a true story about Allan Turing, a mathematician, creator of the computer and the genius. He was hired by the British government to break the German Enigma Code"
            }
        }
    }
    
    var date:String{
        get{
            switch self{
            case .PGL: return "Monday - 3:30pm, Wednesday - 12:30pm, Friday - 8:30pm"
            case .Mukhsin: return "Tuesday - 12:30pm, Thursday - 6:00pm, Saturday - 1:30pm"
            case .JamesBond: return "Saturday - 2:30pm, Sunday - 4:30pm"
            case .Titanic: return "Monday - 5:30pm, Wednesday - 2:30pm, Friday - 7:30pm"
            case .TheImitationGame: return "Tuesday - 12:30pm, Thursday - 6:00pm, Saturday - 1:30pm"
            }
        }
    }
    
    var imageName:String{
        get{
            return self.name.stringByReplacingOccurrencesOfString("",withString:"",options:nil, range:nil)+".jpg"
        }
    }
    
    var movieTitle:String{
        get{
            switch self{
            case .PGL: return "Puteri Gunung Ledang"
            case .Mukhsin: return "Mukhsin"
            case .JamesBond: return "James Bond - Skyfall"
            case .Titanic: return "Titanic"
            case .TheImitationGame: return "The Imitation Game"
            }
        }
    }
    
    static func getMovies()->[Movies]{
        return[PGL, Mukhsin, JamesBond, Titanic, TheImitationGame]
    }
}