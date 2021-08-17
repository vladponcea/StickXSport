 //
 //  Home.swift
 //  StickXSport
 //
 //  Created by Vlad Poncea on 17.08.2021.
 //
 
 import SwiftUI
 
 struct Home: View {
    
    @State var searchText: String
    
    @State var stickerCategories: [StickerCategory] = stickerCategoriesExamples
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack{
                    
                    //top
                    HStack {
                        
                        //search bar
                        HStack{
                            
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color(red: 0.051, green: 0.247, blue: 0.392, opacity: 0.6))
                                .padding()
                            
                            TextField("Search", text: $searchText, onCommit: {
                                searchText = ""
                            })
                            .font(.system(size: 17))
                            .frame(width: 176, height: 22)
                            .foregroundColor(Color(red: 0.051, green: 0.247, blue: 0.392, opacity: 0.6))
                            .offset(x: -15)
                            
                            Spacer()
                        }
                        .frame(width: 276, height: 36)
                        .background(Color(red: 0.051, green: 0.247, blue: 0.392, opacity: 0.12))
                        .cornerRadius(10)
                        
                        Spacer()
                        
                        Image(systemName: "heart")
                            .frame(width: 21.72, height: 20)
                    }
                    .padding()
                    
                    
                    Rectangle()
                        .fill(Color(red: 0.050980392156862744, green: 0.24705882352941178, blue: 0.39215686274509803))
                        .frame(width: 375, height: 40)
                        .overlay(
                            HStack{
                                
                                Text("Categories")
                                    .font(.system(size: 17, weight: .bold))
                                    .foregroundColor(.white)
                                
                                Spacer()
                            }
                            .padding()
                        )
                    
                    List{
                        ForEach(stickerCategories){category in
                            VStack(alignment: .leading) {
                                NavigationLink(
                                    destination: SwiftUIView(),
                                    label: {
                                        HStack {
                                            Image(category.sportImage)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 40, height: 40)
                                                .clipShape(Circle())
                                            
                                            Text(category.sport)
                                            
                                            
                                        }
                                    })
                                Divider()
                                    .background(Color.black)
                            }
                        }
                    }
                    
                    Spacer()
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
 }
 
 struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(searchText: "")
    }
 }
