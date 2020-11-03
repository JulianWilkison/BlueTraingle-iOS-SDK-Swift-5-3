//
//  ContentView.swift
//  TestBlueTrainglePod
//
//  Created by Julian Wilkison-Duran on 11/2/20.
//

import SwiftUI
import BlueTriangleSDK_iOS

struct ContentView: View {
    var timer = BTTimer();
    var body: some View {
        VStack{
            Text("Hello, world!")
                .padding()
            Button(action:{
                timer.setPageName("My-Page-Name");
                timer.setTrafficSegmentName("my-Traffic-Segment");
                timer.setCampaignName("campaign-1");
                timer.setCampaignMedium("mobile-ios");
                timer.start();
                
            }){
                Text("Start Timer")
            }
            Button(action:{
                
                BTTracker().submitTimer(self.timer);
                
            }){
                Text("Stop Timer")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
