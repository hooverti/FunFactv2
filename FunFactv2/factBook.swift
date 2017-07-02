//
//  factBook.swift
//  FunFactv2
//
//  Created by Timothy Hoover on 6/23/17.
//  Copyright © 2017 Timothy Hoover. All rights reserved.
//

import Foundation

var facts: [String] = [
    "Ants stretch when they wake up in the morning.",
    "Ostritches run faster than horses.",
    "Olympic gold medals are actually mostly made of silver.",
    "You are born with 300 bones; by the time you are an adult you will have 206.",
    "It takes about 8 minutes for light from the Sun to reach Earth.",
    "Some bamboo plants can grow almost a meter in just one day.",
    "Some penguins can leap 2-3 meters out of the water.",
    "The state of Florida is bigger than England.",
    "On average, it takes 66 days to form a new habit.",
    "Mammoths still walked the Earth when the Great Pyramid was being built.",
    "A crocodile can't stick it's tongue out.",
    "It is physically impossible for a pig to look up into the sky.",
    "Rats and horses can't vomit.",
    "A duck's quack doesn't echo.",
    "Like fingerprints, everyone's tongue print is different.",
    "Wearing headphones for an hour will increase the bacteria in your ear by 700 times.",
    "The Milky Way Galaxy moves through space at a rate of 343 miles per second.",
    "Nerve impulses travel through our bodies at 240 miles per hour.",
    "When you blush, the lining of your stomach blushes too.",
    "Adults are made of 7 octillion atoms.",
    "The human brain can make 32 thousand-trillion operations per second.",
    "Gorillas can catch human colds.",
    "A wild lion usually makes no more than twenty kills per year.",
    "Almost half the pigs in the world are in China.",
    "A housefly hums in the key of F.",
    "At birth, a baby kangaroo is only an inch long.",
    "Turtles can breathe through their butts.",
    "Cows have best friends.",
    "Norway has knighted a penguin.",
    "Dolphins have names for each other.",
    "A dog's nose print is as unique as human fingerprints.",
    "Crows are smart enough to play pranks on each other.",
    "The Anglo-Zanzibar War of 1896 is the shortest war on record, lasting 38 minutes.",
    "Albert Einstein was offered the position of Israel's second president in 1952.",
    "John F. Kennedy, Anthony Burgess, Aldous Huxley, and C.S. Lewis all died on the same day.",
    "Kim Jong Il wrote six operas.",
    "At the start of World War I, the U.S. Air Force had only 18 pilots.",
    "The 1666 Great Fire of London destroyed 13,500 homes but only killed 8 people.",
    "Cleopatra lived closer to the building of Pizza Hut than the Great Pyramid.",
    "The first photograph ever taken was in 1826.",
    "Oxford University predates the Aztec civilization.",
    "Humans landed on the moon just 66 years after the Wright brother's first flight.",
    "A Texas Instrument graphing calculator is more powerful than the computer on Apollo 11.",
    "France still used the guillotine when the first Star Wars film came out.",
    "Betty White is 6 years older than sliced bread.",
    "Warner Bros. was founded while the Ottoman Empire still existed.",
    "The Earth's population has doubled since 1968.",
    "There are whales off the coast of Alaska that were born 200 years ago.",
    "There are more lifeforms on your skin than there are people on the planet.",
    "Leonard da Vinci could write with one hand and draw with the other.",
    "There are over 200 corpses on Mt. Everest.",
    "All the clocks in Pulp Fiction are set at 4:20.",
    "'Green Eggs and Ham' uses only 50 different words.",
    "Russia didnt consider beer as alcohol until 2011.",
    "A hummingbird weighs less than a penny.",
    "The average American drinks about 600 sodas per year.",
    "A jellyfish is 95% water.",
    "A hippo can open its mouth wide enough to fit a 4' child inside.",
    "A giraffe can clean its ears with its own tongue.",
    "Men are 6 times more likely to be struck by lightning than women.",
    "The first emergency medical services were established in France in 1790.",
    "The longest time between two twins being born is 87 days.",
    "The world's deepest mailbox is in Susami Bay, Japan. It's 10 meters underwater.",
    "In 1923, jockey Frank Hayes won a race at Belmont Park in New York despite suffering a heart attack and dying mid-race. His body managed to stay in the saddle until the horse crossed the finish line.",
    "During World War II the crew of the HMS Trident kept a fully grown reindeer aboard their vessel for six weeks.",
    "The Dance Fever of 1518 was a month-long plague of inexplicable dancing in Strasbourg. Hundreds of people danced for about a month for no apparent reason.",
    "The Dutch village of Giethoorn has no roads, it is connected entirely by canals and footbridges.",
    "The top of the Eiffel Tower leans away from the Sun.",
    "The largest snowflake ever recorded measured 15 inches across.",
    "On Good Friday 1930, the BBC reported 'There is no news' and played piano music instead.",
    "Fredric Baur invented the Pringles can. When he died his ashes were buried in one.",
    "M&M's stands for 'Mars and Murries', the last names of the candy's creators.",
    "Ben & Jerry learned how to make ice cream from a $5 correspondence course offered by Penn State.",
    "When the mummy of Ramses II was sent to France it was issued a passport. Ramses' occupation was listed as 'King (deceased)'.",
    "In 1999, Furbies were banned from the National Security Agency's Maryland headquarters out of fear that the toys would repeat national security secrets.",
    "Only female mosquitos will bite you.",
    "Alaska is the only state that can be typed on one row of keys.",
    "The dot in a lower case 'i' is called a tittle.",
    "The only number whose letters are in alphabetical order is 40.",
    "Male students at Bringham Young University need a doctor's note to grow a beard.",
    "Obsessive nose picking is called Rhinotillexomania",
]

var usedFacts = [Int]()

func randomFact() -> String {
    let randomNumber:UInt32 = arc4random_uniform(UInt32(facts.count))
    let factNumber:Int = Int(randomNumber)
    //if factNumber was already in usedFacts then get new number
    //else add factNumber to usedFacts and return facts[factNumber]
    if usedFacts.contains(factNumber) {
        if usedFacts.count == facts.count {
            return "No more facts, come back later for more!"
        } else {
        return randomFact()
        }
    } else {
        usedFacts.append(factNumber)
        return facts[factNumber]
    }
}
