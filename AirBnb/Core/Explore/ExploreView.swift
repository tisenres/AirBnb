//
//  ExploreView.swift
//  AirBnb
//
//  Created by Nastya Shaposhnikova on 17/03/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
                LazyVStack(spacing: 32) {
                    ForEach(0...10, id: \.self) { listing in
                        ListingItemView()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                    }
                }
            }.padding()
        }
    }
}

#Preview {
    ExploreView()
}
