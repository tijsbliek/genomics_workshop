library(tidyverse)

gapminder<-readr::read_csv("https://raw.githubusercontent.com/ScienceParkStudyGroup/r-lesson-based-on-ohi-data-training/gh-pages/data/gapminder.csv")
est <- readr::read_csv('https://raw.githubusercontent.com/ScienceParkStudyGroup/r-lesson-based-on-ohi-data-training/gh-pages/data/countries_estimated.csv')
gapminder_est <- left_join(gapminder, est)
head(gapminder_est)
gap_europe <- gapminder_est %>% 
  filter(continent == "Europe") %>% 
  mutate(gdpPercap_cummean  = dplyr::cummean(gdpPercap))

dir.create("figures")
dir.create("figures/europe")

country_list <- unique(gap_europe$country)  ## unique deletes duplicates in list

for(cntry in country_list){
gap_to_plot <- gap_europe %>%
  filter(country == cntry)

my_plot <- ggplot(data = gap_to_plot, aes(x= year, y= gdpPercap_cummean)) +
  geom_point() +
  labs(title = paste(cntry, "GDP per capita", sep = " "))

if (gap_to_plot$estimated == "yes"){
  print (paste(cntry, "data are estimated", sep = " "))
  
  my_plot <- my_plot +
    labs(subtitle = "Estimated data")
}if else(gap_to_plot$estimated == "no") {
   print (paste(cntry, "data are reported", sep = " ")) 
  
  my_plot <- my_plot +
    labs(subtitle = "Reported data") 
 }

ggsave(filename = paste("figures/europe/", cntry, "_gdpPercap_cummean.png", sep = ""), plot = my_plot)
}






