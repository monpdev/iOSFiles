//
//  ContentView.swift
//  SwiftUIDrawer
//
//  Created by Mon P. on 19/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var offset: CGFloat = 200
    @State private var isInitialOffsetSet = false
    
    var body: some View {
        ZStack {
           HomeView()
            
            GeometryReader {proxy in
                ZStack {
                    
                        //Blurred View
                        BlurView(style: .systemThinMaterialDark)
                    
                        DrawerView()
                    
                }
                
            }
            
            .offset(y: offset)
            .gesture (
                DragGesture()
                    .onChanged { value in
                        let startLocation = value.startLocation
                        offset = startLocation.y + value.translation.height
                    }
            )
            .onAppear {
                if !isInitialOffsetSet {
                    offset = UIScreen.main.bounds.height - 150
                    isInitialOffsetSet = true
                }
            }
        }
        .ignoresSafeArea(.all, edges: .all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Blurred View

struct BlurView: UIViewRepresentable {
    let style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(
            effect: UIBlurEffect(style: style)
        )
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        // Do nothing
    }
    
}


//Home View

struct HomeView: View {
    var body: some View {
        GeometryReader {proxy in
            let frame = proxy.frame(in: .global)
            Image("picture")
                .resizable()
                .scaledToFill()
                .frame(width: frame.size.width,
                       height: frame.size.height)
        }
    }
}


//Drawer View
struct DrawerView: View {
    @State var text: String = ""
    
    var body: some View {
        VStack {
            Capsule()
                .frame(width: 100, height: 15)
                .foregroundColor(Color.white)
                .padding(.top, 7)
            
            TextField("Search", text: $text)
                .foregroundColor(Color.white)
                .background(Color(.label))
                .opacity(0.7)
                .padding(12)
                .cornerRadius(7)
            
            HStack(alignment: .center, spacing: 25){
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bell")
                        .foregroundColor(.white)
                        .frame(width: 55, height: 55)
                        .background(Color.blue)
                        .clipShape(Circle())
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "airplane")
                        .foregroundColor(.white)
                        .frame(width: 55, height: 55)
                        .background(Color.yellow)
                        .clipShape(Circle())
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "gear")
                        .foregroundColor(.white)
                        .frame(width: 55, height: 55)
                        .background(Color.pink)
                        .clipShape(Circle())
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "house")
                        .foregroundColor(.white)
                        .frame(width: 55, height: 55)
                        .background(Color.purple)
                        .clipShape(Circle())
                })
                
            }
            
            Spacer()
        }
    }
}
