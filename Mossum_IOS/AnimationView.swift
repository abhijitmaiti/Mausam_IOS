//
//  AnimationView.swift
//  Mossum_IOS
//
//  Created by Abhijit Maiti on 1/7/24.
//

import SwiftUI

struct AnimationView: View {
    var body: some View {
        TextAnimation(text: "Mossam")
        
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}

struct TextAnimation : View {
    var text : String
    @State var glowText = false
    var body: some View{
        ZStack{
            Color("blue")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment : .center){
                
                Text(text)
                    .font(.system(size: 40, weight: .semibold, design:.serif ))
                    .foregroundColor(.white)
                    .opacity(0.3)
            }
            HStack(spacing : 0){
                ForEach (0..<text.count, id : \.self) {
                    index in
                    Text(String(text[text.index(text.startIndex,offsetBy: index)]))
                        .font(.system(size: 40, weight: .semibold, design:.serif ))
                            .foregroundColor(glowColor())

                }

            }
            .mask(
                Rectangle()
                    .rotationEffect(.init(degrees: 70))
                    .padding(10)
                    .offset(x : -250 )
                    .offset(x : glowText ? 500 : 0)
            
            )
            .onAppear(perform: {
                withAnimation(Animation.linear(duration: 2).repeatForever(autoreverses: false)){
                    glowText.toggle()
                }
            })
        }
    }
    func glowColor()->Color{
        let color = Color.white
        return color
    }
}
