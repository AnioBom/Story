//
//  Story.swift
//  Story
//
//  Created by mac on 4/13/23.
//

import Foundation

struct Story {
    let title: String
    let answer: [Answer]
}

struct Answer {
    let title: String
    let type: StoryType
}

enum StoryType {
    case first
    case second
    
    var definition: String {
        switch self {
        case .first:
            return "You at home!"
        case .second:
            return "You are lost!"
        }
    }
    
}

extension Story {
    static func getStory() -> [Story] {
        [
            Story(
                title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'",
                answer: [
                    Answer(
                        title: "I'll hop in. Thanks for the help!",
                        type: .first),
                    Answer(
                        title: "Better ask him if he's a murderer first.",
                        type: .second)
                ]
            ),
            Story(
                title: "He nods slowly, unfazed by the question.",
                answer: [
                    Answer(title: "At least he's honest. I'll climb in.",
                           type: .first),
                    Answer(title: "Wait, I know how to change a tire.",
                           type: .second)
                ]
            ),
            Story(
                title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
                answer: [
                Answer(
                    title: "I love Elton John! Hand him the cassette tape.",
                    type: .first),
                Answer(title: "It's him or me! You take the knife and stab him.",
                       type: .second)
                ]
            ),
            Story(
                title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
                answer: [
                    Answer(title: "The End", type: .first),
                    Answer(title: "The End", type: .second)
                ])
                    
        ]
    }
}

