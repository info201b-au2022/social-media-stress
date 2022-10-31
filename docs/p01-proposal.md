# Analyzing Stress and Social Media through Reddit

### Code name: stress snoo

snoo is reddit's logo


| | Brief Description|
|---------------| --------------
|Authors | Jennifer Oh, Katie Stevens, Lydia Lan, Wesley Nguyen
| Affiliation | INFO-201: Technical Foundations of Informatics - The iSchool - University of Washington
| Date | Autumn Quarter 2022

#### Abstract
Our main goal with this research project is to find links and correlations between social media and stress. This question is important to us because social media's growing influence in modern society and our lives is coming to odds with a growing societal conciousness towards the value of stress balancing and mental health. To address this concern, we will do an analysis of a dataset containing over 700 Reddit posts gathered from various subreddits.

#### Keywords:
- stress analysis
- social media
- reddit data analysis
- social media and stress

#### Introduction
Within today's society there is access to a surplus of information on social media, and many times this can lead to mental stress for individuals. Social media can more often increase the fear of missing out, feelings of inadequacy, dissatisfaction, as well as isolation. In result these feelings can negatively affect one's mood and worsen symptoms of depression, anxiety, and stress. The analyzed information that we provide within this project, includes datasets consisting of multi-domain social media data used for identifying stress from five different categories of Reddit communities. The five categories consist of Health, Online Communities, Social Networks, Text Data, and Mental Health.
#### Problem Domain
(Still working on this section)

#### Research Questions

1. What impact does social media have on people’s levels of stress? Through this question, we aim to find and explain the link between social media and mental health by examining indicators of stress across online communities on social media apps like Reddit. Is social media a contributing stressor, or does it help alleviate stress by allowing others to meet people with similar experiences?
2. Are people engaged in online communities geared towards sensitive topics more or less likely to experience elevated levels of stress? Many people join online communities like r/relationships or r/ptsd on Reddit to find others that have similar experiences and share their own personal experiences. Does exposure to these communities worsen stress?
3. Which online communities have an increased risk for stress, and what do they have in common? Many of the subreddits we will examine consist of people struggling with homelessness, poverty, and various forms of trauma, or are otherwise struggling with a real-world situation. How can we tell whether the stress indicators recorded are affected by social media use?

#### The Dataset

##### About
From the website kaggle, we found two datasets that directly correlate to the topic entitled "Stress Analysis in Social Media". Each file contains a 100+ quotes that come from a range of users found off of Reddit, and in one way or another, are deemed to show implications of stress shown in and through social media use. While file "dreaddit-test" has more recorded observations than "dreddit-train", they both provide information such as user id, subreddit name, sentence range, text, and confidence level, etc. 

##### Table
| | Data Files|
|---------------| --------------
|Name | We will have two datasets: dreaddit-test.csv, dreaddit-train.csv
| Purpose | These datasets contain lengthy multi-domain social media data for identifying stress from five different categories of Reddit communities.
| Number of Observations | dreaddit-test has 716 rows. dreaddit-train has 2839 rows.
| Number of Rows | Each dataset has 116 rows
| Citation | Bhatia, Ruchi. “Stress Analysis in Social Media.” Kaggle, 2 July 2021
| URL | Both data files can be found at https://www.kaggle.com/datasets/ruchi798/stress-analysis-in-social-media?resource=download&amp;select=dreaddit-train.csv

##### Answering Our Research Questions
Based on the data provided, it can help us form possible conclusions to our research questions. If we analyze the amount of times that terms such as "social media" or "instagram" appear, we can see the frequency at which online platforms negatively affect the mental wellbeing of the individuals in our data pool. Moreover, if we were able to carefully look through each grouped subreddit, it's possible for us to recognize which online communities experience more or less stress. For example, quotes obtained from subreddit "ptsd" might contain more heavy stress indicators than quotes obtained from subreddit "assistance", or vice versa. Hopefully, this will allow us to find common factors that routinely appear to affect mental health, and see how the presence of social media further multiplies that effect.


#### Expected Implications

There are many implications that can be discerned concerning the results of our research question, which aims to see the ties between social media usage and stress. Before talking about the implications, we should mention the expected results of the research question. I would expect there to be a correlation between social media and stress, whether it be social media that begets stress or social media being used as a way to vent stress.

Assuming that this ends up being the case, the primary implication for policymakers and people is that the policies in place for reducing stress and negativity at social media apps may not be sufficient. Policymakers involved in social media should know to dedicate resources to think of ways to potentially reduce this stress. Someone looking at the results of this project may be able to divert resources to either fixing social media policies that may be a source of this stress or make improvements to mental health infrastructure.

We hope the results from this research can be used to better guide and improve the experience people get on social media.

#### Limitations
When working with social media datasets, one main limitation we have to consider is that social media platforms are often filled with duplicate, fake profiles. There’s essentially no limit to the number of accounts a person can have, provided that they have a different form of contact to set up the account. Moreover, because the dataset we have is essentially from various Reddit threads, the methods used to identify stress are limited to key words and subreddits titled as “anxiety”, “ptsd”, “assistance,” etc. There may be greater amounts of stress shown from other categories of Reddit communities, yet, our dataset is limited to a certain extent. It’s also sometimes in a person’s self-interest to exaggerate when they’re using social media as a venting mechanism, which can cause the algorithm to detect more stress than the person actually has. Lastly, it’s important to note that the data we obtained comes only from Reddit, and our conclusions from this can’t be directly generalized to other social media sites as well.

#### Acknowledgements


#### References
1. Bhatia, Ruchi. “Stress Analysis in Social Media.” Kaggle, 2 July 2021, https://www.kaggle.com/datasets/ruchi798/stress-analysis-in-social-media?resource=download&amp;select=dreaddit-train.csv.
