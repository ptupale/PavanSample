//
//  GridExample.swift
//  SwiftUIBasics
//
//  Created by Pavankumar  on 24/03/23.
//

import SwiftUI

struct GridExample: View {
    let gridItem: [GridItem] = [
        GridItem.init(.flexible(), spacing: 6, alignment: nil),
        GridItem.init(.flexible(), spacing: 6, alignment: nil),
        GridItem.init(.flexible(), spacing: 6, alignment: nil)
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItem, alignment: .center, spacing: 6, pinnedViews: []) {
                Section(header:
                            Text("Header 1")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                ) {
                    ForEach(0..<30) { index in
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width: 120, height: 120)
                    }
                }
                
                Section(header:
                            Text("Header 2")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                ) {
                    ForEach(0..<30) { index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 120, height: 120)
                    }
                }
            }
        }
    }
}

struct GridExample_Previews: PreviewProvider {
    static var previews: some View {
        GridExample()
    }
}
