//
//  06_AstronautLoadingData.swift
//  08_Moonshot
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 8/6/23.
//

import SwiftUI

struct _6_10_Astronaut: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    @State private var showingGrid = false
    
    var body: some View {
        NavigationView {
            if showingGrid {
                Group {
                    GridLayout(astronauts: astronauts, missions: missions)
                }
                .navigationTitle("Moonshot")
                .background(.darkBackground)
                .preferredColorScheme(.dark)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            showingGrid.toggle()
                        }) {
                            Image(systemName: showingGrid ? "square.grid.2x2" : "list.bullet")
                                .imageScale(.large)
                        }
                    }
                }
            }else{
                Group {
                    ListLayout(astronauts: astronauts, missions: missions)
                }
                .navigationTitle("Moonshot")
                .background(.darkBackground)
                .preferredColorScheme(.dark)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            showingGrid.toggle()
                        }) {
                            Image(systemName: showingGrid ? "square.grid.2x2" : "list.bullet")
                                .imageScale(.large)
                        }
                    }
                }
            }
        }
    }
}

struct ListLayout: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    var body: some View {
        List {
            ForEach(missions) { mission in
                NavigationLink(destination: MissionView(mission: mission, astronauts: astronauts)) {
                    HStack {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                        
                        VStack {
                            Text(mission.displayName)
                                .font(.headline)
                            Text(mission.formatterLaunchDate)
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        .padding(.vertical)
                    }
                }
            }
            .listRowBackground(Color.darkBackground)
        }
        .listStyle(.plain)
        .padding()
        .background(Color.darkBackground)
        .preferredColorScheme(.dark)
    }
}
struct GridLayout: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(mission: mission, astronauts: astronauts)
                    } label: {
                        VStack {
                            Image(mission.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .padding()
                            
                            VStack {
                                Text(mission.displayName)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Text(mission.formatterLaunchDate)
                                    .font(.caption)
                                    .foregroundColor(.white.opacity(0.5))
                            }
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .background(.lightBackground)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.lightBackground)
                        )
                    }
                }
            }
            .padding([.horizontal,.bottom])
        }
    }
}
struct _6_AstronautLoadingData_Previews: PreviewProvider {
    static var previews: some View {
        _6_10_Astronaut()
    }
}
