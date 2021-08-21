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
    @State var isEditing: Bool = false
    @State var showFavorite: Bool = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .center) {
                    
                    //top
                    HStack {
                        
                        //search bar
                        SearchBar(searchText: $searchText, isEditing: $isEditing)
                        
                        Spacer()
                        
                        Button(action: {
                            showFavorite.toggle()
                        }) {
                            Image(systemName: "heart")
                                .frame(width: 21.72, height: 20)
                                .foregroundColor(Color(red: 0.051, green: 0.247, blue: 0.392, opacity: 1))
                        }
                    }
                    .padding()
                    
                    //rectangle
                    Rectangle()
                        .fill(Color(red: 0.050980392156862744, green: 0.24705882352941178, blue: 0.39215686274509803))
                        .frame(width: UIScreen.main.bounds.width, height: 40)
                        .overlay(
                            HStack{
                                
                                Text(isEditing ? "Explore" : "Categories")
                                    .font(.system(size: 17, weight: .bold))
                                    .foregroundColor(.white)
                                
                                Spacer()
                            }
                            .padding()
                        )
                    
                    
                    ScrollView(.vertical){
                        ForEach(stickerCategories.filter({isEditing ? $0.sport.contains(searchText) : true})){category in
                            if isEditing{
                                VStack(spacing: 10) {
                                    CategoryView(stickerCat: category)
                                    
                                    Spacer()
                                }
                            }else{
                                if showFavorite{
                                    if category.favorite{
                                        CategoryView(stickerCat: category)
                                    }
                                }else{
                                    NotFilteredCategories(category: category)
                                }
                                //not filtered
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
 
 struct SearchBar: View {
    
    @Binding var searchText: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack{
            
            Image(systemName: "magnifyingglass")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 15, height: 15)
                .foregroundColor(Color(red: 0.051, green: 0.247, blue: 0.392, opacity: 0.6))
                .padding()
            
            TextField("Search", text: $searchText, onCommit: {
                isEditing = false
                searchText = ""
            })
            .font(.system(size: 17))
            .frame(width: 176, height: 22)
            .foregroundColor(Color(red: 0.051, green: 0.247, blue: 0.392, opacity: 0.6))
            .offset(x: -15)
            .onTapGesture {
                isEditing = true
            }
            
            if isEditing{
                Button(action: {
                    isEditing = false
                    searchText = ""
                }, label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .background(Circle().fill(Color.white).frame(width: 16, height: 16))
                        .frame(width: 8.49, height: 1.29)
                })
            }
            
            Spacer()
        }
        .frame(width: 276, height: 36)
        .background(Color(red: 0.051, green: 0.247, blue: 0.392, opacity: 0.12))
        .cornerRadius(10)
    }
 }
 
 
 struct NotFilteredCategories: View {
    
    var category: StickerCategory
    
    var body: some View {
        VStack {
            
            NavigationLink(
                destination: StickerView(categories: category),
                label: {
                    HStack{
                        Image(category.sportImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                        
                        
                        Text(category.sport)
                            .font(.system(size: 15))
                            .foregroundColor(Color(red: 0.050980392156862744, green: 0.24705882352941178, blue: 0.39215686274509803))
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color(red: 0.050980392156862744, green: 0.24705882352941178, blue: 0.39215686274509803))
                    }
                    .padding()
                })
            
            Divider()
                .frame(width: UIScreen.main.bounds.width - 50,height: 1)
                .background(Color(red: 0.050980392156862744, green: 0.24705882352941178, blue: 0.39215686274509803))
        }
    }
 }
 
