//
//  ContentView.swift
//  ButtonProject
//
//  Created by Rishik Yechuri on 10/14/20.
//

import SwiftUI

struct ContentView: View {
    @State var textToShow:String = "Hi"
    @State var colorOfText:Color = Color.blue
    @State var colorOfBackground:Color = Color.black
    
    var body: some View {
        ZStack{
            colorOfBackground.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
             VStack  {
                Text("\(textToShow)")
                    .foregroundColor(colorOfText)
                    .padding()
                Spacer()
                    .frame(height: 53.0)
                HStack{
                    Button(action: {
                        if(self.textToShow == "Hi"){
                            self.textToShow = "Hello"
                        }else if(textToShow == "Hello"){
                            textToShow = "Hi"
                        }
                    }){
                        Text("Text")
                    }
                    Spacer()
                        .frame(width:20)
                    Button(action: {
                        if(colorOfText == Color.green){
                            colorOfText = Color.red
                        }else if(colorOfText == Color.red){
                            colorOfText = Color.blue
                        }else if(colorOfText == Color.blue){
                            colorOfText = Color.green
                        }
                    }){
                        Text("Text Color")
                    }
                    Spacer()
                        .frame(width:20)
                    Button(action: {
                        if(colorOfBackground == Color.black){
                            colorOfBackground = Color.gray
                        }else if(colorOfBackground == Color.gray){
                            colorOfBackground = Color.white
                        }else if(colorOfBackground == Color.white){
                            colorOfBackground = Color.black
                        }
                    }){
                        Text("Background color")
                    }
                }
            }
        }
         /*VStack  {
            Text("\(textToShow)")
                .foregroundColor(colorOfText)
                .padding()
            Spacer()
                .frame(height: 53.0)
            HStack{
                Button(action: {
                    if(self.textToShow == "Hi"){
                        self.textToShow = "Hello"
                    }else if(textToShow == "Hello"){
                        textToShow = "Hi"
                    }
                }){
                    Text("Text")
                }
                Button(action: {
                    if(colorOfText == Color.black){
                        colorOfText = Color.red
                    }else if(colorOfText == Color.red){
                        colorOfText = Color.blue
                    }else if(colorOfText == Color.blue){
                        colorOfText = Color.black
                    }
                }){
                    Text("Text Color")
                }
                Button(action: {}){
                    Text("Background color")
                }
            }
        }*/
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
