//
//  FrameWorkerTitleView.swift
//  FrameWorker
//
//  Created by Jeffrey Michael Flynn on 1/9/24.
//

import SwiftUI

struct FrameWorkerTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

struct FrameWorkerTitleView_Preview: PreviewProvider {
    
    var title: String
    
    static var previews: some View {
        FrameWorkerTitleView(framework: MockData.sampleFramework)
    }
}
