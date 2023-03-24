//
//  SafeAreaExample.swift
//  SwiftUIBasics
//
//  Created by Pavankumar  on 24/03/23.
//

import SwiftUI

struct SafeAreaExample: View {
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            VStack {
                Text("Hello")
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
        }
    }
}

struct SafeAreaExample_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaExample()
    }
}
