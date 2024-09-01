//
//  XDismissButton.swift
//  FrameWorker
//
//  Created by Jeffrey Michael Flynn on 1/9/24.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()

            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct XDismissButton_Preview: PreviewProvider {
    
    var title: String
    
    static var previews: some View {
        XDismissButton(isShowingDetailView: .constant(false))
    }
}
