# Pewlett-Hackard-Analysis
## The Upcoming Silver Tsunami
This particular company has a wave of employees who are set to retire. As a result, the company will have a of holes to fill in the company. This is where we come in. We are brought in to go over the data and see just how many employees are at retirement age. We are working with Postgres to cycle through the data.

## First Step: ERD
![](https://github.com/Aceofhearts1/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)

_With this we are able to see the primary keys and foreign keys. Essentially the relationship between the tables/data_

## Second Step:
With that out of the way, we were able to start analyzing the data and coming up with what we need to reach our goal of seeing all the employees at retirement age. From there, we code!
We created new tables to show all of those at retirement age and their info. Most importantly, what job titles they hold. This way we know what to replace.

![](https://github.com/Aceofhearts1/Pewlett-Hackard-Analysis/blob/main/retirement_titles.png)

1. We learned through all of our research that there is a great amount of people within retirement age.
2. We learned which postions will be most effected.
3. We learned that there are a great amount of people in the next wave of employees to retire. Not quite there yet. So there is an oppurtunity to be had.
4. We learned there are a lot of employees who would be good based on age to take a mentorship role.
- in this particular mentorship role, the people at the age to retire can switch to a part-time role instead of completely quitting in order to help the new batch of employees transition in. :handshake: :+1:

![](https://github.com/Aceofhearts1/Pewlett-Hackard-Analysis/blob/main/SQL%20Query%20(1).png)

_One issue we came across in coding this is one of the primary keys was duplicated in some of our data. The employeees who switched job titles but kept their same employee id. We used "Distinct On" to give us the latest job title they had_

## Summary:
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
  - we see there are 71,000 employees potentially retiring soon.
- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
  - There are not quite enough people to fill a void of 71,000. However, with potentially 10, 000 switching to part-time and taking on few mentees, the impact can be lessened significantly.
