//
//  PopupExample.swift
//  SwiftUIBasics
//
//  Created by Pavankumar  on 30/03/23.
//

import SwiftUI

struct PopupExample: View {
    @State var popupShow = false
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button("Press Me!") {
                    popupShow.toggle()
                }
                .font(.headline)
                .padding()
                .foregroundColor(.orange)
                .background(Color.white.cornerRadius(10))
                Spacer()
            }
            if popupShow {
                PopupView(popUpShow: $popupShow)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
        }
    }
}
struct PopupView: View {
    @Binding var popUpShow: Bool
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.green
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button {
                    popUpShow.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                }

            }
        }
    }
}
struct PopupExample_Previews: PreviewProvider {
    static var previews: some View {
        PopupExample()
    }
}
