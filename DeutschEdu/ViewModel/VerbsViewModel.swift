//
//  VerbsViewModel.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 23/11/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import Foundation

class VerbsViewModel: ObservableObject {
    @Published private(set) var lernenVerbs = [
        Verben(pronoun: "ich", base: "lern", sufix: "e"),
        Verben(pronoun: "du", base: "lern", sufix: "st"),
        Verben(pronoun: "er/sie/es", base: "lern", sufix: "t"),
        Verben(pronoun: "wir", base: "lern", sufix: "en"),
        Verben(pronoun: "ihr", base: "lern", sufix: "t"),
        Verben(pronoun: "sie/Sie", base: "lern", sufix: "en")
    ]
    
    @Published private(set) var fahrenVerbs = [
        Verben(pronoun: "ich", base: "fahr", sufix: "e"),
        Verben(pronoun: "du", base: "fähr", sufix: "st"),
        Verben(pronoun: "er/sie/es", base: "fähr", sufix: "t"),
        Verben(pronoun: "wir", base: "fahr", sufix: "en"),
        Verben(pronoun: "ihr", base: "fahr", sufix: "t"),
        Verben(pronoun: "sie/Sie", base: "fahr", sufix: "en")
    ]
    
    @Published private(set) var verbHaben = [
        Verben(pronoun: "ich", base: "hab", sufix: "e"),
        Verben(pronoun: "du", base: "ha", sufix: "st"),
        Verben(pronoun: "er/sie/es", base: "ha", sufix: "t"),
        Verben(pronoun: "wir", base: "hab", sufix: "en"),
        Verben(pronoun: "ihr", base: "hab", sufix: "t"),
        Verben(pronoun: "sie/Sie", base: "hab", sufix: "en")
    ]
    
    @Published private(set) var verbSein = [
        Verben(pronoun: "ich", base: "", sufix: "bin"),
        Verben(pronoun: "du", base: "", sufix: "bist"),
        Verben(pronoun: "er/sie/es", base: "", sufix: "ist"),
        Verben(pronoun: "wir", base: "", sufix: "sind"),
        Verben(pronoun: "ihr", base: "", sufix: "seid"),
        Verben(pronoun: "sie/Sie", base: "", sufix: "sind")
    ]
    
    
    @Published private(set) var prateritumLernen = [
        Verben(pronoun: "ich", base: "lern", sufix: "te"),
        Verben(pronoun: "du", base: "lern", sufix: "test"),
        Verben(pronoun: "er/sie/es", base: "lern", sufix: "te"),
        Verben(pronoun: "wir", base: "lern", sufix: "ten"),
        Verben(pronoun: "ihr", base: "lern", sufix: "tet"),
        Verben(pronoun: "sie/Sie", base: "lern", sufix: "ten")
    ]
    
    // LINK FOR IRREGULAR VERBS + HABEN/SEIN
    @Published private(set) var prateritumFahren = [
        Verben(pronoun: "ich", base: "fuhr", sufix: ""),
        Verben(pronoun: "du", base: "fuhr", sufix: "st"),
        Verben(pronoun: "er/sie/es", base: "fuhr", sufix: ""),
        Verben(pronoun: "wir", base: "fuhr", sufix: "en"),
        Verben(pronoun: "ihr", base: "fuhr", sufix: "t"),
        Verben(pronoun: "sie/Sie", base: "fuhr", sufix: "en")
       ]
    
    @Published private(set) var prateritumHaben = [
           Verben(pronoun: "ich", base: "war", sufix: ""),
           Verben(pronoun: "du", base: "war", sufix: "st"),
           Verben(pronoun: "er/sie/es", base: "war", sufix: ""),
           Verben(pronoun: "wir", base: "war", sufix: "en"),
           Verben(pronoun: "ihr", base: "war", sufix: "t"),
           Verben(pronoun: "sie/Sie", base: "war", sufix: "en")
          ]
    
