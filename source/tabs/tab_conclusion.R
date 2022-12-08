conclusion <- tabPanel(
  "Conclusion",
  tags$section(
        tags$table(
          tags$tr(
            tags$th(""),
            tags$th("Brief Description"),
          ),
          tags$tr(
            tags$td("Authors"),
            tags$td("Jennifer Oh, Katie Stevens, Lydia Lan, Wesley Nguyen"),
          ),
          tags$tr(
            tags$td("Affiliation"),
            tags$td("INFO-201: Technical Foundations of Informatics - The iSchool - University of Washington"),
          ),
          tags$tr(
            tags$td("Date"),
            tags$td("Autumn 2022"),
          ),
        ),
    tags$div(
      tags$div(
        h3("Abstract"),
        p(HTML("&emsp;"), "Our main goal with this research project is to analyze trends and relations
        of the psychological effects of using social media, with a particular focus on stress, depression,
        and anxiety. This question is important to us because social media's growing influence in modern society
        and our lives is coming to odds with a growing societal conciousness towards the value of stress
        balancing and mental health. To address this concern, we will do analysis of datasets containing Reddit
        posts, Twitter tweets, and survey responses.")
      ),
      img(
        src = "https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/source/tabs/img/Pie_Chart.jpg",
      )
    ),
    tags$div(
      tags$div(
        h3("Keywords"),
        tags$ul(
          tags$li("stress analysis"),
          tags$li("social media"),
          tags$li("reddit data analysis"),
          tags$li("social media trends")
        ),
      ),
    ),
    tags$div(
      tags$div(
        h3("Introduction"),
        p(HTML("&emsp;"), "Within today's society there is access to a surplus of information on social media,
        and many times this can lead to mental stress for individuals. Social media can more often increase the
        fear of missing out, feelings of inadequacy, dissatisfaction, as well as isolation. In result these feelings
        can negatively affect one's mood and worsen symptoms of depression, anxiety, and stress. The analyzed
        information that we provide within this project includes datasets consisting of multi-domain social media
        data used for identifying stress from five different categories of Reddit communities, mental health survey
        responses, tweet sentiment analysis data, and general social media demographic data. The five categories
        consist of Health, Online Communities, Social Networks, Text Data, and Mental Health.")
      ),
      img(
        src = "https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/source/tabs/img/Pie_Chart.jpg",
      )
    ),
    tags$div(
      tags$div(
        h3("Problem Domain"),
        p(HTML("&emsp;"), "A couple of problems come up when addressing the design situation of this data analysis.
        Most importantly cultural as well as social issues that tie into this topic of the correlation of stress and
        indications of negative/positive emotion and social media. Within this article of \"How Different Generations
        Use Social Media- and what this Means for Your Business\" It highlights the importance of understanding that
        there is indeed a demographic bias when it comes to information coming from social media users. Generation Z
        are extremely invested in the social media world, and \"...65% of Gen Z consumers have increased their use of
        social media in the last year. (Sprout Social 2021).\" It was also stated that \"...Seventy-two percent of
        Millenials state that social media is an essential part of their lives.\" With these given statements, it
        is crucial to remember that majority of the data pulled from the opinions on the internet is coming from the
        age groups of Generation Z and Millenial Users. It is important to remember that with each generation, there
        is specific perspective in which they see the power of information on social media, and also take information
        from social media in very different ways."),
        p(HTML("&emsp;"), "In this current society, it should be emphasized that most social media is mostly utilized
        by Generation Z as well as Millenials. In the 2022, survey of the \"consumption Frequency of News from Social
        Media in the U.S. 2022, by Generation.\" Written by Amy Watson. it is stated that younger consumers were most
        likely to use social media as a news source and that about 50% of Generation Z and 44% of millennials reporting
        daily usage, and that in contrast, 43% of Boomers said that they rarely ever use social networks (Watson 2022).
        With this given statement, we can also conclude that the data that we pull from the reddit dataset, is mostly
        likely coming from an audience of individuals from the Generation Z and Millennial Age Group and should not make
         the broad assumption that all social media users feel that there is a stress factor related with the usage
         of social media."),
        p(HTML("&emsp;"), "With this analysis would be the fact that this data is based off social media platforms and
        the stakeholders would reflect that. Focusing on the stakeholders of the Dreaddit dataset, and in the example
        of Reddit it is stated within The New Yorker article
        \"Reddit and the Struggle to Detoxify the Internet\" written by Andrew Marantz, that \"... people who do use it
        - redditors, as they're called- often use it all day long, to the near exclusion of anything else.\" It is
        assumed that the data given in the set are all credible, and come from the opinions of credible users,
        however this algorithm only checks for key words that correlate the word \"stress\" with social media and
         gives a numbered count. All social media users implicated in our datasets are stakeholders, as well as
         potential developers politicians, and mental health professionals."),
         p(HTML("&emsp;"), "Benefits of this data analysis is the fact that we as viewers of this data can find
         the correlation and links of stress and social media with key words through this algorithm and receive a clear
         and concise number from the given pool of selected reddit posts. Harms may include the fact that it can not be
         assumed or concluded that this data count can be utilized as evidence for an accurate and persuasive argument,
         though this data can be used as an example to prove the point that there is correlation between stress and social
         media; however to make a general claim off this data would be false information.")
      ),
      img(
        src = "https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/source/tabs/img/Pie_Chart.jpg",
      )
    ),
    tags$div(
      tags$div(
        h3("Research Questions"),
        tags$ul(
          tags$li("Are people engaged in online communities geared towards sensitive topics more or less likely to experience elevated levels of stress? "),
          p("Many people join online communities like r/relationships or r/ptsd on Reddit to find others that have
          similar experiences and share their own personal experiences. Understanding whether these communities have
          a positive or negative effect on mental health is important because many people approach these communities
          for the purpose of venting or being comforted."),
          tags$li("What factors might contribute to stress experienced as a result of social media?"),
          p("Answering this question can help us understand what emotions related to social media might be influenced by.
          This is important because understanding where a problem is sourced from is critical in moving toward mitigating
          its effects."),
          tags$li("What impact does social media have on people’s levels of stress?"),
          p("Through this question, we aim to find and explain the link between social media and mental health by
          examining indicators of stress across online communities on social media apps like Reddit. We examine
          whether social media is a contributing stressor of if it helps alleviate stress by allowing others to meet
          people with similar experiences.")
        ),
      ),
    ),
    tags$div(
      tags$div(
        h3("Datasets"),
        p(HTML("&emsp;"), "The data used in our project will be drawn from four datasets."),
        tags$ol(
          tags$li("Dreaddit - A Kaggle dataset derived from a report called Dreaddit: A Reddit Dataset for Stress
      Analysis in Social Media. This dataset aims to analyze Reddit posts in relation to stress.
      This is done through the use of a machine learning model that involves corpus analysis and the
      use of Amazon Mechanical Turk workers. We are using the test data which consists of 715 posts,
      while the train data is around 2500+ posts."),
          tags$li("Twitter Sentiment Dataset - Using the snscrape package in Python, we were able to pull the
      latest 3500 tweets from 11/10/2022. After the csv was created, we cleaned and manipulated some of it with Pandas
      in order to run through the textblob library, a library generally meant for simple sentiment analysis and it
      produced the polarity and objectivity columns. We were concerned about the accuracy of this, as the majority
      of it was classified as neutral sentiment, so we added another model from HuggingFace. This one was more
      accurate as it is a trained model which had been trained on over 150,000 tweets. Both of these are represented
      in the dataset."),
          tags$li("General Social Media Dataset - dataset consists of 6 social media platforms and 11 features describing
      the demographics of monthly users. This dataset was created through a combination of various data sets found
      from Sprout Social, Statistia, and other groups."),
          tags$li("Social Media Impact Survey - This dataset consists of 13 described aspects of daily life. Respondents for the survey were asked to indicate whether,
      based on their belief, social media had decreased, increased, or had no impact on each aspect.")
        ),
        tags$table(
          tags$tr(
            tags$th("Dataset"),
            tags$th("Observations"),
            tags$th("Citation"),
            tags$th("Url")
          ),
          tags$tr(
            tags$td("Dreaddit"),
            tags$td("715 posts"),
            tags$td("Bhatia, Ruchi. “Stress Analysis in Social Media.” Kaggle, 2 July 2021"),
            tags$td("https://www.kaggle.com/datasets/ruchi798/stress-analysis-in-social-media")
          ),
          tags$tr(
            tags$td("Twitter Sentiment"),
            tags$td(" 	3,500 tweets"),
            tags$td("Wesley made this"),
            tags$td("Wesley made this")
          ),
          tags$tr(
            tags$td("General Social Media"),
            tags$td("6 platforms"),
            tags$td("Barnhart, Brent \"Social media demographics to inform your Brand's strategy in 2022.\"
            Sprout Social, 27 Oct. 2022"),
            tags$td("https://sproutsocial.com/insights/new-social-media-demographics/")
          ),
          tags$tr(
            tags$td("Impact Survey"),
            tags$td("13 indicators"),
            tags$td("Dixon, S. \"Impact of social media on Daily Life Worldwide\" Statista, 28 Apr. 2022"),
            tags$td("https://www.statista.com/statistics/1015131/impact-of-social-media-on-daily-life-worldwide/")
          ),
        ),
        p(HTML("&emsp;"), "Based on the data provided, it can help us form possible conclusions to our research
        questions. If we analyze the amount of times that negative or positive words appear, we can see the
        frequency at which online platforms negatively affect the mental wellbeing of the individuals in our
        data pool. Moreover, if we were able to carefully look through each grouped subreddit, it's possible for
        us to recognize which online communities experience more or less stress. For example, quotes obtained from s
        ubreddit \"ptsd\" might contain more heavy stress indicators than quotes obtained from subreddit \"assistance\",
        or vice versa. Hopefully, this will allow us to find common factors that routinely appear to affect mental
        health, and see how the presence of social media further multiplies that effect.")
      ),
      img(
        src = "https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/source/tabs/img/Pie_Chart.jpg",
      )
    ),
    tags$div(
      tags$div(
        h3("Provenance"),
        tags$ul(
          tags$li("Data collection:"),
          p("The datasets, titled \"Stress Analysis in Social Media\" were uploaded on Kaggle by Ruchi Bhata.
          However it was Elsbeth Turcan and Kathleen McKeown who first collected the data in 2019. They collected
          the data with the purpose of recognizing how stress, as a univeral factor experienced by mostly everyone,
          exists specifically on online platforms. The other sources collected their data from Twitter and other social
          media platforms with a similar purpose. Our Twitter Sentiment Analysis was made by Wesley and scraped tweets
          made on 10 November, 2022. This dataset is intended to measure twitter sentiment from 3,500 tweets. The Impact
          Survey dataset was published to Statista by S. Dixon on 28 April, 2022. However, the study the dataset is
          based off of was created by CIGI online from 21 December, 2018 and 10 February, 2019. The General Social
          Media dataset was uploaded to Sprout Social by Brent Barnhart on 27 October, 2022. However, the research was
          conducted by various sources and the data was then compiled by Wesley into a dataset."),
          tags$li("Funding:"),
          p("The Dreaddit dataset was funded by a Presidential Fellowship from the Fu Foundation School of Engineering
          and Applied Science at Columbia University. Financially speaking, those most likely to benefit from this study
          would be mental health professionals such as psychiatrists, psychologists, or counselors. They would be more
          equipped on how to deal with stress stemming from social media, and would be able to better treat patients that
          are struggling with a similar issue. The Impact Survey was funded by CIGI-IPSOS Global Security. The General
          Social Media dataset is compiled of different datasets created by various sources, which are available to
          explore in our General-Social-Media.txt file in the /data directory."),
          tags$li("Validation:"),
          p("Each subset of the Dreaddit data was annotated by at least 5 works using Amazon Mechanical Turk in order
          to figure out the characteristics of stress. Additionally, each data point how to pass a \"check\" question
          randomly selected out of 50. There were also anonymous reviewers that would collectively agree on whether
          or not a quote accurately demonstrated that high stress levels were present. The percent that agreed was
          then also recorded in the data. After the multiple peer reviews and checkpoints, I would consider the
          data to be reliable and trustworthy. Because the data pool isn't small as well, the sample size is large
          enough so that other confounding variables wouldn't affect the outcome too much."),
          p("The Twitter Sentiment Analysis dataset takes the last 3,500 tweets. However, because it takes all tweets
          from the same time, the sample may be biased around a specific event or topic. Additionally, the script we
          used is slightly better at identifying positive emotions over negative emotion. While it still gives us
          valuable information about social media use, it is not entirely reliable for concrete claims about the
          link between social media usage and emotions indicative of stress levels."),
          p("The Impact Survey took samples from 1,000+ respondents worldwide ages 16-64 by a trusted Global Security
          organization. Because of the sample size and source, I would consider this dataset reliable and trustworthy."),
          p("The General Social Media dataset was published by various different organizations for the purpose of m
          arketing research. Because of the sample size and variety of sources, I would consider this dataset reliable
          and trustworthy."),
          tags$li("Obtainment:"),
          p("Our group obtained the data off of the website Kaggle, our own scripts, Statista, and Sprout Social.
           We wanted to do something related to mental health, and the topic of social media's role in stress
           immediately appealed to us. We credit both the authors and contributors of all the datasets/packages that we used.")
        ),
      ),
    ),
    tags$div(
      tags$div(
        h3("Implications"),
        p(HTML("&emsp;"), "There are many implications that can be discerned concerning the results of our research question,
        which aims to see the ties between social media usage and stress. The primary implication for policymakers
        and people is that the policies in place for reducing stress and negativity at social media apps may not be
        sufficient. Policymakers involved in social media should know to dedicate resources to think of ways to
        potentially reduce this stress. Someone looking at the results of this project may be able to divert resources
        to either fixing social media policies that may be a source of this stress or make improvements to mental health infrastructure."),
        p(HTML("&emsp;"), "A huge topic of debate for platforms like Twitter is the line between freedom of speech and
        hate speech. Social media facilitates ease of communication in both positive in negative ways which could
        increase the stress of users, especially those of minority groups. This data could also prove useful to
        developers who are interested in developing or modifying social media platforms to make them more user-friendly
        and more positive experience for users."),
      ),
      img(
        src = "https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/source/tabs/img/Pie_Chart.jpg",
      )
    ),
    tags$div(
      tags$div(
        h3("Limitations"),
        p(HTML("&emsp;"), "When working with social media datasets, one main limitation we have to consider
        is that social media platforms are often filled with duplicate, fake profiles. There’s essentially no
        limit to the number of accounts a person can have, provided that they have a different form of contact
        to set up the account. Moreover, because one of the datasets we have is essentially from various Reddit threads,
        the methods used to identify stress are limited to key words and subreddits titled as “anxiety”, “ptsd”,
        “assistance,” etc. There may be greater amounts of stress shown from other categories of Reddit communities,
        yet, our dataset is limited to a certain extent. It’s also sometimes in a person’s self-interest to
        exaggerate when they’re using social media as a venting mechanism, which can cause the algorithm to detect
        more stress than the person actually has."),
        p(HTML("&emsp;"), "A limitation that we have associated with our topic in general is that the data we are
        able to draw from is not naturally occurring or quantifiable with numbers. All the data we draw has to go
        through natural language processing or human analysis of words and thus can be subjective or dependent on
        the method that was used to train a machine learning model. This means that it is inherently more difficult
        for us to apply the results of the datasets we choose and also limits the amount of datasets that are useful
         to us as opposed to a topic like greenhouse gas emissions from cars."),
        p(HTML("&emsp;"), "Additionally, it is difficult to make a concrete claim about the effect of sensitive online
        communities on mental health without considering the mindsets and situations of people who are more likely to
        use it."),
      ),
      img(
        src = "https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/source/tabs/img/Pie_Chart.jpg",
      )
    ),
    tags$div(
      tags$div(
        h3("Findings"),
        tags$ol(
          tags$li("What factors might contribute to stress experienced as a result of social media?"),
          p("Respondents in the
          Impact Survey dataset are more likely to indicate that social media has improved quality of life in areas
          such as overall quality of life, ease of communication, and access to information; they are also more likely
          to indicate that social media has worsened distractions during the day, personal privacy, and polarization in
          politics. While social media may make people’s lives more convenient, it also comes with increased risks and
          new forms of censorship and the control of the flow of information, which could pose as stressors
          for social media users."),
          tags$li("What factors might contribute to stress experienced as a result of social media?"),
          p("Respondents in the
          Impact Survey dataset are more likely to indicate that social media has improved quality of life in areas such
          as overall quality of life, ease of communication, and access to information; they are also more likely to
          indicate that social media has worsened distractions during the day, personal privacy, and polarization in
          politics. While social media may make people’s lives more convenient, it also comes with increased risks
          and new forms of censorship and the control of the flow of information, which could pose as stressors for
          social media users. Additionally, our General Social Media dataset shows evidence of gender disparities across
          social media platforms. This could also be a potential stressor for the minority group on each respective platform."),
          tags$li("What impact does social media have on people’s levels of stress?"),
          p("Based on our data and data
          visualizations, it is apparent that social media plays neither a purely negative nor purely positive role
          in stress, anxiety, or mental health. In our Impact Survey dataset, responses indicate that social media can
          both improve and worsen mental health and stress levels, depending on the aspect of daily life recorded.
          A significant number of people also responded that social media had no impact on various aspects of daily life.
          Our Twitter Sentiment analysis dataset and wordcloud showed evidence of both positive and negative tweets and
          sentiments as well. Our Dreaddit dataset showed subreddits with largely negative and stressed sentiments, with the exception of r/food_pantry."),
        ),
        img(
          src = "https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/source/tabs/img/Pie_Chart.jpg",
        )
      ),
    ),
    tags$div(
      tags$div(
        h3("Discussion"),
        p(HTML("&emsp;"), "With the aboe findings, there is an importance of recognizing that different factors
  come to play with the contributions of stress that is experienced when utilizing social media. Social media
  can be utilized in many different ways, whether it be for entertainment, for advocation, for social connection,
  or even to gain important information such as the news."),
        p(HTML("&emsp;"), "However in order to figure out the underlying reasoning as to how much of an impact social media is
  a stressor in an individual’s mental well being, it is always important to taken into account that with the
  various different ways social media can be utilized, different age groups interact with social media
  in different ways."),
        p(HTML("&emsp;"), "Younger generations may view social media as a much more positive tool within their
  every day lives, where as the older generations may view social media as a negative or unimportant aspect
  of their lives. Because of the difference in which social media is viewed within the minds of the different
  age groups, social media may already be considered a stressor for individuals. For the younger generation,
  social media can be viewed as a way to cope with their mental wellbeing, and may view the power of social
  media as a positive environment, whereas the older generation may view social media as a waste of time and
  overall just a stressful environment to be in."),
        p(HTML("&emsp;"), "With the fact that different age groups have different
  perspectives on social media, it must be considered that stress from social media can indeed be influenced
  with presumed perspectives. It was reflected within the findings that a significant number of individuals
  had responded that social media had neither a purely positive or negative impact on their mental wellbeing.
  For the Generation Z and the Millennial group, social media is viewed as convenient way to gain information
  and socialize, some stressors from social media for this group may come from the content they are receiving
  such as sensitive topics of on going affairs, but overall, social media for these age groups is used as a
  means to connect and share what is going on in their lives. This is again a reflection of the majority’s
  perspective, the Generation Z and the Millennial group that has moreover a positive view on the utilization of
  social media, as it is a vital part of their everyday lives."),
      ),
      img(
        src = "https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/source/tabs/img/Pie_Chart.jpg",
      )
    ),
    tags$div(
      tags$div(
        h3("Conclusion"),
        p(HTML("&emsp;"), "When looking at the data sets there are several different points in which it is important
  to take into account. It was recognized that when taking information from the dataset it was crucial to remember
  that a cultural aspect had an impact on the information that was received and stated. With the topic of the
  correlation of stress and social media, and the specific data that was retrieved for the findings, there was a
  demographic bias. Thus meaning that the demographic in which the data was retrieved from was coming from mostly
  the Generation X and the Millennial age group. More so specifically, the retrieved findings from the data is more
  of a reflection of the correlation of stress and social media on the Generation X and Millennial group, not a
  reflection of all individuals who utilize social media. With the findings, it is important to emphasize that
  different perspectives are held about social media when comparing different age groups. For example, Generation
  X and Millennial groups find that social media holds a significant importance to their everyday lives and often
  viewed as a positive way to connect with others, and that older generation groups may look at social media as a
  daunting platform which is complex and stressful in their perspectives. With different perspectives on the importance
  and influence of social media, it is important to consider that the factors that contribute to stress experienced
  as a result of social media also differ from generation to generation. For example, stress gained from social media
  can look for a Generation X individual compared to a Baby Boomer individual. For an individual from the Generation X
  era, the presence of social media has been present for almost half of their lives and view social media as a platform
   to socialize. For Generation x individuals social media plays a vital part in their lives, as most of their
   information and connection with others is through the internet, as well as utilize social media as their main
   source of news. On the other hand, for Baby Boomers, social media has not been a vital part of their lives,
   not many of the Baby Boomer population will utilize social media in general, and will most likely utilize
   social media only for entertainment purposes and to just share content about their lives. Therefore, when
   considering whether or not stress really does or does not have a correlation with social media, the
   perspectives of different age groups and demographic bias must always be considered when looking at the
   data sets."),
      ),
      img(
        src = "https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/source/tabs/img/Pie_Chart.jpg",
      )
    ),
    h3("References"),
    p("1. Bhatia, Ruchi. 'Stress Analysis in Social Media.' Kaggle, 2 July 2021, https://www.kaggle.com/datasets/ruchi798/stress-analysis-in-social-media?resource=download&amp;select=dreaddit-train.csv."),
p("'How Different Generations Use Social Media-and What This Means for Your Business.' Sprout Social, 22 July 2021, https://sproutsocial.com/insights/guides/social-media-use-by-generation/."),
p("3. Marantz, Andrew. 'Reddit and the Struggle to Detoxify the Internet.' The New Yorker, 12 Mar. 2018, https://www.newyorker.com/magazine/2018/03/19/reddit-and-the-struggle-to-detoxify-the-internet."),
p("4. Watson, Amy. 'News Consumption on Social Media U.S. by Generation 2022.' Statista, 18 Aug. 2022, https://www.statista.com/statistics/1124159/us-generational-social-media-news/."),
p("5. J. Wang, K. Fu, C.T. Lu, 'SOSNet: A Graph Convolutional Network Approach to Fine-Grained Cyberbullying Detection,' Proceedings of the 2020 IEEE International Conference on Big Data (IEEE BigData 2020), December 10-13, 2020."),
p("6. WASSA-2017 Shared Task on Emotion Intensity. Saif M. Mohammad and Felipe Bravo-Marquez. In Proceedings of the EMNLP 2017 Workshop on Computational Approaches to Subjectivity, Sentiment, and Social Media (WASSA), September 2017, Copenhagen, Denmark."),
p("7. Saha, Sourav. 'Students Anxiety and Depression Dataset.' Kaggle, 12 Nov. 2022, https://www.kaggle.com/datasets/sahasourav17/students-anxiety-and-depression-dataset."),
p("8. Dixon, S. 'Impact of social media on Daily Life Worldwide' Statista. 28 Apr. 2022, https://www.statista.com/statistics/1015131/impact-of-social-media-on-daily-life-worldwide/ "),
p("9. Barnhart, B. 'Social media demographics to inform your Brand's strategy in 2022.' Sprout Social. 27 Oct. 2022, https://sproutsocial.com/insights/new-social-media-demographics/"),
  )
)
