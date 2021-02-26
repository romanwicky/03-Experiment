# Assignment 3 - Replicating a Classic Experiment 

Danya Baron, Roman Wicky, Molly Wirtz

https://romanwicky.github.io/03-Experiment/index.html


# Background

In this assignment we implemented a controlled experiment using bar chart visualizations, angles, and volume visualizations. This experiment is based on
the paper by Cleveland and McGill, where they tested pie and stack chart variants. We replicated this experiment, but instead of just using stack charts,
we also used angles, and volume. 

## Goal 

1) Test 3 different visualizations, and run experiment with 10 participants.
2) Implement data generation and error calculation functions by Cleveland and McGill's paper.
3) Basic Analysis and Reporting of Results

# Experiment

We used D3.js, JavaScript, HTML/CSS functionality for this experiment. We had about 20 randomly generated bar charts, volume SVG's, and angles in the experiment. These screenshots are from our home page, one screenshot per visualization, and our end visualization. Our hypotheses included to see if the user could determine how much a cube could fit into a bigger cube, guessing the angles of a tilt, and how much a smaller bar chart could fit into a larger bar chart.

## Homepage 

![ScreenShot](https://github.com/romanwicky/03-Experiment/blob/roman-work/img/homepage.png)

## Bar Chart

![ScreenShot](https://github.com/romanwicky/03-Experiment/blob/roman-work/img/barchart1.png)

## Angle

![ScreenShot](https://github.com/romanwicky/03-Experiment/blob/roman-work/img/angle1.png)

## Volume

![ScreenShot](https://github.com/romanwicky/03-Experiment/blob/roman-work/img/volume1.png)

## Finish Page

![ScreenShot](https://github.com/romanwicky/03-Experiment/blob/roman-work/img/finished%20page.png)


# Analysis

We used JavaScript to read the CSV file, and organize the data and calculate the percent error.

We used Log-base-2 like the Cleveland and McGill paper to calculate the error percent.

Here is the result percent of errors between each chart:

(insert log percent error screenshot)


# 95% Confidence Interval

(insert screenshot of this here)


# Technical Achievements

- Sent data from the trials into an email, where we stored all of the CSV files from each trial.

- Experimented with more d3.js, including using a volume visualization which was not yet taught in class.

- Used PapaParse library, which allows for seamless CSV parsing.



# Design Achievements

- Button interaction. When hovered, both buttons raise and change color to promote interactivity within the website.

- Progress Bar. We created a progress bar at the top of the page, to indicate when a user was finished with a certain visualization such as the bar charts. When the user is finished with the bar chart, the barchart circle turns to our color scheme cornflower blue. There are circles turn green when the user finishes the whole experiment.

- Basic color scheme. We used a color scheme to keep things simple and easy for the user to read. Our main color on the progress chart was cornflower blue, and
when the button is hovered, that color changes to green.

- Font combination. We used the 'Roboto' font, imported from the Google fonts API.

















===

For the scope of this project, assume the role of a scientist who runs experiments for a living.

Q: How do we know that bar charts are "better" than pie charts?  
A: Controlled experiments!

In this assignment you'll implement a simple controlled experiment using some of the visualizations you’ve been building in this class. 
You'll need to develop support code for the experiment sequence, results file output, and other experiment components. 
(These are all simple with Javascript buttons and forms.)
The main goals for you are to a) test three competing visualizations, b) implement data generation and error calculation functions inspired by Cleveland and McGill's 1984 paper, c) run the experiment with 10 participants (or a trial equivalent), and d) do some basic analysis and reporting of the results.

For this assignment you should aim to write everything from scratch. For experimentation it is often necessary to control all elements of the chart.
You should definitely *reference* demo programs from books or the web, and if you do please provide a References section with links at the end of your Readme.

Requirements
---

- Look it over Cleveland and McGill's original experiment (see the section below) and [watch this video](experiment-example.mp4) to get a sense of the experiment structure and where your visualizations will go.
- When viewing the example experiment video, note the following:
    - Trials are in random order.  
    - Each trial has a randomly generated set of 5-10 data points.  
    - Two of these data points are marked.  
    - (Note: the experiment UI and User Experience could be better. Plenty of design achievements here).
- Implement the data generation code **as described in the Cleveland & McGill paper**. 
    - The goal is to generate a set of random datapoints (usually 5 or 10, with values be between 0 and 100) and to mark two of them for comparison in the trial. 
- Add 3 visualizations (i.e. conditions) to your experiment. When you are adding these visualizations, think about *why* these visualizations are interesting to test. In other words, keep in mind a *testable hypothesis* for each of the added visualization. Some good options include bar charts, pie charts, stacked-bar charts, and treemaps. You can also rotate your bar chart to be horizontal or upside-down as one of your conditions. You are encouraged to test unorthodox charts -- radar charts come to mind, but there are MANY possibilities here-- feel free to be creative!
    - Follow the style from Cleveland and McGill closely (e.g. no color, simple lines) unless you are specifically testing a hypothesis (e.g. color versus no color). Pay attention to spacing between elements like bars. Do not mark bars for comparison using color-- this makes the perceptual task too easy.
- After each trial, implement code that grades and stores participant’s responses.
- At the end of the experiment, to get the data, one easy option use Javascript to show the data from the current experiment\* (i.e. a comma separated list in a text box) and copy it into your master datafile. See the Background section below for an example of what this file should look like. (\*Alternately implement a server, if you're experienced with that sort of thing.)

- Figure out how to calculate "Error", the difference between the true percentage and the reported percentage.
- Scale this error using Cleveland and McGill’s log-base-2 error equation. For details, see the background section (there’s a figure with the equation). This becomes your “Error” column in the output. Make sure you use whole percentages (not decimal) in the log-base-2 equation. Make sure you handle the case of when a person gets the exact percentage correct (log-base-2 of 1/8 is -3, it is better to set this to 0). 
- Run your experiment with 10 or more participants, or-- make sure you get at least 200 trials **per visualization type** in total.  
    - Grab friends or people in the class.   
    - Run at least 20 trials per visualization type, per participant. This is to ensure that you cover the range of possible answers (e.g. 5%, 10%, ..., 95%)
- Make sure to save the resulting CSV after each participant. Compile the results into a master csv file (all participants, all trials).
- Produce a README with figures that shows the visualizations you tested and results, ordered by best performance to worst performance. Follow the modern Cleveland-McGill figure below -- though note that using names instead of icons is fine.
- To obtain the ranking, calculate and report the average log2Error for each visualization across all trials and participants. This should be straightforward to do in a spreadsheet.
- Use Bootstrapped 95\% confidence intervals for your error upper and lower bounds. Include these in your figures. Bootstrapped confidence intervals are easily implemented in R + ggplot2 using the `stat_summary` geom. You can also use Excel, Python, or many many other tools. Bootstrapped 95% CIs are **very** useful in modern experiment practice.
- Include example images of each visualization as they appeared in your experiment (i.e. if you used a pie chart show the actual pie chart you used in the experiment along with the markings, not an example from Google Images).

## General Requirements

0. Your code should be forked from the GitHub repo and linked using GitHub pages.
2. Your project should use d3 to build visualizations. 
3. Your writeup (readme.md in the repo) should contain the following:

- Working link to the experiment hosted on gh-pages or some other site.
- Concise description and screenshot of your experiment.
- Description of the technical achievements you attempted with this project.
- Description of the design achievements you attempted with this project.

Background
---

In 1984, William Cleveland and Robert McGill published the results of several controlled experiments that pitted bar charts against pies and stacked-bar variants. 
Their paper (http://www.cs.ubc.ca/~tmm/courses/cpsc533c-04-spr/readings/cleveland.pdf) (http://info.slis.indiana.edu/~katy/S637-S11/cleveland84.pdf) is considered a seminal paper in data visualization.
In particular, they ran a psychology-style experiment where users were shown a series of randomly-generated charts with two graphical elements marked like this:

![cleveland bar chart](img/cleveland-bar.png)

Participants were then asked, "What percentage is the smaller of the larger?". 
This was repeated hundreds of time with varying data and charts. 
By the end of the study, Cleveland and McGill had amassed a large dataset that looked like this:

![cleveland table](img/cleveland-table.png)

__Log-base-2 or "cm-error"__: The true percent is the actual percentage of the smaller to the larger, while the reported percent is what participants reported. 
Cleveland and McGill recognized that their analyses would be biased if they took `abs(ReportedPercent – TruePercent)` as their score for error. 
To compensate, they came up with a logarithmic scale for error with this equation:

![cleveland equation](img/cleveland-equation.png)

You’ll be implementing this error score as part of the lab. 
(Hint: it’s not a trick question, this is just to familiarize you with the experiment protocol). 
With this Cleveland-McGill error score you can better compare the performance of the charts you test to figure out which one performs the best.

As a baseline, compare your average Error scores to the following chart, which include both Cleveland and McGill’s results as well as more recent extensions of this experiment (lower error indicates better performance, and error bars are bootstrapped 95% confidence intervals (`http://en.wikipedia.org/wiki/Confidence_interval#Meaning_and_interpretation`)):

![cleveland results](img/cleveland-results.png)

GitHub Details
---

- Fork the GitHub Repository. You now have a copy associated with your username.
- Make changes to index.html to fulfill the project requirements. 
- Make sure your "master" branch matches your "gh-pages" branch. See the GitHub Guides referenced above if you need help.
- Edit this README.md with a link to your gh-pages site: e.g. http://YourUsernameGoesHere.github.io/Experiment/index.html
- Replace this file (README.md) with your writeup and Design/Technical achievements.
- To submit, make a [Pull Request](https://help.github.com/articles/using-pull-requests/) on the original repository.
- Name your submission using the following scheme: 
```
a3-FirstLastnameMember1-FirstLastnameMember2-FirstLastnameMember3-...
```

Design Achievements: 
- Button interaction
- Basic color scheme (write it up so it sounds legit)
- Font combos (again make it legit)

- progress bar (design or tech?)

Tech Achievements: 
- form validation

Resources
http://bl.ocks.org/mosley812/43194ec6f540c05e48273d0cd8877d2c
https://d19jftygre6gh0.cloudfront.net/Niekes/613d43d39372f99ae2dcea14f0f90617
https://github.com/Niekes/d3-3d/blob/master/src/primitiveShapes/cube.js