    @Published private(set) var prateritumSein = [
           Verben(pronoun: "ich", base: "hatte", sufix: ""),
           Verben(pronoun: "du", base: "hatte", sufix: "st"),
           Verben(pronoun: "er/sie/es", base: "hatte", sufix: ""),
           Verben(pronoun: "wir", base: "hatte", sufix: "en"),
           Verben(pronoun: "ihr", base: "hatte", sufix: "t"),
           Verben(pronoun: "sie/Sie", base: "hatte", sufix: "en")
          ]
    
    
    @Published var aboutVerbs = VerbInfo(tenseHeader: "Verbs in German", tenseText: "In german we have weak and strong verbs. Weak verbs are classified as regular, while strong verbs are classified as irregular. Based on that in germany there are rules for regular and irregular verbs and you will learn them here!.", weakVerb: "WEAK VERBS", strongVerb: "STRONG VERBS", weakVerbCaption: "Die conjugation of weak verbs in german is very simple. Most of verbs in german are weak verbs so if you follow this notes you will not have problems with them. Stem vowel stays the same and on it we just add extensions as following:", strongVerbCaption: "Strong verbs in german belong ina group of something more than 200 verbs. Most important rule is that the vowel from stem vowel is changing and we add extensions on it.")
    
    @Published var prateritumTense = VerbInfo(tenseHeader: "Präteritum in German", tenseText:  "For an action in the past, there are basically 2 options in German, the and the Perfekt. The is used:", weakVerb: "regular konjugation", strongVerb: "irregular conjugation", weakVerbCaption: "It is formed in the following way for regular verbs:", strongVerbCaption: "Stronuecziwgczigiegfigerifgiufgif")
    
    // LINK FOR MORE DETAILS
    @Published var modalVerbs = VerbInfo(tenseHeader: "Modalverben in German", tenseText:  "Modalverben sind im Deutschen die Verben dürfen, können, mögen, müssen, sollen und wollen. Diese Verben benötigen normalerweise ein weiteres Verb (das Vollverb) im Infinitiv. Modalverben ändern den Inhalt einer Aussage – es ist zum Beispiel ein Unterschied, ob jemand etwas tun muss oder darf.", weakVerb: "modalverben prasens", strongVerb: "modalverben präteritum", weakVerbCaption: "müssen", strongVerbCaption: "möchten")
    
    
    @Published private(set) var modalMussen = [
     Verben(pronoun: "ich", base: "muss", sufix: ""),
     Verben(pronoun: "du", base: "muss", sufix: "t"),
     Verben(pronoun: "er/sie/es", base: "muss", sufix: ""),
     Verben(pronoun: "wir", base: "müss", sufix: "en"),
     Verben(pronoun: "ihr", base: "müss", sufix: "t"),
     Verben(pronoun: "sie/Sie", base: "müss", sufix: "en")
    ]
    
    @Published private(set) var modalMochten = [
     Verben(pronoun: "ich", base: "möchte", sufix: ""),
     Verben(pronoun: "du", base: "möchte", sufix: "st"),
     Verben(pronoun: "er/sie/es", base: "möchte", sufix: ""),
     Verben(pronoun: "wir", base: "möchte", sufix: "en"),
     Verben(pronoun: "ihr", base: "möchte", sufix: "t"),
     Verben(pronoun: "sie/Sie", base: "möchte", sufix: "en")
    ]
    
    @Published private(set) var modalMochtenPrat = [
     Verben(pronoun: "ich", base: "mochte", sufix: "te"),
     Verben(pronoun: "du", base: "mochte", sufix: "test"),
     Verben(pronoun: "er/sie/es", base: "mochte", sufix: "te"),
     Verben(pronoun: "wir", base: "mochte", sufix: "ten"),
     Verben(pronoun: "ihr", base: "mochte", sufix: "tet"),
     Verben(pronoun: "sie/Sie", base: "mochte", sufix: "ten")
    ]
    
    @Published private(set) var modalMussenPrat = [
     Verben(pronoun: "ich", base: "muss", sufix: "te"),
     Verben(pronoun: "du", base: "muss", sufix: "test"),
     Verben(pronoun: "er/sie/es", base: "muss", sufix: "te"),
     Verben(pronoun: "wir", base: "muss", sufix: "ten"),
     Verben(pronoun: "ihr", base: "muss", sufix: "tet"),
     Verben(pronoun: "sie/Sie", base: "muss", sufix: "ten")
    ]
    
