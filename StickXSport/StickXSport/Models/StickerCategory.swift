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
    var stickers: [String]
    var favorite: Bool
}

var stickerCategoriesExamples = [
    StickerCategory(sport: "Football", sportImage: "football", stickers: ["football1", "football2", "football3", "football4", "football5", "football6", "football7", "football8"], favorite: false),
    StickerCategory(sport: "Basketball", sportImage: "Basketball", stickers: ["basket1", "basket2", "basket3", "basket4", "basket5", "basket6", "basket7"], favorite: false),
    StickerCategory(sport: "Volleyball", sportImage: "volleyball", stickers: ["volley1", "volley2", "volley3", "volley4", "volley5", "volley6"], favorite: false),
    StickerCategory(sport: "Tennis", sportImage: "tennis", stickers: ["tennis1", "tennis2", "tennis3", "tennis4", "tennis5"], favorite: false),
    StickerCategory(sport: "Hockey", sportImage: "hockey", stickers: ["hockey1", "hockey2", "hockey3", "hockey4", "hockey5"], favorite: false),
    StickerCategory(sport: "Baseball", sportImage: "baseball", stickers: ["baseball1", "baseball2", "baseball3", "baseball4"], favorite: false)
]
