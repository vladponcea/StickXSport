//
//  ContentView.swift
//  StickXSport
//
//  Created by Vlad Poncea on 17.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CategoryView(stickerCat: stickerCategoriesExamples[0])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