    @Published private(set) var perfektGegangen = [
     Verben(pronoun: "ich", base: "bin", sufix: "gegangen"),
     Verben(pronoun: "du", base: "bist", sufix: "gegangen"),
     Verben(pronoun: "er/sie/es", base: "ist", sufix: "gegangen"),
     Verben(pronoun: "wir", base: "sind", sufix: "gegangen"),
     Verben(pronoun: "ihr", base: "seid", sufix: "gegangen"),
     Verben(pronoun: "sie/Sie", base: "sind", sufix: "gegangen")
    ]
    
    @Published private(set) var perfektGelesen = [
        Verben(pronoun: "ich", base: "habe", sufix: "gelesen"),
        Verben(pronoun: "du", base: "hast", sufix: "gelesen"),
        Verben(pronoun: "er/sie/es", base: "hat", sufix: "gelesen"),
        Verben(pronoun: "wir", base: "haben", sufix: "gelesen"),
        Verben(pronoun: "ihr", base: "habt", sufix: "gelesen"),
        Verben(pronoun: "sie/Sie", base: "haben", sufix: "gelesen")
       ]
    
        @Published var perfektVerbs = VerbInfo(tenseHeader: "Perfekt in German", tenseText:  "The perfect tense, also called present perfect (Perfekt), is a past tense. We use it to speak about actions completed in the recent past. In spoken German, the present perfect tense is often used instead of the past tense. We can translate the perfect tense using the English simple past tense.", weakVerb: "Perfekt mit haben", strongVerb: "Perfekt mit sein", weakVerbCaption: "we use verbs with 'haben' in Perfekt with verbs that take an accusative object, verbs that do not express a change of place or state and reflexive verbs", strongVerbCaption: "in German we use 'sein' in Perfekt with verbs that indicate some movement, change of state or action, verbs such as: bleiben, gelingen, sein, werden")

    
    @Published private(set) var clausesSentances = [
        SubordinateClauses(firstSentance: "ich im Lotto", connective: "Wenn", secondSentance: ",kaufe ich ein Auto.", verb: "gewinne", usage: "We are using wenn in a subordinate clauses. For repeating events in the past, events in the future and events in the present."),
        SubordinateClauses(firstSentance: "ich ein Kind,", connective: "Als", secondSentance: ",war ich schüchtern(shy).", verb: "war", usage: "We are using als in a subordinate clauses. To be more precise. In a specific event in the past and for persistent state in the past that does not repeat itself."),
        SubordinateClauses(firstSentance: "soll ich mit dem Abendessen", connective: "Wann", secondSentance: "?", verb: "anfangen", usage: "We are using wenn as a question word in a questions about time and in indirect questions. ")
    ]
    
    @Published private(set) var clausesSentancesTwo = [
        SubordinateClauses(firstSentance: "Sie muss zu Hause bleiben,", connective: "weil", secondSentance: "sie krank", verb: "ist", usage: "In german weil would be translated as because. Weil introduces subordinate clause that is why verb is at the end in the sentance."),
        SubordinateClauses(firstSentance: "Ich spare,", connective: "damit", secondSentance: "ich das Geld", verb: "habe.", usage: "In german damit is a clause that would be translated as SO. For example I am saving money, so I would pay some bills."),
        SubordinateClauses(firstSentance: "Er hat dich gefragt,", connective: "ob", secondSentance: "du ins Kino", verb: "gehen möchtest.", usage: "In german ob would be translated as if. For example: Mia is asking you if you would help her with homework. The verb goes at the last position."),
        SubordinateClauses(firstSentance: "Ich mag Kinder,", connective: "obwohl", secondSentance: "ich keine", verb: "habe.", usage: "Obwohl would be translated as although in english. In obwohl verb goes at the last position in sentance."),
        SubordinateClauses(firstSentance: "Ich wohne in München,", connective: "seit", secondSentance: "ich", verb: "geboren bin.", usage: "Seit would be translated as since. For example I am living in Zagreb since I was born. Verb is positioned at the last place."),
        SubordinateClauses(firstSentance: "Ich lerne Deutsch", connective: "während", secondSentance: "ich", verb: "studiere.", usage: "Während would be translated as while. For example while I am studying I am working as a student. Verb goes at the last position.")
    ]
    
