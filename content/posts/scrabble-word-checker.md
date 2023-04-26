---
author:
  name: "Lesley Pandian"
date: 2022-07-21
linktitle: Scrabble Word Checker
type:
- post
- posts
title: Scrabble Word Checker
weight: 10
series:
- Featured
---

Whenever my friends and I play any word game (Scrabble/Quiddler etc.) we keep arguing about which 'source of truth' do we follow. Online dictionaries are very permissive, and hence are not good sources. So I decided to make my own word validator, which blackjack and hookers.

#### Introduction
I've worked with AWS using internal tools in my professional career, but never tried it as a customer. There are areas of improvements, but I think overall it was a good experience.

The site: [https://tituslesley89.github.io/scrabble-word-checker/](https://tituslesley89.github.io/scrabble-word-checker/)

#### Design considerations
- No one wants to download a new app, hence a website
- The application will be used sparsely and must not incur cost when no-one is playing, hence I decided to use AWS lambda for compute and s3 for storage
- It is impossible to come up with a complete list of valid/invalid words, and hence I created a way where I can mark/unmark a word/category as valid or invalid

#### Major challenges
- Using s3 as a data-store was a bit tricky. Not too difficult, but I couldn't find any simple wrapper around s3 that would obfuscate the writing and reading of data
- Parsing the response from Merriam-Webster and sanitizing responses was quite cumbersome. The json response from Merriam-webster is very un-intuative and the documentation is not very exhausted (like enum lists are not exhaustive). It is also not guaranteed that all fields in the JSON will exist, so a lot of edge cases needed to be managed.
- Validating a word: Sounds simple, but not really. A single word can have multiple definitions, and each definition has it's own category. This fact, along with the fact that we invalid categories and words made a validation a bit tricky.

#### Outcome
Super happy with how the site turned out. I spend $0 on hosting it, and spend upto $0.05 the month I was developing it. It would cost me very little when my friends actually use the app for a session.