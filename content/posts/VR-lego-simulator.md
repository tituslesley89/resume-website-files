---
author:
  name: "Lesley Pandian"
date: 2017-11-05
linktitle: VR Lego Simulator
type:
- post
- posts
title: VR Lego Simulator
weight: 10
series:
- Featured
---

During my Virtual Reality Course (Master's) we had to come up with a system to construct and de-construct Lego. The project was done as a team of 3 developers and 2 artists.

The system was developed using FIVE-UDE version of Unity (A custom made Unity Version for developing application for the UTDallas Motion Capture Lab). We had access to a Motion capture Lab which used Vicon Cameras to track the motion of the users Oculus Rift (DK1) and 2 Wii Controllers. The Oculus Rift (DK1) was used for visual immersion and the Wii controllers simulated the users hands & inputs.


Given the high-precision capability of the Motion Tracking Lab, we wanted to develop an interaction technique which could replicate real life interaction with Lego. Our primary goal was to make it as realistic and natural as possible.

### Lego snapping and management:

 Simulating Lego sounded very simple initially, but on development of the system we realized that it was extremely difficult to create a realistic snapping and unsnapping Lego system in a virtual environment.

There are certain points to consider when developing the Lego system:
 - Lego as a structure does not have a parent or child relation, rather its a group of Legos. This data structure is effectively a grid. This had to be handled by the developers since almost all 3D Engines handle their 3D objects as trees.
 - In Terms of 3D graphics there must exist a parent child relation in order for the 3D Object to be rotated about a right pivot. (Hence the tree structure of 3D objects)
 - On unsnapping a given piece, all the top lego pieces it is associated with must also be part of the unsnapping. This needs to be done dynamically.
 - Unsnapping of certain lego pieces can divide the lego system into more than 2 individual groups, in such a situation how does one dynamically determine which Legos are together or not?
 - Apart from managing the Lego themselves, the lego physics (weight, bounce, gravity)needed to be simulated accurately.


{{< youtube apofKuhpu0k >}}


![](http://2.bp.blogspot.com/-tXPMUkvb6jc/VOEFA9_no8I/AAAAAAAADoI/tMh8UfWIK8k/s1600/IMG_20150210_140440.jpg)
![](http://2.bp.blogspot.com/-J0ApybCkijE/VOEFXxACqqI/AAAAAAAADoU/pHqJj-qiIR4/s1600/IMG_20150212_170658.jpg)
![](http://2.bp.blogspot.com/-L3Va-VNgwaQ/VOEFXz8Up_I/AAAAAAAADoY/jvU2c2-X6L8/s1600/IMG_20150212_164421.jpg)

Software packages used:
- Unity3D (5-UDE)
- Blender
- Maya
- Photoshop

Credit:
- Anvit Srivastav - 3D Modelling
- Andrew Spies - Developer
- Ravi Nankani - Developer
- William Broderick - 3D Modelling & Level Design
- Lesley Pandian - Developer\Team Manager