# objective: collecting tweets and ranking them

# === IMPORTANT NOTES ===
# Ensure that files you are overwriting are CLOSED!

library(twitteR)

collect <- function(){
  api_key <- "zg5Ut1AOprZqkvGZxDCFBKoXE"
  api_secret <- "cZ86eM9AzuGrCmIbJT19pNil3234V5OY2GEGWydi7ZP5eMjt3c"
  token <- "705516066810691584-smmdtUx2OavVykUnurlNN1PuTkGFv8g"
  token_secret <- "7UFcMktVkrbiQ4L6szhKJTZlNQ1ozCWEPKbBhCWf2dLM0"

  #Enter search words separated by 'OR'
  u.search_words <- readline(prompt="Enter search words separated by 'OR/AND': ")
  u.search_words <- as.character(u.search_words)

  setup_twitter_oauth(api_key, api_secret, token, token_secret)
  zz <- searchTwitter(u.search_words, n = 50, lang = "en")
  tweets <- twListToDF(zz)
  write.csv(tweets, "C:\\Users\\becky\\Documents\\twitter map\\tweet_report.csv")
}

collect()