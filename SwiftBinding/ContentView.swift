//
//  ContentView.swift
//  SwiftBinding
//
//  Created by Fatih Gümüş on 4.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var backgroundColor : Color = Color.red
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(.all)
            VStack {
                ButtonView(renkKodu: $backgroundColor)
            }
            .padding()
        }

    }
    
//    var ButtonView : some View{
//        Button(action: {
//            
//        }, label: {
//            Text("Renk Değiştir")
//                .frame(width: 200,height: 75)
//                .foregroundColor(.white)
//                .background(.black)
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//            
//        })
//    }
}

struct ButtonView: View{
    @Binding var renkKodu : Color
    var body: some View{
        VStack{
            Button(action: {
                if (renkKodu == Color.red) {
                    renkKodu = Color.gray
                }else if (renkKodu == Color.gray){
                    renkKodu = Color.white
                }else{
                    renkKodu = Color.red
                }
             
            }, label: {
                Text("Renk Değiştir")
                    .frame(width: 200,height: 75)
                    .foregroundColor(.white)
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
    }
}


#Preview {
    ContentView()
}
