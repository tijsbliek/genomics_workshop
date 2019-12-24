---
title: "DplyR"
author: "Tijs"
date: "21/11/2019"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

```{r}
library(dplyr)
```


read the example data file using readr::read_csv
```{r}
gapminder <- readr::read_csv("https://raw.githubusercontent.com/ScienceParkStudyGroup/r-lesson-based-on-ohi-data-training/gh-pages/data/gapminder.csv")
```

```{r}
gapminder
```

checking first few or last few with head() or tail()
```{r}
head(gapminder,n = 10)
tail(gapminder,n=11)
```

struture of a dataset
```{r}
str(gapminder)
```

More descriptions
```{r}
names(gapminder)
dim(gapminder)
ncol(gapminder)
nrow(gapminder)
```

dimentions
```{r}
c(nrow(gapminder),ncol(gapminder))
```

summery of the dataset
```{r}
summary(gapminder)
```


induvidual columns or variables
```{r}
tail(gapminder$pop, n = 10)
```

example using filter()
all rows with lifeExp of less then 29
```{r}
filter(gapminder, lifeExp < 29)
```

filter on a country
```{r}
filter(gapminder, country == "Mexico")
```

```{r}
filter(gapminder, country %in% c("Mexico","Peru"))
```

```{r}
X <- filter(gapminder, country == "Mexico", year == 2002)
X
```

```{r}
Sweden <- filter(gapminder, country == "Sweden")
mean(Sweden$lifeExp)
```

select funtion
```{r}
select(gapminder, -continent)
```

```{r}
Sweden <- filter(gapminder, country == "Sweden")
mean(Sweden$lifeExp)


MeanSweden <- filter(gapminder, country == "Sweden") %>% tail(n=2)
MeanSweden
```

```{r}
gapminderPlus <-mutate(gapminder, MegaGdp = 100000+(gdpPercap*pop))
gapminderPlus
```
highest gdp per country
```{r}
gapminder %>% 
  group_by(country) %>% 
  mutate(gdp = pop * gdpPercap, maxGdp = max(gdp)) %>% 
  ungroup()
```

summarize
```{r}
Max_gdp <- gapminder %>% 
  group_by(country) %>% 
  mutate(gdp = pop * gdpPercap) %>% 
  summarize(max_gdp = max(gdp)) %>% 
  ungroup() %>% 
  arrange(max_gdp)
Max_gdp
```

```{r}
library(tidyr)
```

```{r}
AirPassengers
```



```{r}
gap_wide <- readr::read_csv("https://github.com/ScienceParkStudyGroup/r-lesson-based-on-ohi-data-training/blob/gh-pages/data/gapminder_wide.csv")
```

```{r}
gap_wide <- readr::read_csv('https://raw.githubusercontent.com/ScienceParkStudyGroup/r-lesson-based-on-ohi-data-training/gh-pages/data/gapminder_wide.csv')

```

```{r}
head(gap_wide)
```

make gap_long from the gap_wide
```{r}
gap_long <- gap_wide %>% 
  gather(key = obstype_year, value = obs_value)
```

```{r}
dim(gap_wide)
dim(gap_long)
```

```{r}
gap_long
```

```{r}
gap_long <- gap_wide %>% 
  gather(key = obstype_year,
         value = obs_values,
         dplyr::starts_with("pop"),
         dplyr::starts_with("lifeExp"),
         dplyr::starts_with("gdpPercap")
         )
```

```{r}
gap_long
```


```{r}
gap_long <- gap_wide %>% 
  gather(key = obstype_year,
         value = obs_values,
         -continent, -country)
```


```{r}
gap_long
```

```{r}
gap_long <- gap_wide %>% 
  gather(key = obstype_year,
         value = obs_values,
         -continent, -country) %>% 
  separate(obstype_year,
           into = c("obs_type", "year" ),
           sep = "_",
           convert = TRUE)
```



```{r}
gap_long
```



```{r}
canada_df <- gap_long %>% 
  filter(obs_type == "lifeExp",
            country == "Canada")
```



plot canada lifeExp
```{r}
ggplot(canada_df, aes(x=year, y = obs_values)) +
  geom_line()
```

```{r}
continents <- gap_long %>% 
  filter(obs_type == "lifeExp",
         year > 1980) %>% 
  group_by(continent, year) %>% 
  summarize(mean_le = mean(obs_values)) %>% 
  ungroup()

```

```{r}
ggplot(data = continents, aes(x =year, y = mean_le, color = continent)) +
  geom_line() +
  labs(title = "Mean life expectancy", x="year", y = "Age (years)")
  
```


from long back to wide.
```{r}
gap_normal <- gap_long %>% 
  spread(obs_type, obs_values)
```

```{r}
dim(gap_normal)
dim(gapminder)

head(gap_normal)
head(gapminder)
```
```{r}
head(gap_normal)
```

```{r}
gap_wide_new <- gap_long %>% 
  unite(col = var_names, obs_type, year, sep="_") %>% 
  spread(key = var_names,
          value = obs_values)
gap_wide_new
```


```{r}
all.equal(gap_wide, gap_wide_new)
```















