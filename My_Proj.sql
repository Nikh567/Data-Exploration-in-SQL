select * from hell..Rain_Monthly

select count(distinct state) from rain_monthly 

select COUNT(DISTINCT District) from rain_monthly
 
select count(distinct(district + ' is in '+ state)) from rain_monthly 

select top 20 percent jan from rain_monthly 

select count(*) from rain_monthly where jan='0'

select state,district,max(monsoon)as "Total Monsoon" from rain_monthly group by state,district 
order by max(18) desc

select * from hell..rain_monthly where imd_36 is null 


select district,avg(jan) from rain_monthly group by district


select state,district,total,
	case when total >= 1000 then 'High'  
		 when total <= 500 then 'Low' 
	else 'OK'
	end "Status"
	into Rain_Status from rain_monthly

select * from Rain_monthly

select top 20 (total) from rain_monthly

select district,max(monsoon) from rain_monthly group by district

select * from Netflix_price
select * from netflix_subs order by 3 desc

select * from netflix_subs as n,netflix_price as n2 where n.country=n2.country

select * from (select max([Cost Per Month - Basic ($)]) as "Basic Cost") x  
where [Total Library Size] > 5000 order by "Basic Cost"

select Country from netflix_price where [Cost Per Month - Standard ($)] > 10 and [No  of Movies] is null or 
[Total Library Size] < 5000 and [No  of TV Shows] between 3500 and 3800

select top 5* from netflix_subs where [No  of TV Shows] < 5000 order by NEWID()

select Country from netflix_price where [Cost Per Month - Premium ($)] > 10 and Country 
like 'A%' order by 1 desc

select country,max([No  of TV Shows]) from netflix_price where [No  of TV Shows] < 
(select max([No  of TV Shows]) from netflix_price) group by country order by 1 desc

drop table [dbo].[HollywoodMovies]





















































