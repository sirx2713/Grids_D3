//
//  ContentView.swift
//  Grids_D3
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/15.
//

import SwiftUI

struct GalleryView: View {
    
    
    @State var selectedImage = ""
    @State var sheetVisible = false
    
    var photos = [
        
        "gallery1", "gallery2", "gallery3", "gallery4",
        "gallery5", "gallery6", "gallery7", "gallery8",
        "gallery9", "gallery10", "gallery11"
        
        
    ]
    
    var body: some View {
        VStack {
            Text("Sushi MENU")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.brown)
                .opacity(0.4)
            ScrollView{
                LazyVGrid(columns: [GridItem(spacing: 6), GridItem(spacing: 6)],spacing: 6){
                    ForEach(photos, id: \.self){pic in
                        Image(pic)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                            .onTapGesture {
                                selectedImage = pic
                                sheetVisible = true
                            }
                        
                    }
                }.padding()
            }
        }
        .sheet(isPresented: $sheetVisible, content: {
            PhotoView(
                selectedImage: $selectedImage,
                sheetVisible: $sheetVisible)
        })
    }
}

#Preview {
    GalleryView()
}
