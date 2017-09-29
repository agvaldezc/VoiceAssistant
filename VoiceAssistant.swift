//
//  VoiceAssistant.swift
//  WatsonAssistant
//
//  Created by Alan Valdez on 9/27/17.
//  Copyright © 2017 Alan Valdez. All rights reserved.
//

import Foundation
import AVFoundation

/**
 Enum with all the available languages inside the app and specifies a language to use for VoiceAssistant.
*/
public enum VoiceLanguage: String {
    case es = "es-ES"
    case mx = "es-MX"
    case enUS = "en-US"
    case ar = "ar-SA"
    case chCN = "zh-CN"
    case chHK = "zh-HK"
    case chTW = "zh-TW"
    case cs = "cs-CZ"
    case da = "da-DK"
    case nlBE = "nl-BE"
    case nlNL = "nl-NL"
    case enAU = "en-AU"
    case enGB = "en-GB"
    case enIE = "en-IE"
    case enZA = "en-ZA"
    case fi = "fi-FI"
    case frCA = "fr-CA"
    case frFR = "fr-FR"
    case de = "de-DE"
    case el = "el-GR"
    case he = "he-IL"
    case hi = "hi-IN"
    case hu = "hu-HU"
    case id = "id-ID"
    case it = "it-IT"
    case jp = "ja-JP"
    case ko = "ko-KR"
    case no = "no-NO"
    case pl = "pl-PL"
    case ptBR = "pt-BR"
    case ptPT = "pt-PT"
    case ro = "ro-RO"
    case ru = "ru-RU"
    case sk = "sk-SK"
    case sv = "sv-SE"
    case th = "th-TH"
}

/**
 VoiceAssistant creates an easy interface to use Text To Speech inside iOS
 
 **Attributes**:
- synthesizer: AVSpeechSynthesizer.
- utteranceQueue: [AVSpeechUtterance].
- voiceToUse: AVSpeechSynthesisVoice.
- voices: [AVSpeechSynthesisVoice].
 
*/
public class VoiceAssistant {
    
    //Object to speak out messages using iOS Voices
    var synthesizer : AVSpeechSynthesizer?
    
    //Speech utterance that cointains the message to be read
    var utteranceQueue : [AVSpeechUtterance?]
    
    //Object that has all the available voicesin system
    var voiceToUse : AVSpeechSynthesisVoice?
    
    //All available voices in system
    var voices : [AVSpeechSynthesisVoice]?
    
    /**
         Inits VoiceAssistant with default voice as US english
     */
    init () {
        synthesizer = AVSpeechSynthesizer()
        voices = AVSpeechSynthesisVoice.speechVoices()
        voiceToUse = AVSpeechSynthesisVoice(language: VoiceLanguage.enUS.rawValue)
        utteranceQueue = []
    }
    /**
         Inits VoiceAssistant with a given voice language
     - Parameters:
         - voiceLanguage: The enum value of VoiceLanguage to
     */
    init (voiceLanguage: VoiceLanguage) {
        synthesizer = AVSpeechSynthesizer()
        voices = AVSpeechSynthesisVoice.speechVoices()
        voiceToUse = AVSpeechSynthesisVoice(language: voiceLanguage.rawValue)
        utteranceQueue = []
    }
    
    /**
     Inits VoiceAssistant with a given voice language
     - Parameters:
     - voiceLanguage: The string value of VoiceLanguage to use using xx-XX code
     */
    init (voiceLanguage: String) {
        synthesizer = AVSpeechSynthesizer()
        voices = AVSpeechSynthesisVoice.speechVoices()
        voiceToUse = AVSpeechSynthesisVoice(language: voiceLanguage)
        utteranceQueue = []
    }
    
    /**
         Adds a speech utteracy to utteracyQueue.
         - parameter textToQueue: The string tha wants to be spoken by VoiceAssistant
     */
    func addTextToSpeechQueue(textToQueue: String) -> Void {
        
        let textWithoutEmojis = textToQueue.stringByRemovingEmoji()
        let speechUtterance = AVSpeechUtterance(string: textWithoutEmojis)
        speechUtterance.voice = voiceToUse
        
        utteranceQueue.append(speechUtterance)
    }
    
    /**
         Speaks the utteracies that are inside utteracyQueue
     
         - Returns: Nothing
     */
    func speak() -> Void {
        for utterance in utteranceQueue {
            synthesizer?.speak(utterance!)
        }
        
        utteranceQueue.removeAll(keepingCapacity: false)
    }
    
    /**
         Prints all the available voice langauges in current iOS version
     
         - Returns: Nothing
     */
    func printAvailableVoices() -> Void {
        for voice in voices! {
            print(voice)
        }
    }
    
    /**
     Returns boolean representing if VoiceAssistant is speaking or not.
     
     - Returns: synthesizer.isSpeaking
     */
    func isSpeaking() -> Bool {
        return (synthesizer?.isSpeaking)!
    }
    
    /**
     If VoiceAssistant is speaking, turn off the audio queued and empty the utteringQueue.
     
     - Parameter boundry: Whether VoiceAssistant should stop talking immediatly or after finishing a word.
     
     - Returns: Nothing
     */
    func stopSpeaking(boundry: AVSpeechBoundary) -> Void {
        synthesizer?.stopSpeaking(at: boundry)
    }
}

/**
 Extend Character class to know is a character is an Emoji
*/
extension Character {
    fileprivate func isEmoji() -> Bool {
        return Character(UnicodeScalar(UInt32(0x1d000))!) <= self && self <= Character(UnicodeScalar(UInt32(0x1f77f))!)
            || Character(UnicodeScalar(UInt32(0x2100))!) <= self && self <= Character(UnicodeScalar(UInt32(0x26ff))!)
    }
}

/**
 Extends String class to remove Emojis from a String
*/
extension String {
    func stringByRemovingEmoji() -> String {
        return String(self.characters.filter { !$0.isEmoji() })
    }
}

