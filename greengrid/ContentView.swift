//
//  ContentView.swift
//  greengrid
//
//  Created by Zainab Alatwi  on 11/05/1446 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // خلفية مع تدرجات وحركات ناعمة
            LinearGradient(gradient: Gradient(colors: [Color("babyblue"), Color("")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            Circle()
                .fill(Color.white.opacity(0.2))
                .frame(width: 300, height: 300)
                .blur(radius: 50)
                .offset(x: -150, y: -200)
            
            Circle()
                .fill(Color.white.opacity(0.15))
                .frame(width: 200, height: 200)
                .blur(radius: 30)
                .offset(x: 100, y: 150)
            
            VStack(spacing: 20) {
                // النص الرئيسي
                Text("An intuitive AI tool for balanced, sustainable urban planning and simple to use.")
                    .font(.title2)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                
                // النص الثانوي
                Text("With stellar one-click reports and unmatched support, see how GreenGrid will make a difference in your business.")
                    .font(.body)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                
                // زر Get Started
                Button(action: {
                    // إضافة الأكشن هنا
                }) {
                    
                    Text("Get Started")
                        .fontWeight(.bold)
                        .foregroundColor(.babyblue)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(.horizontal, 30)
                }
            }
            .padding(.top, -300) // لضبط مكان النص أعلى الخلفية
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
