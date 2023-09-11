# sql_Project_Amazon-Customer-Behavior-Survey
•	This is a dataset collected for analyzing the behavioral analysis of Amazon's consumers consisting of a comprehensive collection of customer interactions, and browsing patterns within the Amazon ecosystem. It includes a wide range of variables such as customer demographics, user interaction, and reviews. The dataset aims to provide insights into customer preferences, shopping habits, and decision-making processes on the Amazon platform. 
•	The original dataset is stored on Kaggle. The data had been collected using Google Forms.
•	The dataset is made up of 23 columns and 602 rows. With lots of empty cells in 17 columns. This sample is not representative of Amazon's customer base, and any conclusions drawn from it will inevitably be incomplete.
** I made up a new column in the CSV file before importing it in MySQL	with the function IF: =IF(B2<=24; "Z"; IF(B2<=40; "Y"; IF(B2<=56; "X"; IF(B2<=75;"Baby Boomers"; "Silent Generation"))))
- Generation Z: 0 to 24 years old 
- Generation Y: 25 to 40 years old 
- Generation X: 41 to 56 
- Baby Boomers: 57 to 75 
- Silent Generation: 76 and over
