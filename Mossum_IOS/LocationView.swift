//
//  LocationView.swift
//  Mossum_IOS
//
//  Created by Abhijit Maiti on 1/7/24.
//

import SwiftUI

struct LocationView: View {
    

    var body: some View {
        ZStack{
            Color("blue")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                VStack(spacing :30){
                    Text("Welcome to the Mausam")
                                       .bold()
                                       .font(.title)
                        .foregroundColor(.white)
                        .padding(.horizontal,40)
                                   
                                   Text("Please share your current location to get the weather in your area")
                                    .foregroundColor(.white)
                                    .padding(.horizontal,40)
                                       
                }
                .multilineTextAlignment(.center)
                .padding(.horizontal,10)
               
        }
    }
        
        
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}



