//
//  Character.swift
//  BreakingBad
//
//  Created by Aiza on 25.09.2021.
//

struct Character: Decodable {
    let name: String
    let birthday: String
    let img: String
    let status: String
    let nickname: String
    
    var description: String {
        """
        Name: \(name)
        Birthday: \(birthday)
        Status: \(status)
        Nickname: \(nickname)
        """
    }
}

enum Link: String {
    case breakingBadApi = "https://www.breakingbadapi.com/api/characters"
}


