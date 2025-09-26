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
        VStack(spacing: 6) {
            Text("Espresso")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .lineLimit(2)

            Text("Sabrina Carpenter")
                .font(.subheadline)
                .foregroundColor(Color(.systemGray3))
        }
        .padding(.horizontal)
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
        VStack(spacing: 10) {
            HStack {
                Image(systemName: "shuffle")
                Spacer()
                Image(systemName: "backward.fill")
                Spacer()
                Button(action: {
                    // play action goes here
                }) {
                    Image(systemName: "play.fill")
                        .font(.system(size: 28))
                        .padding(18)
                        .background(Circle().fill(Color.white))
                        .foregroundColor(.black)
                }
                Spacer()
                Image(systemName: "forward.fill")
                Spacer()                         
                Image(systemName: "repeat")      
            }
            .padding(.horizontal, 40)            
            .foregroundColor(.white)            

            HStack {                             
                Text("Device")
                    .font(.caption)
                    .foregroundColor(Color(.systemGray3))
                Spacer()
                Image(systemName: "speaker.wave.3.fill")
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 36)          
            .padding(.bottom, 6)
        }
    }
}


struct albumView : View {
    var body: some View {
        Image("Espresso")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(10)
    }
}

struct extraView: View {
    var body: some View {
        HStack {
            Image(systemName: "chevron.down")
                .font(.title2)

            Spacer()

            Text("Now Playing")
                .font(.subheadline)
                .fontWeight(.semibold)

            Spacer()

            HStack(spacing: 20) {
                Image(systemName: "heart")
                Image(systemName: "square.and.arrow.up")
                Image(systemName: "ellipsis")            
            }
            .font(.body)                
        }
        .padding(.horizontal)       
        .padding(.top, 6)           
        .foregroundColor(.white)   
    }
}


#Preview {
    ContentView()
}
