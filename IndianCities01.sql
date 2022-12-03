select * from Very_happy.dbo.indian_cities;

--Metro Population Percentage
select Rank,City,State, (Population/Metro_Population)*100 as MetroPercentage from Very_happy.dbo.indian_cities;

-- Showing cities with highest Litercay rate

select City, Max(Literacy) as Highestliteracyrate from Very_happy.dbo.indian_cities Group By City order by Highestliteracyrate DESC;

-- Showing cities with lowest Litercay rate
 select City, Min(Literacy) as LowestLiteracyrate from Very_happy.dbo.indian_cities  Group By City order by LowestLiteracyrate ASC;

 -- Showing Number of cities each State has
 select Count (city) as NumberOfCitiesPerState,  state from Very_happy.dbo.indian_cities  Group by State;

  -- Showing Number of cities each State has
 select Sum (Population) as TotalPopulationOfState, state from Very_happy.dbo.indian_cities Group by State;

 --Showing city with highest sex ratio

 Select City,State, Sexratio from Very_happy.dbo.indian_cities order by Sexratio Desc;

 Create View MetroPopulationPercentage as 
 select Rank,City,State, (Population/Metro_Population)*100 as MetroPercentage from Very_happy.dbo.indian_cities;
