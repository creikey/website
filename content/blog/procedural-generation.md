---
title: "Procedural Generation"
date: 2018-07-29T11:54:44-07:00
draft: false
---

I have decided to make my week 53 weekly game jam project an official game, which will hopefully be released a week and a half from now. Howevee, this an optimistic estimate

# Preliminary Description
The game I had come up with for the theme of 'One Hit' was a procedurally generated space arcade shooter game, where you die in one hit. Unfortunately, a few difficulties arose during the creation process:

* Making a deterministically random function in Godot
* Procedurally generating a starry background that doesn't change when you move
* Procedurally spawning enemies and bases

I have figured out how to do the first two by

* Creating a custom C++ module that links with Godot using the `rand()` and `srand()` functions
* Having each star, as a node, teleport to the opposite side once out of bounds and modulating an offset by their position, creating a sort of deterministic treadmill

I hope to solve the last remaining issue by using some sort of invisible markers that spawn enemies based on their position.
