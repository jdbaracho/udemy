//
//  ContentView.swift
//  WeatherApp
//
//  Created by João Domingos Baracho on 13/04/2026.
//

import SwiftUI

struct ContentView: View {

    @State var isDayTime: Bool = true

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(
                    colors: isDayTime
                        ? [Color.blue, Color("lightBlue")]
                        : [Color.gray, Color.black]
                ),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).edgesIgnoringSafeArea(.all)

            VStack(spacing: 40) {
                Text("London")
                    .font(.system(size: 32))
                    .foregroundColor(.white)

                VStack(spacing: 4) {
                    Image(
                        systemName: isDayTime ? "cloud.sun.fill" : "moon.stars"
                    )
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    Text("20º")
                        .font(.system(size: 36))
                        .foregroundColor(.white)
                }

                HStack {
                    DayWeatherContainer(
                        dayName: "MON",
                        imageName: "cloud.sun.fill",
                        degreesTemperature: 23
                    )
                    DayWeatherContainer(
                        dayName: "TUE",
                        imageName: "sun.max.fill",
                        degreesTemperature: 33
                    )
                    DayWeatherContainer(
                        dayName: "WED",
                        imageName: "wind.snow",
                        degreesTemperature: 8
                    )
                    DayWeatherContainer(
                        dayName: "THU",
                        imageName: "sunset.fill",
                        degreesTemperature: 23
                    )
                    DayWeatherContainer(
                        dayName: "FRI",
                        imageName: "snow",
                        degreesTemperature: 3
                    )
                    DayWeatherContainer(
                        dayName: "SAT",
                        imageName: "cloud.sun.fill",
                        degreesTemperature: 31
                    )
                    DayWeatherContainer(
                        dayName: "SUN",
                        imageName: "cloud.sun.fill",
                        degreesTemperature: 23
                    )
                }

                Spacer()

                Button(
                    action: { isDayTime = !isDayTime },
                    label: {
                        Text("Change Day Time")
                            .frame(width: 280, height: 50)
                            .background(.white)
                            .font(.system(size: 20, weight: .bold))
                            .cornerRadius(10)
                    }
                )

                Spacer()
            }
        }
    }
}

struct DayWeatherContainer: View {
    let dayName: String
    let imageName: String
    let degreesTemperature: Int
    var body: some View {
        VStack(spacing: 8) {
            Text(dayName)
                .font(.system(size: 20))
                .foregroundColor(.white)

            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(.white)

            Text("\(degreesTemperature)º")
                .font(.system(size: 20))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ContentView()
}
