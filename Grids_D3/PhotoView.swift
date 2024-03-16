//
//  PhotoView.swift
//  Grids_D3
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/15.
//

import SwiftUI

struct PhotoView: View {
    
    @Binding var selectedImage: String
    @Binding var sheetVisible: Bool
    
    var body: some View {
        ZStack {
            Image(selectedImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        sheetVisible = false
                    }, label: {
                        Image(systemName: "x.circle")
                    })
                    .foregroundColor(.black)
                    .scaleEffect(2)
                    .padding()
                }
                Spacer()
            }
            
        }
    }
}

#Preview {
    PhotoView(selectedImage: Binding.constant("gallery1"), sheetVisible: Binding.constant(true))
}
