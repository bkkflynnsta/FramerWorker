//
//  FrameWorkerButtonView.swift
//  FrameWorker
//
//  Created by Jeffrey Michael Flynn on 1/9/24.
//

import SwiftUI

struct FrameWorkerButtonView: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct FrameWorkerButtonView_Preview: PreviewProvider {
    
    var title: String
    
    static var previews: some View {
        FrameWorkerButtonView(title: "Learn More")
    }
}
