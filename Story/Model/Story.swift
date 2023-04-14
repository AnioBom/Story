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
                title: "You wake up to the sound of your phone buzzing. Groaning, you reach over to see who's calling at this ungodly hour. It's your best friend, Sarah. You answer, trying to suppress a yawn. Hey, Sarah. What's up?",
                answer: [
                    Answer(
                        title: "Hi, I'm fine",
                        type: .first),
                    Answer(
                        title: "You answer “I want to sleep” and hand up",
                        type: .second)
                ]
            ),
            Story(
                title: "Have you seen the news? - she asks, her voice urgent.",
                answer: [
                    Answer(title: "No, I just woke up. What's going on?",
                           type: .first),
                    Answer(title: "Yes, this is some kind of joke, don't mind",
                           type: .second)
                ]
            ),
            Story(
                title: "It's all over Twitter. They've discovered a hidden treasure in Spain, and the first person to find it gets to keep it all. We have to go.",
                answer: [
                Answer(
                    title: "A treasure hunt in Spain? It sounds like a dream come true. But you also have responsibilities. You can't just drop everything and go to another country. What about work?",
                    type: .first),
                Answer(title: "No, I have a lot of work",
                       type: .second)
                ]
            ),
            Story(
                title: "Take a few days off. It's worth it. Trust me",
                answer: [
                    Answer(title: "You're torn. On the one hand, you've always wanted to go to Spain. On the other hand, this seems like a long shot. You need more information.", type: .first),
                    Answer(title: "I can't. I'm on a business trip to Toronto.", type: .second)
                ])
                    
        ]
    }
}

