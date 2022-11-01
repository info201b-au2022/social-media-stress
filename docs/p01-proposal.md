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
##### Framing the Problem Domain:
- A couple of problems come up when addressing the design situation of this data analyzation. Most importantly cultural as well as social issues that tie into this topic of the correlation of stress and social media. Within this article of "How Different Generations Use Social Media- and what this Means for Your Business" It highlights the importance of understanding that there is indeed a demographic bias when it comes to information coming from social media users. Generation Z are extremely invested in the social media world, and "...65% of Gen Z consumers have increased their use of social media in the last year." https://sproutsocial.com/insights/guides/social-media-use-by-generation/ It was also stated that "...Seventy-two percent of Millenials state that social media is an essential part of their lives." With these given statements, it is crucial to remember that majority of the data pulled from the opinions on the internet is coming form the age groups of Generation Z and Millenial Users. It is important to remember that with each generation, there is specific perspective in which they see the power of information on social media, and also take information from social media in very different ways.

##### Human Values:
- In this current society, it should be emphasized that most social media is mostly utilized by Generation Z as well as Millenials. In the 2022, survey of the "consumption Frequency of News from Social Media in the U.S. 2022, by Generation." Written by Amy Watson. it is stated that younger consumers were most likely to use social media as a news source and that about 50% of Generation Z and 44% of millennials reporting daily usage, and that in contrast, 43% of Boomers said that they rarely ever use social networks. https://www.statista.com/statistics/1124159/us-generational-social-media-news/ With this given statement, we can also conclude that the data that we pull from the reddit dataset, is mostly likely coming from an audience of individuals from the Generation Z and Millennial Age Group and should not make the broad assumption that all social media users feel that there is a stress factor related with the usage of social media.

##### Stakeholders:
- With this analyzation would be the fact that this data is solely off of information from reddit. Which is only one form of a social media platform, it is stated within The New Yorker article "Reddit and the Struggle to Detoxify the Internet" written by Andrew Marantz, that "... people who do use it - redditors, as they're called- often use it all day long, to the near exclusion of anything else." It is assumed that the data given in the set are all credible, and come from the opinions of credible users, however this algorithm only checks for key words that correlate the word "stress" with social media and gives a numbered count. Because this analyzation only comes from one community, one must understand that the claim that social media and stress is correlated with the given numbers of our analyzation, is reflecting the correlations and information that is pulled and found from reddit posts, and no other social media platform.
https://www.newyorker.com/magazine/2018/03/19/reddit-and-the-struggle-to-detoxify-the-internet.

##### Benefits and Harms:
Benefits of this data analyzation is the fact that we as viewers of this data can find the correlation and links of stress and social media with key words through this algorithm and receive a clear and concise number from the given pool of selected reddit posts. Harms may include the fact that, it can not be assumed or concluded that this data count can be utilized as evidence for an accurate and persuasive argument, this data can be used as an example to prove the point that there is correlation between stress and social media, however to make a general claim off this data would be false information.

#### Research Questions

1. What impact does social media have on people’s levels of stress? Through this question, we aim to find and explain the link between social media and mental health by examining indicators of stress across online communities on social media apps like Reddit. Is social media a contributing stressor, or does it help alleviate stress by allowing others to meet people with similar experiences?
2. Are people engaged in online communities geared towards sensitive topics more or less likely to experience elevated levels of stress? Many people join online communities like r/relationships or r/ptsd on Reddit to find others that have similar experiences and share their own personal experiences. Does exposure to these communities worsen stress?
3. Which online communities have an increased risk for stress, and what do they have in common? Many of the subreddits we will examine consist of people struggling with homelessness, poverty, and various forms of trauma, or are otherwise struggling with a real-world situation. How can we tell whether the stress indicators recorded are affected by social media use?

#### The Dataset

##### About
From the website kaggle, we found two datasets that directly correlate to the topic entitled "Stress Analysis in Social Media". Each file contains a 100+ quotes that come from a range of users found off of Reddit, and in one way or another, are deemed to show implications of stress shown in and through social media use. While file "dreaddit-test" has more recorded observations than "dreddit-train", they both provide information such as user id, subreddit name, sentence range, text, and confidence level, etc. Furthermore, there's an article by the study's authors - Dreaddit: A Reddit Dataset for Stress Analysis in Social Media (https://aclanthology.org/D19-6213.pdf) - that further explains the mechanisms behind how the study is conducted and how stress is being detected.

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

##### Provenance
- Data collection: The datasets, titled "Stress Analysis in Social Media" were uploaded on Kaggle by Ruchi Bhata. However it was Elsbeth Turcan and  Kathleen McKeown who first collected the data in 2019. They collected the data with the purpose of recognizing how stress, as a univeral factor experienced by mostly everyone, exists specifically on online platforms.
- Funding: The research was funded by a Presidential Fellowship from the Fu Foundation School of Engineering and Applied Science at Columbia University. Financially speaking, those most likely to benefit from this study would be mental health professionals such as psychiatrists, psychologists, or counselors. They would be more equipped on how to deal with stress stemming from social media, and would be able to better treat  patients that are struggling with a similar issue.
- Validation: Each subset of the data was annotated by at least 5 works using Amazon Mechanical Turk in order to figure out the characteristics of stress. Additionally, each data point how to pass a "check" question randomly selected out of 50. There were also anonymous reviewers that would collectively agree on whether or not a quote accurately demonstrated that high stress levels were present. The percent that agreed was then also recorded in the data. After the multiple peer reviews and checkpoints, I would consider the data to be reliable and trustworthy. Because the data pool isn't small as well, the sample size is large enough so that other confounding variables wouldn't affect the outcome too much.
- Obtainment: Our group obtained the data off of the website kaggle. We wanted to do something related to mental health, and the topic of social media's role in stress immediately appealed to us. We credit both the authors and contributors of this dataset.

#### Expected Implications

There are many implications that can be discerned concerning the results of our research question, which aims to see the ties between social media usage and stress. Before talking about the implications, we should mention the expected results of the research question. I would expect there to be a correlation between social media and stress, whether it be social media that begets stress or social media being used as a way to vent stress.

Assuming that this ends up being the case, the primary implication for policymakers and people is that the policies in place for reducing stress and negativity at social media apps may not be sufficient. Policymakers involved in social media should know to dedicate resources to think of ways to potentially reduce this stress. Someone looking at the results of this project may be able to divert resources to either fixing social media policies that may be a source of this stress or make improvements to mental health infrastructure.

We hope the results from this research can be used to better guide and improve the experience people get on social media.

#### Limitations
When working with social media datasets, one main limitation we have to consider is that social media platforms are often filled with duplicate, fake profiles. There’s essentially no limit to the number of accounts a person can have, provided that they have a different form of contact to set up the account. Moreover, because the dataset we have is essentially from various Reddit threads, the methods used to identify stress are limited to key words and subreddits titled as “anxiety”, “ptsd”, “assistance,” etc. There may be greater amounts of stress shown from other categories of Reddit communities, yet, our dataset is limited to a certain extent. It’s also sometimes in a person’s self-interest to exaggerate when they’re using social media as a venting mechanism, which can cause the algorithm to detect more stress than the person actually has. Lastly, it’s important to note that the data we obtained comes only from Reddit, and our conclusions from this can’t be directly generalized to other social media sites as well.

#### Acknowledgements


#### References
1. Bhatia, Ruchi. “Stress Analysis in Social Media.” Kaggle, 2 July 2021, https://www.kaggle.com/datasets/ruchi798/stress-analysis-in-social-media?resource=download&amp;select=dreaddit-train.csv.
