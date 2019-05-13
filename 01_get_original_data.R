library(wikipediatrend)

terrorism_topics <- c('Al-Qaeda', 'Terrorism', 'Terror', 'Environmental_terrorism', 'Eco-terrorism', 'Conventional_weapon', 'Weapons-grade', 'Dirty_bomb', 'Nuclear_enrichment', 'nuclear', 'Chemical_weapon', 'Biological_weapon', 'Improvised_explosive_device', 'Abu_Sayyaf', 'FARC', 'Euskadi_ta_Askatasuna', 'hezbollah', 'Palestine_Liberation_Front', 'Car_bomb', 'jihad', 'taliban', 'Suicide_bomber', 'Suicide_attack', 'Al-Qaeda_in_the_Arabian_Peninsula', 'Al-Qaeda_in_the_Islamic_Maghreb', 'Tehrik-i-Taliban_Pakistan', 'Political_radicalism', 'Al-Shabaab', 'recruitment', 'islamist')

terrorism_data <- 
  wp_trend(
    page = terrorism_topics, 
    lang = "en", 
    from = "2011-12-01",
    to   = "2014-11-30"
  )

save(terrorism_data, file = "data/terrorism_data.RData")

terrorism_data_long <- 
  wp_trend(
    page = terrorism_topics, 
    lang = "en", 
    from = "2010-12-01",
    to   = "2015-11-30"
  )

save(terrorism_data, file = "data/terrorism_data_long.RData")

popular_topics <- c('Facebook', 'Wiki', 'Lists_of_deaths_by_year#2012', 'One_Direction', 'The_Avengers_(2012_film)', 'Fifty_Shades_of_Grey', '2012_phenomenon', 'Google', 'The_Dark_Knight_Rises', 'The_Hunger_Games', 'Lists_of_deaths_by_year#2013', 'Breaking_Bad', 'G-force', 'World_War_II', 'YouTube', 'List_of_Bollywood_films_of_2013', 'United_States', 'Online_shopping', 'Java', 'Alive', 'Lists_of_deaths_by_year#2014', 'Climatic_Research_Unit_email_controversy', 'Amazon.com', '2014_FIFA_World_Cup', 'Ebola_virus_disease', 'Game_of_Thrones')

popular_data <- 
  wp_trend(
    page = popular_topics, 
    lang = "en", 
    from = "2011-12-01",
    to   = "2014-11-30"
  )

save(popular_data, file = "data/popular_data.RData")

infra_topics <- c('Infrastructure_security', 'Airport', 'Airplane', 'Chemical_burn', 'CIKR', 'Amtrak', 'Collapse', 'Information_infrastructure', 'Telecommunications_network', 'Telecommunication', 'Critical_Infrastructure', 'National_Information_Infrastructure', 'Metro_station', 'Washington_Metropolitan_Area_Transit_Authority', 'Subway', 'Bay_Area_Rapid_Transit', 'Metropolitan_Atlanta_Rapid_Transit_Authority', 'Port_authority', 'NBIC', 'Electrical_grid', 'Power', 'Smart', 'Full_body_scanner', 'Electric_power', 'Failure', 'Power_outage', 'Blackout', 'Brownout', 'Port', 'Dock_(maritime)', 'Bridge', 'Flight_cancellation_and_delay', 'Delay', 'Electric_power_transmission')

infra_data <- 
  wp_trend(
    page = infra_topics, 
    lang = "en", 
    from = "2011-12-01",
    to   = "2014-11-30"
  )

save(infra_data, file = "data/infra_data.RData")