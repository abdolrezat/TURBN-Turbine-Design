<p align="center"><img width=100% src="https://raw.githubusercontent.com/abdolrezat/TURBN-Turbine-Design/master/Figures/Turbine_Stage_Design_ResultsWindow%20-%20Copy.png"></p>

# TURBN-Turbine-Design ![MATLAB](https://img.shields.io/badge/MATLAB-all%20versions-orange.svg) ![DOI](https://img.shields.io/badge/DOI-10.13140%2FRG.2.2.30007.32164-blue.svg)

A MATLAB GUI for calculating detailed properties of multi-stage axial turbines. See the interface screenshots or just run the code, it's pre-loaded with examples!

## Run the program

To get a simple demonstration of the code using readily available examples, run the script below in MATLAB.

```
Turbine_StageDesign_v2.m
```

Input Properties of a two-stage axial turbine is already loaded into the program. Notice that by playing around with buttons, examples load automatically allowing the user to get a sample of the results by one click! 

### Changing the Inputs

<p align="center"><img width=60% src="https://raw.githubusercontent.com/abdolrezat/TURBN-Turbine-Design/master/Figures/Turbine_Stage_Design_InputWindow%20-%20Copy.png"></p>

You can run the code with different inputs:

- Determine how many stages there are in the area labeled in the figure above as 2.1.2.
- Define which parameters of the engine input you have and which parameters you don't have using the radio buttons in 2.1.1.
- Fill out the necessary inputs in the area labeled as 2.1.3.
- Fill out the required properties of each stage in the area labeled as 2.1.4. These parameters depend on the buttons chosen in steps 1 & 2.

## How it works

The general outline of the code can be illustrated in the figure below

<p align="center"><img width=60% src="https://raw.githubusercontent.com/abdolrezat/TURBN-Turbine-Design/master/Figures/Process.png"></p>

There are two main parts to the code. First one is `Turbine_Stage_Design.m` where inputs are taken and calculations happen. This is the code you run first. The next process happens automatically, the results are passed to another GUI, where these results are properly shown to the user. The user can then see the overall engine properties and scroll through detailed properties at each stage.

The algorithm for calculating the results which happens in the heart of `Turbine_Stage_Design.m` is shown in the figure below, along with the names of the functions that are used.

<p align="center"><img width=60% src="https://raw.githubusercontent.com/abdolrezat/TURBN-Turbine-Design/master/Figures/Algorithm.png"></p>

Asterisks determine the name of the function that is being used, which is different depending on which option (radio button) is chosen. The flowchart below contains how these functions are named:

<p align="center"><img width=60% src="https://raw.githubusercontent.com/abdolrezat/TURBN-Turbine-Design/master/Figures/Unknowns.png"></p>

Additional formulas for calculations can be found in these functions. See the Appendix of the manual (Chapter 5) for a proportion of the formulas. Some of the formulas are available directly in the book, some formulas, however, were derived by hand and do not exist in the book, but are present in the figures in the book.

## Acknowledgments

The code is mainly based on [Jack D. Mattingly](https://www.goodreads.com/author/show/558868.Jack_D_Mattingly)'s [**"Elements of Propulsion"**](https://www.goodreads.com/book/show/1604171.Elements_of_Gas_Turbine_Propulsion), it contains the name *TURBN* similar to the actual program mentioned in the book which is not available on the internet. This repository is made for educational purposes, it does solve the problems in the book so it would be a useful resource for students. However, it does not have all the features of the commercial program.

## License

This project is licensed under the [MIT License](LICENSE.md) - Author: [**Abdolreza Taheri**](https://www.researchgate.net/profile/Abdolreza_Taheri)

## Contribute
If you're interested in improving the capabilities of this program, please contribute or contact me. ;)
