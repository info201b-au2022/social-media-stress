library("dplyr")
library("tidyr")
library("ggplot2")

social_media <- read.csv("https://raw.githubusercontent.com/info201b-au2022/social-media-stress/main/data/General-Social-Media.csv", stringsAsFactors = TRUE)

to_plot <- pivot_longer(social_media, cols = starts_with("Growth"), names_to = "Growth", values_to = "Percentage")

chart2 <- ggplot(to_plot, aes(fill = Growth, y = Name, x = Percentage)) +
  geom_bar(position="dodge", stat="identity") +
  labs(title = "Growth of Social Media Platforms in 2020 vs 2021")

data <- social_media %>%
  arrange(desc(Name)) %>%
  mutate(MAU = Monthly.Active.Users / sum(social_media$Monthly.Active.Users) *100) %>%
  mutate(ypos = cumsum(MAU)- 0.5*MAU )

pie <- ggplot(data, aes(x="", y = MAU, fill = Name)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) +
  labs(
    title = "Monthly Active Users of Each Social Media App, in Billions"
  ) +
  theme_void() +
  geom_text(aes(y = ypos, label = Monthly.Active.Users), color = "black", size=6) +
  scale_fill_brewer(palette="Set1") +
  theme(plot.title = element_text(hjust = 0.5))