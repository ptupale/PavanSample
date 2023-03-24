//
//  ScrollViewExample.swift
//  SwiftUIBasics
//
//  Created by Pavankumar  on 24/03/23.
//

import SwiftUI

struct ScrollViewExample: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<9) { index in
                                Rectangle()
                                    .frame(width: 150, height: 150)
                                    .background(Color.white)
                                    .cornerRadius(15)
                                    .shadow(radius: 10)
                                    .foregroundColor(Color.white)
                                    .padding()
                            }
                        }
                    }
                }
            }
        })
    }
}

struct ScrollViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewExample()
    }
}
