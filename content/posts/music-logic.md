---
author:
  name: "Lesley Pandian"
date: 2015-12-18
linktitle: Music-Logic
type:
- post
- posts
title: Music-Logic
weight: 10
series:
- Featured
---

During my Creative Automata class (Master's) we had learned about Digital signals and Automata theory. At the end of the course we had to create something that represented all the things we had learned over the course.
I have gotten these from pictures and files stored around my PC, I don't have the original project unfortunately

### Introduction:

Playing music on any instruments and creating a song requires a sequence of instructions to be executed at certain times. The result of this is a song.

A computer is a calculator, which usually doesn't go wrong (mostly not at all). The inner workings of a computer can be broken down into logic gates. Obviously the system to use the gates for generic instruction sets is a lot more complex. However, it should be possible to design a basic system which shows that it is possible for such a system to exist in Music.

By mapping input pulses to notes it should be possible to design a system which could play music by using only Logic gates and signals . I had a guitar handy and hence I started off with it, but this principle should be possible to translate to any musical instrument. We could possibly even invent an instrument which caters to this specific use case of logic gates.


{{< youtube 5ufhgg2Nj9A >}}


The initial development of the project was straight forward however, I had not taken into consideration some factor's during early development.

I was using a game engine (Unity) to develop an editor. Although Unity is very customizable, most of the heavy lifting had to be done by the developer.
Since I was effectively making an editor, I needed a was to save and load circuits the user had designing, I had come to this realization much later in development, and was not considered for the 'release'. 
The time management system of the pulse node was naive, and did not account for more complex music patterns. This greatly reduced the number of music pieces playable by the framework. Only repetitive beats would be able to be played by this framework.

Circuit explanation:
Each black node generates a pulse which is interpreted as a TRUE signal. While every other time it is FALSE.

Each node has a pre-defined start delay, and delay offset. After setting up the circuit a user would press the "Start" button on the top to run the timer which would then make each node count down and send pulses at the appropriate time.

Example:
As a benchmark I wanted to design a circuit which could play "Smoke on the Water" by Deep Purple.

Given that this type of system had not been designed before or documented properly, I had a tough time in identifying an approach which would result an optimal and extendable circuit design.

The simplest approach would be to use each node individually for each node, but that would increase the number of nodes used, as nodes per note. A more intuitive way was using 4 points of input (4 nodes) analogous to using 4 fingers to play the guitar.

For this system the timing system for the pulse nodes was a simple offset and delay timer, which would basically send periodic pulses on every delay, but the initial pulse will start by an offset timer.

However, this was not as simple as it seemed. Finally I came-up with this:

Notes to the chorus of smoke on the water – A,C,D – A,C,D#,D – A,C,D,C,A

A appears @ 1,4,7,11 (Offset – 1 , Delay – 3)
C appears @ 2,5,8,10(Offset – 2, Delay – 3, except the last value which has to be handled separately )
D appears @ 3,6,9,(Offset,3,Delay,3, with an exception of last note)
D# appears @ 5.5 ( Offset 5.5, Delay-11 Since it is between notes)

OpenGL work:
This was a really old version of unity where the 2D framework was in its infancy. The Line Renderer had not supported 2D project yet hence I had to do some interesting OpenGL work to draw a line. Give an (x1,y1) and an (x2,y2) coordinates on a screen I needed to draw a line between them.
Software used:
- Unity 3D
- C#
- Photoshop
- Audacity

Further Development ideas:
- The circuit is currently mapped to a Guitar. It would be interesting to see how the inputs and circuit design defer from instrument to instrument.
- Currently the timing system is just an initial time delay and a periodic offset. This system can be further improved by having a file which defined which nodes send out pulses when. This extension would greatly extend the system beyond it limitations.