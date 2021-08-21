//
//  CategoryView.swift
//  StickXSport
//
//  Created by Vlad Poncea on 19.08.2021.
//

import SwiftUI

struct CategoryView: View {
    
    @State var stickerCat: StickerCategory
    
    var body: some View{
        
        VStack {
            HStack {
                Text(stickerCat.sport)
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.050980392156862744, green: 0.24705882352941178, blue: 0.39215686274509803))
                
                Spacer()
            
                Button(action: {
                    stickerCat.favorite.toggle()
                }, label: {
                    Image(systemName: stickerCat.favorite ? "heart.fill" : "heart")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 21.72, height: 20)
                        .foregroundColor(Color(red: 0.050980392156862744, green: 0.24705882352941178, blue: 0.39215686274509803))
                })
            }
            .padding(.top, 20)
            .padding(.leading, 20)
            .padding(.trailing, 20)
            
            Divider()
                .background(Color.black)
                .frame(width: 295, height: 1)
            
            HStack{
                
                Image(stickerCat.stickers[0])
                Image(stickerCat.stickers[1])
                Image(stickerCat.stickers[2])
                
            }
            
            Spacer()
            
        }
        .frame(width: 343, height: 220)
        .background(Color(red: 0.8862745098039215, green: 0.9098039215686274, blue: 0.9254901960784314).cornerRadius(10))
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(stickerCat: stickerCategoriesExamples[0])
            .environmentObject(HomeViewModel())
    }
}
