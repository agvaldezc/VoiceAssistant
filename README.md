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

## Import VoiceAssistant
To use VoiceAssistant inside your project, clone VoiceAssistant:
```git
git clone https://github.com/agvaldezc/VoiceAssistant.git
```
and after cloning it, drag and drop VoiceAssistant.swift inside your project.
## Creating VoiceAssistant instance
To create a VoiceAssistant instance, you can do it in 3 different ways:
1. Default language:
```Swift
let voiceAssistant = VoiceAssistant()
```
This will create a VoiceAsisstant using the default iOS voice with "en-US" langauge tag assigned.

2. Selecting a langauge tag from VoiceLanguage enum:
```Swift
let voiceAssistant = VoiceAssistant(voiceLanguage: .us)
```
This will create the VoiceAssistant instance using any of the defined supported languages in iOS.
### Note
Supported language enum inside iOS are the following:
```
    .es = "es-ES"
    .mx = "es-MX"
    .enUS = "en-US"
    .ar = "ar-SA"
    .chCN = "zh-CN"
    .chHK = "zh-HK"
    .chTW = "zh-TW"
    .cs = "cs-CZ"
    .da = "da-DK"
    .nlBE = "nl-BE"
    .nlNL = "nl-NL"
    .enAU = "en-AU"
    .enGB = "en-GB"
    .enIE = "en-IE"
    .enZA = "en-ZA"
    .fi = "fi-FI"
    .frCA = "fr-CA"
    .frFR = "fr-FR"
    .de = "de-DE"
    .el = "el-GR"
    .he = "he-IL"
    .hi = "hi-IN"
    .hu = "hu-HU"
    .id = "id-ID"
    .it = "it-IT"
    .jp = "ja-JP"
    .ko = "ko-KR"
    .no = "no-NO"
    .pl = "pl-PL"
    .ptBR = "pt-BR"
    .ptPT = "pt-PT"
    .ro = "ro-RO"
    .ru = "ru-RU"
    .sk = "sk-SK"
    .sv = "sv-SE"
    .th = "th-TH"
```
3. Specify language tag
```Swift
let voiceAssistant = VoiceAssistant(voiceLanguage: "en-US")
```
This will create the VoiceAssistant instance using the specified language tag. 
### Note
Supported language tags inside iOS are the following:
```
Arabic ("ar-SA")
Chinese ("zh-CN", "zh-HK", "zh-TW")
Czech ("cs-CZ")
Danish ("da-DK")
Dutch ("nl-BE", "nl-NL")
English ("en-AU", "en-GB", "en-IE", "en-US", "en-ZA")
Finnish ("fi-FI")
French ("fr-CA", "fr-FR")
German ("de-DE")
Greek ("el-GR")
Hebrew ("he-IL")
Hindi ("hi-IN")
Hungarian ("hu-HU")
Indonesian ("id-ID")
Italian ("it-IT")
Japanese ("ja-JP")
Korean ("ko-KR")
Norwegian ("no-NO")
Polish ("pl-PL")
Portuguese ("pt-BR", "pt-PT")
Romanian ("ro-RO")
Russian ("ru-RU")
Slovak ("sk-SK")
Spanish ("es-ES", "es-MX")
Swedish ("sv-SE")
Thai ("th-TH")
Turkish ("tr-TR")
```
