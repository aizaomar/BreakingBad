//
//  NetworkManager.swift
//  BreakingBad
//
//  Created by Aiza on 25.09.2021.
//

import Foundation


//   Дождусь разбора домашки :)










//class NetworkManager {
//
//    static let shared = NetworkManager()
//
//    private init() {}
//
//    func fetchCharacters() {
//        guard let url = URL(string: Link.breakingBadApi.rawValue) else { return }
//
//        URLSession.shared.dataTask(with: url) { data, _, error in
//            guard let data = data else {
//                print(error?.localizedDescription ?? "No error description")
//                return
//            }
//            do {
//                self.characters = try JSONDecoder().decode([Character].self, from: data)
//                DispatchQueue.main.async {
//                    self.tableView.reloadData()
//                }
//            } catch let error {
//                print(error.localizedDescription)
//            }
//
//        }.resume()
//
//    }
//}
