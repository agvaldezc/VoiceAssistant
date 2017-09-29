# VoiceAssistant
VoiceAssistant is a small easy-to-use implementation of iOS' AVSynthesizer. 

You only need 4 easy steps to use Text To Speech inside iOS:

1. Import the VoiceAssistent library using: 
```Swift 
import VoiceAssistant
``` 
or drag and drop VoiceAssistant.swift inside your project.
2. Create a VoiceAssistant instance inside your code.
3. Send strings to be read to VoiceAssistant with 
```Swift 
.addSpeechToQueue("Something to say")
```
4. Just 
```Swift 
.speak()
```
And there you have it! Text To Speech as easy as it is!

For more detailed instructions, read bellow.

# Instructions

## Table of content
[- Import VoiceAssistant](https://github.com/agvaldezc/VoiceAssistant/blob/master/README.md#import-voiceassistant). 
[- Creating VoiceAssistant instance](https://github.com/agvaldezc/VoiceAssistant#creating-voiceassistant-instance). 
    [1. Default language](https://github.com/agvaldezc/VoiceAssistant#1-default-language). 
    [2. Selecting a langauge tag from VoiceLanguage enum](https://github.com/agvaldezc/VoiceAssistant#2-selecting-a-langauge-tag-from-voicelanguage-enum). 
    [3. Specify language tag](https://github.com/agvaldezc/VoiceAssistant#3-specify-language-tag). 
    [2. Selecting a langauge tag from VoiceLanguage enum](https://github.com/agvaldezc/VoiceAssistant#2-selecting-a-langauge-tag-from-voicelanguage-enum). 
[- Feed text to be read by VoiceAsisstant](https://github.com/agvaldezc/VoiceAssistant#feed-text-to-be-read-by-voiceasisstant)
[- Speak!](https://github.com/agvaldezc/VoiceAssistant#speak). 
[- Additional functions](https://github.com/agvaldezc/VoiceAssistant#additional-functions). 
    [- How to know if voiceAssistant is speaking or not](https://github.com/agvaldezc/VoiceAssistant#how-to-know-if-voiceassistant-is-speaking-or-not). 
    [- How to stop voice assistant from speaking](https://github.com/agvaldezc/VoiceAssistant#how-to-stop-voice-assistant-from-speaking). 
    [- How to know if voiceAssistant is speaking or not](https://github.com/agvaldezc/VoiceAssistant#how-to-know-if-voiceassistant-is-speaking-or-not). 
        [1. Immediate stop](https://github.com/agvaldezc/VoiceAssistant#1-immediate-stop). 
        [2. Word stop](https://github.com/agvaldezc/VoiceAssistant#2-word-stop). 

## Import VoiceAssistant
To use VoiceAssistant inside your project, clone VoiceAssistant:
```git
git clone https://github.com/agvaldezc/VoiceAssistant.git
```
and after cloning it, drag and drop VoiceAssistant.swift inside your project.
## Creating VoiceAssistant instance
To create a VoiceAssistant instance, you can do it in 3 different ways:
### 1. Default language:
```Swift
let voiceAssistant = VoiceAssistant()
```
This will create a VoiceAsisstant using the default iOS voice with "en-US" langauge tag assigned.

### 2. Selecting a langauge tag from VoiceLanguage enum:
```Swift
let voiceAssistant = VoiceAssistant(voiceLanguage: .us)
```
This will create the VoiceAssistant instance using any of the defined supported languages in iOS.
### Note
Supported language enum that represent the different langauge tags inside iOS are the following:

#### Spanish
```Swift
    .es = "es-ES"
    .mx = "es-MX"
```
#### Arabic
```Swift
    .ar = "ar-SA"
```
#### Chinese
```Swift
    .chCN = "zh-CN"
    .chHK = "zh-HK"
    .chTW = "zh-TW"
```
#### Czech
```Swift
   .cs = "cs-CZ"
```
#### Danish
```Swift
    .da = "da-DK"
```
#### Dutch
```Swift
    .nlBE = "nl-BE"
    .nlNL = "nl-NL"
```
#### English
```Swift
    .enUS = "en-US"
    .enAU = "en-AU"
    .enGB = "en-GB"
    .enIE = "en-IE"
    .enZA = "en-ZA"
```
#### Finnish
```Swift
    .fi = "fi-FI"
```
#### French
```Swift
    .frCA = "fr-CA"
    .frFR = "fr-FR"
```
#### German
```Swift
    .de = "de-DE"
```
#### Greek
```Swift
    .el = "el-GR"
```
#### Hebrew
```Swift
    .he = "he-IL"
```
#### Hindi
```Swift
    .hi = "hi-IN"
```
#### Hungarian
```Swift
    .hu = "hu-HU"
```
#### Indonesian
```Swift
    .id = "id-ID"
```
#### Italian
```Swift
    .it = "it-IT"
```
#### Japanese
```Swift
    .jp = "ja-JP"
```
#### Korean
```Swift
    .ko = "ko-KR"
```
#### Norwegian
```Swift
    .no = "no-NO"
```
#### Polish
```Swift
    .pl = "pl-PL"
```
#### Portuguese
```Swift
    .ptBR = "pt-BR"
    .ptPT = "pt-PT"
```
#### Romanian
```Swift
    .ro = "ro-RO"
```
#### Russian
```Swift
    .ru = "ru-RU"
```
#### Slovak
```Swift
    .sk = "sk-SK"
```
#### Swedish
```Swift
    .sv = "sv-SE"
```
#### Thai
```Swift
    .th = "th-TH"
```
## 3. Specify language tag
```Swift
let voiceAssistant = VoiceAssistant(voiceLanguage: "en-US")
```
This will create the VoiceAssistant instance using the specified language tag. 
### Note
Supported language tags inside iOS are the following:

#### Spanish
```Swift
    "es-ES"
    "es-MX"
```
#### Arabic
```Swift
    "ar-SA"
```
#### Chinese
```Swift
    "zh-CN"
    "zh-HK"
    "zh-TW"
```
#### Czech
```Swift
   "cs-CZ"
```
#### Danish
```Swift
    "da-DK"
```
#### Dutch
```Swift
    "nl-BE"
    "nl-NL"
```
#### English
```Swift
    "en-US"
    "en-AU"
    "en-GB"
    "en-IE"
    "en-ZA"
```
#### Finnish
```Swift
    "fi-FI"
```
#### French
```Swift
    "fr-CA"
    "fr-FR"
```
#### German
```Swift
    "de-DE"
```
#### Greek
```Swift
    "el-GR"
```
#### Hebrew
```Swift
    "he-IL"
```
#### Hindi
```Swift
    "hi-IN"
```
#### Hungarian
```Swift
    "hu-HU"
```
#### Indonesian
```Swift
    "id-ID"
```
#### Italian
```Swift
    "it-IT"
```
#### Japanese
```Swift
    "ja-JP"
```
#### Korean
```Swift
    "ko-KR"
```
#### Norwegian
```Swift
    "no-NO"
```
#### Polish
```Swift
    "pl-PL"
```
#### Portuguese
```Swift
    "pt-BR"
    "pt-PT"
```
#### Romanian
```Swift
    "ro-RO"
```
#### Russian
```Swift
    "ru-RU"
```
#### Slovak
```Swift
    "sk-SK"
```
#### Swedish
```Swift
    "sv-SE"
```
#### Thai
```Swift
    "th-TH"
```
## Feed text to be read by VoiceAsisstant
Adding text to VoiceAssistant queue is as easy as calling the ```Swift .addTextToSpeechQueue(textToQueue: String)``` function.
### Examples
```Swift
voiceAssistant.addTextToSpeechQueue(textToQueue: "My name is Siri")
```
```Swift
let text = "My name is Siri"
voiceAssistant.addTextToSpeechQueue(textToQueue: text)
```
### Note
Keep in mind that the string sent to voiceAssistant has to match the language that VoiceAsisstant instance was created. VoiceAssistant DOES NOT TRANSLATE text to be spoken.
## Speak!
Now that you fed some text to voiceAssistant, let's make it speak ```Swift voiceAssistant.speak()``` Easy as that!

## Additional functions
VoiceAssistant has different helper functions just to have more control over it.
### How to know if voiceAssistant is speaking or not
```Swift
voiceAssistant.isSpeaking()
```
### How to stop voice assistant from speaking
You have two options to make voiceAssistant stop speaking:
#### 1. Immediate stop
This stops voiceAssistant immediatly.
```Swift
voiceAssistant.stopSpeaking(boundry: .immediate)
```
#### 2. Word stop
Use this if you want voiceAssistant to stop talking after pronouncing a word to achieve a more natural stop.
```Swift
voiceAssistant.stopSpeaking(boundry: .word)
```
