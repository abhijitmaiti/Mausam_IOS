//
//  ContentView.swift
//  Mossum_IOS
//
//  Created by Abhijit Maiti on 1/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("blue")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(alignment : .center){
               
                VStack{
                    HStack(){
                        VStack(alignment : .leading, spacing : 5){
                            Text("Kolkata")
                                .foregroundColor(.white)
                                .font(.system(size: 35, weight: .semibold, design: .default))
                                .scaleEffect()
                                .minimumScaleFactor(0.6)
                            
                            
                                
                            Text("Today, Dec 1,3:44 PM")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .medium, design: .default))
                            
                            
                        }
                        Spacer()
                    }
                    HStack{
                        VStack(alignment : .center , spacing :10){
                            Image(systemName: "sun.max.fill")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 70)
                            
                            Text("Clear")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .medium, design: .default))
                            
                        }
                        Spacer()
                        Text("33°")
                            .foregroundColor(.white)
                            .font(.system(size: 50, weight: .bold, design: .default))
                            .scaleEffect()
                            .minimumScaleFactor(0.6)
                        
                    }
                    .padding(.top,25)
                }
                .padding(20)
                
                Spacer()
                AnimationView()
                Spacer()
                VStack{
                    HStack{
                        Text("Weather now")
                            .font(.system(size: 25, weight: .bold, design: .default))
                            .foregroundColor(Color("blue"))
                        Spacer()
                    }.padding(.horizontal,20)
                    
                    
                    VStack(spacing : 30){
                        HStack{
                            WeatherNowView(logoName: "thermometer", contentName: "Min temp", content: "-3°",color: Color("blue"))
                            Spacer()
                            WeatherNowView(logoName: "thermometer", contentName: "Max temp", content: "11°",color: Color("red"))
                            
                        }
                        
                        HStack{
                            WeatherNowView(logoName: "wind", contentName: "Wind speed", content: "1"+"m/s",color: Color("blue"))
                            Spacer()
                            WeatherNowView(logoName: "wind", contentName: "Humidity", content: "46"+"%",color: Color("blue"))
                           
                           
                        }
                    }
                    .padding(.horizontal,20)
                    .padding(.top,20)
                    
                }.frame(maxWidth: .infinity ,maxHeight: 250, alignment: .leading)
                .background(Color.white)
                .cornerRadius(30)
            }
            .edgesIgnoringSafeArea(.bottom)
            
            
            
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}


struct WeatherNowView : View {
    var logoName : String
    var contentName : String
    var content : String
    var color : Color
    var body: some View{
        HStack(spacing : 15){
            ZStack{
                Circle()
                 .foregroundColor(.gray)
                 .frame(width: 50, height: 50)
                 .padding(.top,10)
                    .opacity( 0.3)
                    .scaleEffect()
                    .minimumScaleFactor(0.6)
                
                Image(systemName: logoName)
                   
                    .resizable()
                    .foregroundColor(color)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20, alignment: .center)
                    .padding(.top,10)
                    .scaleEffect()
                    .minimumScaleFactor(0.6)
            }
            
        
            VStack(spacing: 2){
                Text(contentName)
                    .foregroundColor(Color("blue"))
                    .font(.system(size: 15, weight: .medium, design:.default))
                    .scaleEffect()
                    .minimumScaleFactor(0.6)
                Text(content)
                    .foregroundColor(Color("blue"))
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .scaleEffect()
                    .minimumScaleFactor(0.6)
                    
            }
        }
    }
}
