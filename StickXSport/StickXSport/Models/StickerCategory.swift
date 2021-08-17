//
//  StickerCategory.swift
//  StickXSport
//
//  Created by Vlad Poncea on 17.08.2021.
//

import Foundation

struct StickerCategory: Identifiable, Codable{
    var id = UUID().uuidString
    var sport: String
    var sportImage: String
}

let stickerCategoriesExamples = [
    StickerCategory(sport: "Football", sportImage: "football"),
    StickerCategory(sport: "Basketball", sportImage: "Basketball"),
    StickerCategory(sport: "Volleyball", sportImage: "volleyball"),
    StickerCategory(sport: "Tennis", sportImage: "tennis"),
    StickerCategory(sport: "Hockey", sportImage: "hockey"),
    StickerCategory(sport: "Baseball", sportImage: "baseball")
]
