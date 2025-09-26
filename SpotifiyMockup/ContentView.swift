//
//  ContentView.swift
//  discussion3
//
//  Created by Dylan Chhum on 7/26/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            albumView()
                
            
            BlurView(style: .systemMaterialDark)
                .ignoresSafeArea(.all)
//           
            VStack {
                extraView()
                albumView()
                titleView()
                timeView()
                playbackView()
            }
        }
    }
     
}

// Do not worry about this
struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}


struct titleView: View {
    var body: some View {
        Text("Implement Me")
    }
}

struct timeView: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .frame(height:10)
                    .foregroundColor(.white)
                    .padding([.trailing], 370)
                Rectangle()
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .frame(height: 5)
                    .padding([.leading, .trailing], 10)
                    .foregroundColor(.white)
                    .opacity(0.3)
            }
            
            HStack {
                Text("0:00")
                    .opacity(0.6)
                    .foregroundColor(.white)
                Spacer()
                Text("-2:53")
                    .opacity(0.6)
                    .foregroundColor(.white)
            }
            .padding([.trailing, .leading], 10)
        }
    }
}

struct playbackView: View {
    var body: some View {
        Text("Implement Me")
    }
}

struct albumView : View {
    var body: some View {
        Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(10)
    }
}

struct extraView: View {                // 1
    var body: some View {                // 2
        HStack {                         // 3
            Image(systemName: "chevron.down") // 4
                .font(.title2)           // 5

            Spacer()                     // 6

            Text("Now Playing")          // 7
                .font(.subheadline)      // 8
                .fontWeight(.semibold)   // 9

            Spacer()                     // 10

            HStack(spacing: 20) {        // 11
                Image(systemName: "heart")                // 12
                Image(systemName: "square.and.arrow.up")  // 13
                Image(systemName: "ellipsis")             // 14
            }
            .font(.body)                 // 15
        }
        .padding(.horizontal)            // 16
        .padding(.top, 6)                // 17
        .foregroundColor(.white)         // 18
    }
}


#Preview {
    ContentView()
}
