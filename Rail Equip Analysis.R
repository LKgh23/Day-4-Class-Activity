Trains <- read.csv('~//Downloads/Rail_Equipment_Accident_Incident_Data.csv')

Trains$Total.Casualties <- Trains$Total.Persons.Injured + Trains$Total.Persons.Killed

Trains_Filtered <- Trains[ , c("Accident.Number", "Report.Year", "Reporting.Railroad.Name", "Hazmat.Cars", "Persons.Evacuated", "State.Name", "Temperature", "Visibility", "Weather.Condition", "Train.Speed", "Gross.Tonnage", "Positive.Alcohol.Tests", "Positive.Drug.Tests", "Total.Damage.Cost", "Total.Casualties", "Longitude", "Latitude")] ##

write.csv(Trains_Filtered, "~//Downloads/Filtered_Trains_Dataset.csv")
