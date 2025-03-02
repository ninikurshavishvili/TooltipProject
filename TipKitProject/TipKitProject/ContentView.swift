//
//  ContentView.swift
//  TipKitProject
//
//  Created by Nino Kurshavishvili on 01.03.25.
//

import SwiftUI
import TipKit

struct ContentView: View {
    
    @State private var items = mockData.colorsWithImages
    let imageCellTip = ImageCellTip()
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    ForEach(items) { item in
                        RoundedRectangle(cornerRadius: 16)
                            .fill(item.color.gradient)
                            .frame(height: 100)
                            .overlay(
                                HStack {
                                    Image(item.imageName)
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .padding(.leading, 8)

                                    Spacer()
                                }
                            )
                            .contextMenu {
                                Button("Favourite", systemImage: "star") {
                                    // Button action here
                                }
                            }
                    }
                }
                .padding()
                .navigationTitle("App Icons")
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            if let nextColor = CustomColors.allColors.randomElement(),
                               let randomImage = mockData.images.randomElement() {
                                items.insert(ColorItem(color: nextColor, imageName: randomImage), at: 0)
                            }
                        } label: {
                            Image(systemName: "plus")
                                .font(.system(size: 24))
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(radius: 4)
                        }
                        .popoverTip(imageCellTip)
                        .padding(.trailing, 16)
                        .padding(.bottom, 16)
                    }
                }
            }
        }
    }
}




#Preview {
    ContentView()
        .task {
            try? Tips.resetDatastore()
            try? Tips.configure([
                .displayFrequency(.immediate),
                .datastoreLocation(.applicationDefault)
            ])
        }
}










