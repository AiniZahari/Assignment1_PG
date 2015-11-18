//
//  Cinemas.swift
//  Assignment1_PG
//
//  Created by Aini Zahari on 5/04/2015.
//  Copyright (c) 2015 Siti Nur Aini Zahari. All rights reserved.
//

import Foundation

enum Cinemas:Int{
    case MV=1, KLCC, OU, Alamanda, Mines
    
    var name:String{
         get{
          switch self{
          case .MV: return "Midvalley Megamall"
          case .KLCC: return "Suria KLCC Shopping Centre"
          case .OU: return "One Utama Shopping Centre"
          case .Alamanda: return "Alamanda Shopping Centre"
          case .Mines: return "The Mines Shopping Centre"
          }
         }
    }
    
    static func getCinemas()->[Cinemas]{
        return[MV, KLCC, OU, Alamanda, Mines]
    }
}
