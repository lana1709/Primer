//
//  HomeView.swift
//  
//
//  Created by user on 05.06.2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            HStack {
                Image(systemName: "bookmark")
                Spacer()
                Text("scolar")
                Spacer()//раскидать покраям элементы, заливаем свободным местом
                Image(systemName: "bell")
            }.padding()
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack{
                    ForEach(0...15, id: \.self) { _ in
                        Image("flatline")
                            .resizable()
                            .frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    }
                }
                        
            })
            Spacer()
            }
        }
        
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
