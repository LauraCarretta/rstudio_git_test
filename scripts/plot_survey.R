if(!requireNamespace("tidyverse"))install.packages("tidyverse")
library("tidyverse")
surveys_complete <- read_csv("Data/surveys_complete.csv")
surveys_plot <- ggplot(data = surveys_complete, mapping = aes(x = weight, y = hindfoot_length))
surveys_plot + geom_point()
surveys_plot +  geom_point(alpha = 0.1, aes(color = species_id))
ggplot(data = surveys_complete, mapping = aes(x = species_id, y = weight)) +
  geom_boxplot()

