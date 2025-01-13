//
//  LoadingView.swift
//  Weather
//
//  Created by Jhagruth Palakonda on 23/12/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 35) {
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .white))
                .frame(maxWidth: .infinity, maxHeight: 10)
            Text("Loading...")
                .font(.system(size: 18))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
