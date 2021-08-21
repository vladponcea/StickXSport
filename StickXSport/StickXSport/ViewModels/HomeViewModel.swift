//
//  HomeViewModel.swift
//  StickXSport
//
//  Created by Vlad Poncea on 17.08.2021.
//

import Foundation

class HomeViewModel: ObservableObject{
    @Published var category: [StickerCategory] = stickerCategoriesExamples
}
