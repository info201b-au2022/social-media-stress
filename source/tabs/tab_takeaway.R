takeaway <- tabPanel(
  "Takeaway",
  br(),
  tags$section(
    tags$div(
      tags$div(
        h1("Key Takeaways:"),
        p(HTML("&emsp;"), " 1). Facebook is currently the most used social media app with 2.91 billion
     active users. However, as the younger generation such as Gen Z or Gen Alpha
     start becoming more active on their social platforms, we expect other apps
     such as Tiktok to retain a higher volume of users. Moreover, Tiktok currently
     has the highest average screen time out of all the social media sites analyzed.
     As a result, not only will social media users increase, but average screen time is bound to
     increase as well."),
      ),
        img(src = "https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/source/tabs/img/Pie_Chart.jpg",),
    ),
    
    tags$div(
      tags$div(
        p(HTML("&emsp;"), " 2). Over 50% - the majority - of respondants indicated that
      social media affected at least one aspect of their life. While many indicate
      that social media had an beneficial impact in communication ease and access to
      information, social media also decreased civility online. When people are able
      to hide behind a screen, their filters also disappear. Many prefer to speak
      their mind on social media and aren't afraid to reveal their actual emotions.
      Emotions such as anger, anxiety, and sadness become apparent in both posts that
      aren't deemed to contain any stress and posts that are. "),
      img(src = "https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/source/tabs/img/Emotions_Stress.jpg"),
      ),
    ),
    
    tags$div(
      tags$div(
        p(HTML("&emsp;"), " 3). The presence of stress is everywhere on social media platforms.
        Whether it be that social media causes stress or that people who are stressed use
        the platform as a ranting place, it's undeniable that stress and social media
        come hand-in-hand. However, certain discussion threads and categories of interest
        on these platforms contain much more or more less signs of containing stress.
        For example, we see that subreddits titled Stess and Domesticviolence have
        a higher stressed percentage than a subreddit titled Assistance."),
      ),
      img(src = "https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/source/tabs/img/Emotions_Subreddit.jpg",
          width = 600),
    ),
  ),
)
