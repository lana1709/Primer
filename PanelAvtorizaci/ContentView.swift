//
//  ContentView.swift
//  PanelAvtorizaci
//
//  Created by user on 04.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    var body: some View {
        VStack{
            
            Image("flatline")
            
            
            
            
            Text("EMAIL")
                .foregroundColor(.gray)
                .bold()
                .frame(width: UIScreen.main.bounds.width-20, alignment:.leading)
            HStack{
                
                
                Image(systemName:"envelope")
                    .padding(.leading)
                
                TextField("name@email.com", text: $name)
                    
                    .frame(width: 320, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            }
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color(UIColor.blue).opacity(1),lineWidth: 1))
            .padding(.bottom,15)
            
            Text("PASSWORD")
                
                .foregroundColor(.gray)
                .bold()
                .frame(width: UIScreen.main.bounds.width-20, alignment:.leading)
            HStack{
                Image(systemName:"lock")
                    .padding(.leading)
                TextField("********", text: $name)
                    
                    .frame(width: 320, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            }.border(Color(.gray), width: 1)
            .cornerRadius(13)
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color(UIColor.blue).opacity(1),lineWidth: 1))
            .padding(.bottom,15)
            Button(action: {
                
            }, label: {
                Text("SIGN IN")
                    
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: 350, height: 60, alignment:.center   )
                    .background(Color(.blue))
                    
                    .cornerRadius(25)
                    .padding(.top,30)
                
                
            })
            HStack{
                Text("Already have an account?")
                    .foregroundColor(.gray)
                    .padding(.top,30)
                Text("Login")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .padding(.top,30)
                
            }
        }
        
    }
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
