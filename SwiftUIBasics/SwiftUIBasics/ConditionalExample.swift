//
//  ConditionalExample.swift
//  SwiftUIBasics
//
//  Created by Pavankumar  on 29/03/23.
//

import SwiftUI

struct ConditionalExample: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    var body: some View {
        VStack(spacing: 20) {
            Button("Circle button: \(showCircle.description)") {
                showCircle.toggle()
            }
            Button("Rectangle button: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            if !showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            if !showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            Spacer()
        }
    }
}

struct ConditionalExample_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalExample()
    }
}