    @Published private(set) var plusperfektLesen = [
    Verben(pronoun: "", base: "HATTEN", sufix: "PARTIZIP II"),
     Verben(pronoun: "ich", base: "hatte", sufix: "gelesen"),
     Verben(pronoun: "du", base: "hattest", sufix: "gelesen"),
     Verben(pronoun: "er/sie/es", base: "hatte", sufix: "gelesen"),
     Verben(pronoun: "wir", base: "hatten", sufix: "gelesen"),
     Verben(pronoun: "ihr", base: "hattet", sufix: "gelesen"),
     Verben(pronoun: "sie/Sie", base: "hatten", sufix: "gelesen")
    ]
    
    @Published private(set) var plusperfektGehen = [
        Verben(pronoun: "", base: "WAREN", sufix: "PARTIZIP II"),
        Verben(pronoun: "ich", base: "war", sufix: "gegangen"),
        Verben(pronoun: "du", base: "warst", sufix: "gegangen"),
        Verben(pronoun: "er/sie/es", base: "war", sufix: "gegangen"),
        Verben(pronoun: "wir", base: "waren", sufix: "gegangen"),
        Verben(pronoun: "ihr", base: "wart", sufix: "gegangen"),
        Verben(pronoun: "sie/Sie", base: "waren", sufix: "gegangen")
       ]
    
    @Published var plusPerfektVerbs = VerbInfo(tenseHeader: "Plusquamperfekt", tenseText: "The past perfect or pluperfect (Plusquamperfekt) expresses actions that took place before a certain point in the past. It is the German equivalent of the English past perfect tense. It consists of past form of sein/haben and Partizip II.", weakVerb: "Plusquamperfekt mit haben", strongVerb: "Plusquamperfekt mit sein", weakVerbCaption: "consists of conjugation of past form of haben - hatten and partizip II. Used for verbs that indicate state.", strongVerbCaption: "consists of conjugation of past form of sein - waren and partizip II. Used for verbs that indicate action or movement.")
    
    @Published var partizipVerbs = VerbInfo(tenseHeader: "Partizip in German", tenseText: "There are two participles in German. Partizip I also known as Partizip Präsens and Partizip II, known as Partizip Perfekt.", weakVerb: "Partizip I", strongVerb: "Partizip II", weakVerbCaption: "Partizip I behaves as adjective. It is constructed with the infinive of the verb + d. However, two verbs do not follow this rule because they are only verbs in german that do not end with -en, -ln or -rn. Sein and tun.", strongVerbCaption: "We use partizip II in Perfekt, Plusquamperfekt and Futur II. There are many rules that could be applied how to construct the Partizip II, but also there are many exceptions.")
    
    @Published var partizipIVerbs = [
        Verben(pronoun: "haben", base: "haben", sufix: "d"),
        Verben(pronoun: "können", base: "können", sufix: "d"),
        Verben(pronoun: "singen", base: "singen", sufix: "d"),
        Verben(pronoun: "fähren", base: "fähren", sufix: "d"),
        Verben(pronoun: "sein", base: "", sufix: "seiend"),
        Verben(pronoun: "tun", base: "", sufix: "tuend")
    ]
    
    @Published var partizipIIVerbs = [
        Verben(pronoun: "lernen", base: "ge", sufix: "lern-t"),
        Verben(pronoun: "hören", base: "ge", sufix: "hör-t"),
        Verben(pronoun: "interessieren", base: "interessier", sufix: "t"),
        Verben(pronoun: "studieren", base: "studier", sufix: "t"),
        Verben(pronoun: "lesen", base: "ge", sufix: "les-en"),
        Verben(pronoun: "gehen", base: "ge", sufix: "gang-en")
    ]
}
