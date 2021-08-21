//
//  StickerView.swift
//  StickXSport
//
//  Created by Vlad Poncea on 17.08.2021.
//

import SwiftUI

struct StickerView: View {
    
    @State var categories: StickerCategory
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            
            Color(red: 0.09803921568627451, green: 0.33725490196078434, blue: 0.5215686274509804).cornerRadius(10).edgesIgnoringSafeArea(.bottom)
            
            VStack{
                HStack{
                    
                    Text(categories.sport)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 15.34, height: 20)
                        .foregroundColor(.white)
                    
                    Button(action: {
                        categories.favorite.toggle()
                    }, label: {
                        Image(systemName: categories.favorite ? "heart.fill" : "heart")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 21.72, height: 20)
                            .foregroundColor(.white)
                    })
                }
                .padding()
                
                Divider()
                    .background(Color.white)
                    .frame(width: 355, height: 1)
                
                LazyVGrid(columns: layout, spacing: 100) {
                    ForEach(categories.stickers, id: \.self){sticker in
                        Image(sticker)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                    }
                }
                .padding()
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    HStack{
                        
                        Image(systemName: "plus")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 15, height: 15)
                            .foregroundColor(.white)
                        
                        Text("Add stickers")
                            .font(.system(size: 17))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                })
                .frame(width: 200, height: 40)
                .background(RoundedRectangle(cornerRadius: 5).fill(Color(red: 0.49019607843137253, green: 0.6666666666666666, blue: 0.16862745098039217)))
                .padding(.top, 50)
            }
        }
    }
}

struct StickerView_Previews: PreviewProvider {
    static var previews: some View {
        StickerView(categories: stickerCategoriesExamples[0])
    }
}
