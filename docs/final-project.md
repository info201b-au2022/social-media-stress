# Social Media Stress Analysis

### Code name: stress snoo

| | Brief Description|
|---------------| --------------
|Authors | Jennifer Oh, Katie Stevens, Lydia Lan, Wesley Nguyen
| Affiliation | INFO-201: Technical Foundations of Informatics - The iSchool - University of Washington
| Date | Autumn 2022

#### Abstract
Our main goal with this research project is to analyze trends and relations of the psychological effects of using social media, with a particular focus on stress, depression, and anxiety. This question is important to us because social media's growing influence in modern society and our lives is coming to odds with a growing societal conciousness towards the value of stress balancing and mental health. To address this concern, we will do analysis of datasets containing Reddit posts, Twitter tweets, and other social media posts.

#### Keywords:
- stress analysis
- social media
- reddit data analysis
- social media and stress

#### Introduction
Within today's society there is access to a surplus of information on social media, and many times this can lead to mental stress for individuals. Social media can more often increase the fear of missing out, feelings of inadequacy, dissatisfaction, as well as isolation. In result these feelings can negatively affect one's mood and worsen symptoms of depression, anxiety, and stress. The analyzed information that we provide within this project, includes datasets consisting of multi-domain social media data used for identifying stress from five different categories of Reddit communities. The five categories consist of Health, Online Communities, Social Networks, Text Data, and Mental Health.

#### Problem Domain
##### Framing the Problem Domain:
- A couple of problems come up when addressing the design situation of this data analyzation. Most importantly cultural as well as social issues that tie into this topic of the correlation of stress and social media. Within this article of "How Different Generations Use Social Media- and what this Means for Your Business" It highlights the importance of understanding that there is indeed a demographic bias when it comes to information coming from social media users. Generation Z are extremely invested in the social media world, and "...65% of Gen Z consumers have increased their use of social media in the last year. (Sprout Social 2021)." It was also stated that "...Seventy-two percent of Millenials state that social media is an essential part of their lives." With these given statements, it is crucial to remember that majority of the data pulled from the opinions on the internet is coming form the age groups of Generation Z and Millenial Users. It is important to remember that with each generation, there is specific perspective in which they see the power of information on social media, and also take information from social media in very different ways.

##### Human Values:
- In this current society, it should be emphasized that most social media is mostly utilized by Generation Z as well as Millenials. In the 2022, survey of the "consumption Frequency of News from Social Media in the U.S. 2022, by Generation." Written by Amy Watson. it is stated that younger consumers were most likely to use social media as a news source and that about 50% of Generation Z and 44% of millennials reporting daily usage, and that in contrast, 43% of Boomers said that they rarely ever use social networks (Watson 2022). With this given statement, we can also conclude that the data that we pull from the reddit dataset, is mostly likely coming from an audience of individuals from the Generation Z and Millennial Age Group and should not make the broad assumption that all social media users feel that there is a stress factor related with the usage of social media.

##### Stakeholders:
- With this analyzation would be the fact that this data is solely off of information from reddit. Which is only one form of a social media platform, it is stated within The New Yorker article "Reddit and the Struggle to Detoxify the Internet" written by Andrew Marantz, that "... people who do use it - redditors, as they're called- often use it all day long, to the near exclusion of anything else." It is assumed that the data given in the set are all credible, and come from the opinions of credible users, however this algorithm only checks for key words that correlate the word "stress" with social media and gives a numbered count. Because this analyzation only comes from one community, one must understand that the claim that social media and stress is correlated with the given numbers of our analyzation, is reflecting the correlations and information that is pulled and found from reddit posts, and no other social media platform.

##### Benefits and Harms:
- Benefits of this data analyzation is the fact that we as viewers of this data can find the correlation and links of stress and social media with key words through this algorithm and receive a clear and concise number from the given pool of selected reddit posts. Harms may include the fact that, it can not be assumed or concluded that this data count can be utilized as evidence for an accurate and persuasive argument, this data can be used as an example to prove the point that there is correlation between stress and social media, however to make a general claim off this data would be false information.

#### Research Questions

1. What impact does social media have on people’s levels of stress? Through this question, we aim to find and explain the link between social media and mental health by examining indicators of stress across online communities on social media apps like Reddit. We examine whether social media is a contributing stressor of if it helps alleviate stress by allowing others to meet people with similar experiences.
2. Are people engaged in online communities geared towards sensitive topics more or less likely to experience elevated levels of stress? Many people join online communities like r/relationships or r/ptsd on Reddit to find others that have similar experiences and share their own personal experiences. Understanding whether these communities have a positive or negative effect on mental health is important because many people approach these communities for the purpose of venting or being comforted.
3. What factors might contribute to stress experienced as a result of social media? Answering this question can help us understand what emotions related to social media might be influenced by. This is important because understanding where a problem is sourced from is critical in moving toward mitigating its effects.

