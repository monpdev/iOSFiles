//
//  ContentView.swift
//  ButtomCardSwiftUI
//
//  Created by Mon P. on 08/09/2022.
//
// Basic Buttom Card based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    @State var cardShown = false
    @State var cardDismissal = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Button(action: {
                    cardShown.toggle()
                    cardDismissal.toggle()
                }, label: {
                    Text("Show card")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .cornerRadius(8)
                    
                })
                BottomCard(cardShown: $cardShown,
                           cardDismissal: $cardDismissal,
                           height: UIScreen.main.bounds.height/2.2) {
                    CardContent()
                        .padding()
                }
                .animation(.default)
            }
        }
    }
}

struct CardContent: View {
    var body: some View {
        Text("Photo Collage")
            .bold()
            .font(.system(size: 30))
        
        Text("Awesome feature! New feature! Create photo grids and share them with your friends and family.")
            .font(.system(size: 18))
            .multilineTextAlignment(.center)
        
        Image("image")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}



struct BottomCard<Content: View>: View {
    let content: Content
    @Binding var cardShown: Bool
    @Binding var cardDismissal: Bool
    let height: CGFloat
    
    init(cardShown: Binding<Bool>,
         cardDismissal: Binding<Bool>,
         height: CGFloat,
        @ViewBuilder content: () -> Content
    ) {
        self.height = height
        _cardShown = cardShown
        _cardDismissal = cardDismissal
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            //Dimmed
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.5))
            .opacity(cardShown ? 1 : 0)
            .animation(Animation.easeIn)
            .onTapGesture {
                self.dismiss()
                }
            //Card
            VStack{
                Spacer()
                
                VStack{
                    content
                    
                    Button(action: {
                        self.dismiss()
                    }, label: {
                        Text("Dismiss")
                            .foregroundColor(Color.white)
                            .frame(width: UIScreen.main.bounds.width/1.4,
                                   height: 50)
                            .background(Color.pink)
                            .cornerRadius(8)
                    })
                    .padding()
                }
                
                .background(Color(UIColor.secondarySystemBackground))
                .frame(height: height)
                //.offset(y: cardDismissal && cardShown ? 0 : 300)
                .animation(Animation.default.delay(0.2))
            }
        
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    func dismiss() {
        cardDismissal.toggle()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            cardShown.toggle()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
