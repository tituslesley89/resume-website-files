---
author:
  name: "Lesley Pandian"
date: 2017-09-28
linktitle: VR Augemented Desktop
type:
- post
- posts
title: VR Augemented Desktop
weight: 10
series:
- Featured
---

My thesis work was to study the trade-off between usability and fidelity in a modern VR set-up, in the domain of user training.


For the highest possible fidelity (at the time) we used the latest Oculus Rift (DK2) and a Creative DepthSense camera (depth camera) for user interaction.

### Challenges:

- Finger-tracking : This took a major part of the development time, getting the perfect position and filtering the tracking information for reliable and consistent tracking was a challenge.

 - Interaction : We needed to develop an intuitive method of picking-up and attaching Lego. Since the long-term goal is to study VR training, the interaction technique must be as natural as possible and should not require any form of training.

 - Calibration system : To minimize ambient variables in the scene, we modeled the virtual world after the real world location where the system was intended to be used, at the same time, we wanted the option of swapping this VR world for another setting, if we so desired. For this purpose a robust and adaptive calibration system had to be designed.

 - Real world modeling : I am not a 3D artist, most of my modeling skills are fruits of my curiosity. Please excuse the lack of fine post-process finish of the assets in the scene. My main concentration was the scale of the objects. It is paramount that the virtual environment must be inline with the real world. Having objects to scale adds a lot of fidelity and credibility to the system with little effort. Despite, the lack of realism in the lighting and finish, the scale itself would be enough to provide a high level of fidelity.

 - Performance analysis and monitoring : Re-iterating the long term goal: VR training research. It was important to collect data, and analyse them. We needed a system which could have information relative to the actions of the person in the 3D world. At the same time, the system should assess the performance of the user.

Bear in mind that this is a work in progress, there are a lot more assets to model and bugs to fix.


{{< youtube XZeYEqnRLFw >}}


![](http://2.bp.blogspot.com/-AyZjfUHa7cc/VOEypJ-sShI/AAAAAAAADo8/W4cA4UjG2Yo/s1600/IMG_20150210_123132.jpg)


Software packages used:
- Unity 3D
- Intel Perceptual Computing SDK 2013
- Blender
- Photoshop

Being a solo project I had to do a lot of research and a lot of prototyping. Trail and error, infinite failures, lack of sleep and brain killing bugs. What you see is around 30% of the total work I had done over the span of my thesis. This was my first step into the world of Research and Development, and I had an absolute blast.