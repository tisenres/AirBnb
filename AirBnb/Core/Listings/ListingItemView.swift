//
//  ListingView.swift
//  AirBnb
//
//  Created by Nastya Shaposhnikova on 17/03/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        "listing-5"
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    Text("12 miles away")
                        .foregroundStyle(.gray)
                        .foregroundColor(.black)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                        .foregroundColor(.black)
                    HStack(spacing: 4) {
                        Text("$567")
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                        Text("night")
                    }
                }
                
                Spacer()
                // rating
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
            }
            .font(.footnote)
            .foregroundColor(.black)
            
        }
        
    }
    
}

#Preview {
    ListingItemView()
}