#### The Dataset

##### About

###### Dataset 1: Dreaddit

The first dataset is a [Kaggle dataset](https://www.kaggle.com/datasets/ruchi798/stress-analysis-in-social-media) derived from a report called [Dreaddit: A Reddit Dataset for Stress Analysis in Social Media](https://aclanthology.org/D19-6213/). This dataset aims to analyze Reddit posts in relation to stress. This is done through the use of a machine learning model that involves corpus analysis and the use of Amazon Mechanical Turk workers. We are using the test data which consists of 715 posts, while the train data is around 2500+ posts. We will be using the test data because that is more accurate and is built based off the model that was trained on the train data.

###### Dataset 2: 11/10/2022 Twitter Sentiment Analysis

The second dataset is one that Wesley made. Using the snscrape library in Python, we were able to pull the latest 3500 tweets from around 12:30 AM 11/10/2022. The intention of this dataset is to provide a more updated look to Tweet data since a lot of the existing sentiment analysis has been trained on data that is older and could represent both older events in history.

###### Dataset 3: Emotion Classification NLP

The third [dataset](https://www.kaggle.com/datasets/anjaneyatripathi/emotion-classification-nlp) consists of 3099 tweets that have been processed and put into four categories, these being fear, anger, sadness, and joy.

###### Dataset 4: Cyberbullying Twitter

The fourth [dataset](https://www.kaggle.com/datasets/andrewmvd/cyberbullying-classification) contains over 46,000 tweets, each of which fall into categories of cyberbullying on grounds of age, ethnicity, gender, religion, or other, and not cyberbullying.

###### Dataset 5: Various Social Media Anxiety and Depression

The fifth [dataset](https://www.kaggle.com/datasets/sahasourav17/students-anxiety-and-depression-dataset) has 6500 entries that comprise various posts from social media platforms. These include Facebook posts and from initial inspection, does not seem to include any tweets.

##### Table

| Data Files |  # of Observations | Citation | Url |
|---------------| -------------- | -------------- | --------------
| Dreaddit |  715 posts | Bhatia, Ruchi. “Stress Analysis in Social Media.” Kaggle, 2 July 2021 | https://www.kaggle.com/datasets/ruchi798/stress-analysis-in-social-media
| Twitter Sentiment | 3500 tweets | We made this | We made this
| Emotions NLP | 3099 tweets | Tripathi, Anjaneya. “Emotion Classification NLP.” Kaggle, 11 May 2021, https://www.kaggle.com/datasets/anjaneyatripathi/emotion-classification-nlp.  | https://www.kaggle.com/datasets/anjaneyatripathi/emotion-classification-nlp
| Cyberbullying | Over 46000 tweets | Larxel. “Cyberbullying Classification.” Kaggle, 17 Jan. 2022, https://www.kaggle.com/datasets/andrewmvd/cyberbullying-classification.  | https://www.kaggle.com/datasets/andrewmvd/cyberbullying-classification
| Student anxiety and depression | 6500 entries | Saha, Sourav. “Students Anxiety and Depression Dataset.” Kaggle, 12 Nov. 2022, https://www.kaggle.com/datasets/sahasourav17/students-anxiety-and-depression-dataset. | https://www.kaggle.com/datasets/sahasourav17/students-anxiety-and-depression-dataset

##### Answering Our Research Questions
Based on the data provided, it can help us form possible conclusions to our research questions. If we analyze the amount of times that terms such as "social media" or "instagram" appear, we can see the frequency at which online platforms negatively affect the mental wellbeing of the individuals in our data pool. Moreover, if we were able to carefully look through each grouped subreddit, it's possible for us to recognize which online communities experience more or less stress. For example, quotes obtained from subreddit "ptsd" might contain more heavy stress indicators than quotes obtained from subreddit "assistance", or vice versa. Hopefully, this will allow us to find common factors that routinely appear to affect mental health, and see how the presence of social media further multiplies that effect.

##### Provenance
- Data collection: The datasets, titled "Stress Analysis in Social Media" were uploaded on Kaggle by Ruchi Bhata. However it was Elsbeth Turcan and  Kathleen McKeown who first collected the data in 2019. They collected the data with the purpose of recognizing how stress, as a univeral factor experienced by mostly everyone, exists specifically on online platforms. The other sources collected their data from Twitter and other social media platforms with a similar purpose.
- Funding: The Dreaddit dataset  was funded by a Presidential Fellowship from the Fu Foundation School of Engineering and Applied Science at Columbia University. Financially speaking, those most likely to benefit from this study would be mental health professionals such as psychiatrists, psychologists, or counselors. They would be more equipped on how to deal with stress stemming from social media, and would be able to better treat  patients that are struggling with a similar issue.
- Validation: Each subset of the Dreaddit data was annotated by at least 5 works using Amazon Mechanical Turk in order to figure out the characteristics of stress. Additionally, each data point how to pass a "check" question randomly selected out of 50. There were also anonymous reviewers that would collectively agree on whether or not a quote accurately demonstrated that high stress levels were present. The percent that agreed was then also recorded in the data. After the multiple peer reviews and checkpoints, I would consider the data to be reliable and trustworthy. Because the data pool isn't small as well, the sample size is large enough so that other confounding variables wouldn't affect the outcome too much.
- Obtainment: Our group obtained the data off of the website kaggle. We wanted to do something related to mental health, and the topic of social media's role in stress immediately appealed to us. We credit both the authors and contributors of all the datasets that we used.

#### Expected Implications

There are many implications that can be discerned concerning the results of our research question, which aims to see the ties between social media usage and stress. Before talking about the implications, we should mention the expected results of the research question. I would expect there to be a correlation between social media and stress, whether it be social media that begets stress or social media being used as a way to vent stress.

Assuming that this ends up being the case, the primary implication for policymakers and people is that the policies in place for reducing stress and negativity at social media apps may not be sufficient. Policymakers involved in social media should know to dedicate resources to think of ways to potentially reduce this stress. Someone looking at the results of this project may be able to divert resources to either fixing social media policies that may be a source of this stress or make improvements to mental health infrastructure.

We hope the results from this research can be used to better guide and improve the experience people get on social media.

#### Limitations
When working with social media datasets, one main limitation we have to consider is that social media platforms are often filled with duplicate, fake profiles. There’s essentially no limit to the number of accounts a person can have, provided that they have a different form of contact to set up the account. Moreover, because the dataset we have is essentially from various Reddit threads, the methods used to identify stress are limited to key words and subreddits titled as “anxiety”, “ptsd”, “assistance,” etc. There may be greater amounts of stress shown from other categories of Reddit communities, yet, our dataset is limited to a certain extent. It’s also sometimes in a person’s self-interest to exaggerate when they’re using social media as a venting mechanism, which can cause the algorithm to detect more stress than the person actually has.

A limitation that we have associated with our topic in general is that the data we are able to draw from is not naturally occuring or quantifiable with numbers. All the data we draw has to go through natural language processing or human analysis of words and thus can be subjective or dependent on the method that was used to train a machine learning model. This means that it is inherently more difficult for us to apply the results of the datasets we choose and also limits the amount of datasets that are useful to us as opposed to a topic like greenhouse gas emissions from cars.

#### Acknowledgements
We'd like to thank our professor, David Hendry, and our TA, Shiina Sugioka.

#### References
1. Bhatia, Ruchi. “Stress Analysis in Social Media.” Kaggle, 2 July 2021, https://www.kaggle.com/datasets/ruchi798/stress-analysis-in-social-media?resource=download&amp;select=dreaddit-train.csv.
2. “How Different Generations Use Social Media-and What This Means for Your Business.” Sprout Social, 22 July 2021, https://sproutsocial.com/insights/guides/social-media-use-by-generation/.
3. Marantz, Andrew. “Reddit and the Struggle to Detoxify the Internet.” The New Yorker, 12 Mar. 2018, https://www.newyorker.com/magazine/2018/03/19/reddit-and-the-struggle-to-detoxify-the-internet.
4. Watson, Amy. “News Consumption on Social Media U.S. by Generation 2022.” Statista, 18 Aug. 2022, https://www.statista.com/statistics/1124159/us-generational-social-media-news/.
5. J. Wang, K. Fu, C.T. Lu, “SOSNet: A Graph Convolutional Network Approach to Fine-Grained Cyberbullying Detection,” Proceedings of the 2020 IEEE International Conference on Big Data (IEEE BigData 2020), December 10-13, 2020.
6. WASSA-2017 Shared Task on Emotion Intensity. Saif M. Mohammad and Felipe Bravo-Marquez. In Proceedings of the EMNLP 2017 Workshop on Computational Approaches to Subjectivity, Sentiment, and Social Media (WASSA), September 2017, Copenhagen, Denmark.
7. Saha, Sourav. “Students Anxiety and Depression Dataset.” Kaggle, 12 Nov. 2022, https://www.kaggle.com/datasets/sahasourav17/students-anxiety-and-depression-dataset.
8. Dixon, S. "Impact of social media on Daily Life Worldwide" Statista. 28 Apr. 2022, https://www.statista.com/statistics/1015131/impact-of-social-media-on-daily-life-worldwide/ 