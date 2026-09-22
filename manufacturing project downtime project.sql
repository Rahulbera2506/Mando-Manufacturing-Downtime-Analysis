CREATE TABLE manufacturing_downtime (
    record_id INT PRIMARY KEY,
    date DATE,
    machine_id VARCHAR(10),
    machine_type VARCHAR(5),
    downtime_reason VARCHAR(50),
    downtime_hours DECIMAL(10,2),
    production_units_planned INT,
    production_loss INT,
    production_units_produced INT
);
select * from manufacturing_downtime;
INSERT INTO manufacturing_downtime
(record_id, date, machine_id, machine_type, downtime_reason,
 downtime_hours, production_units_planned, production_loss,
 production_units_produced)
VALUES
(1,'2025-01-01','M001','L','Mechanical Failure',5.20,200,78,122),
(2,'2025-01-01','M002','M','Overheating',3.40,180,45,135),
(3,'2025-01-02','M003','H','Tool Wear',7.10,250,110,140),
(4,'2025-01-02','M004','L','Power Failure',2.50,160,35,125),
(5,'2025-01-03','M005','M','Electrical Failure',4.80,220,72,148),
(6,'2025-01-04','M001','L','Overheating',6.30,210,95,115),
(7,'2025-01-04','M006','H','Mechanical Failure',8.20,280,135,145),
(8,'2025-01-05','M007','M','Maintenance',2.10,190,25,165),
(9,'2025-01-06','M002','M','Tool Wear',5.60,200,82,118),
(10,'2025-01-07','M008','L','Material Shortage',4.20,170,60,110),
(11,'2025-01-08','M003','H','Mechanical Failure',9.10,290,150,140),
(12,'2025-01-09','M009','M','Electrical Failure',3.70,210,55,155),
(13,'2025-01-10','M004','L','Power Failure',6.40,180,90,90),
(14,'2025-01-11','M010','H','Overheating',7.80,260,125,135),
(15,'2025-01-12','M005','M','Tool Wear',4.50,230,68,162),
(16,'2025-01-13','M001','L','Mechanical Failure',8.60,240,130,110),
(17,'2025-01-14','M006','H','Electrical Failure',5.30,270,85,185),
(18,'2025-01-15','M007','M','Maintenance',2.80,190,35,155),
(19,'2025-01-16','M008','L','Overheating',6.90,200,105,95),
(20,'2025-01-17','M009','M','Mechanical Failure',7.40,250,115,135),
(21,'2025-01-18','M010','H','Tool Wear',8.10,280,140,140),
(22,'2025-01-19','M002','M','Power Failure',3.20,190,42,148),
(23,'2025-01-20','M003','H','Overheating',9.50,300,165,135),
(24,'2025-01-21','M004','L','Electrical Failure',4.60,210,70,140),
(25,'2025-01-22','M005','M','Mechanical Failure',6.70,240,105,135),
(26,'2025-01-23','M006','H','Material Shortage',5.10,260,75,185),
(27,'2025-01-24','M007','M','Tool Wear',7.60,220,120,100),
(28,'2025-01-26','M008','L','Power Failure',3.90,180,55,125),
(29,'2025-01-28','M009','M','Overheating',8.40,250,135,115),
(30,'2025-01-30','M010','H','Mechanical Failure',10.20,300,180,120);

-- Which machine breaks down most often? or Which machine has the highest number of breakdowns?
 SELECT
    machine_id,
    COUNT(*) AS total_breakdowns
FROM manufacturing_downtime
GROUP BY machine_id
ORDER BY total_breakdowns DESC;

-- Which machine has the most downtime? 
SELECT
    machine_id,
    COUNT(*) AS total_breakdowns
FROM manufacturing_downtime
GROUP BY machine_id
ORDER BY total_breakdowns DESC;
-- Which machine has the most downtime?  Which machine has the highest total downtime?
SELECT
    machine_id,
    SUM(downtime_hours) AS total_downtime_hours
FROM manufacturing_downtime
GROUP BY machine_id
ORDER BY total_downtime_hours DESC;

-- How many times did each machine break down ? 
SELECT
    machine_id,
    COUNT(*) AS breakdown_count
FROM manufacturing_downtime
GROUP BY machine_id
ORDER BY breakdown_count DESC;

-- “How much total time did the machines spend in breakdown/downtime? “What is the total downtime in hours?
SELECT
    machine_id,
    SUM(downtime_hours) AS total_downtime_hours
FROM manufacturing_downtime
GROUP BY machine_id
ORDER BY total_downtime_hours DESC;

-- Which downtime reason causes the most total downtime hours? or Which downtime reason causes the highest total downtime hours?
select downtime_reason,
sum(downtime_hours) as most_total_downtimehours
from manufacturing_downtime
group by downtime_reason
order by most_total_downtimehours desc;

-- Which machine has the most breakdowns? how many time did it happend.
select machine_id,
count(*) as breakdown_count
from manufacturing_downtime
group by machine_id
order by breakdown_count desc;

-- Which downtime reason occurs most often? mens(use count)or Which downtime reason most of the time happend ? How many hours did it cause in total?
select downtime_reason,
count(*)as breakdown_count
from manufacturing_downtime
group by downtime_reason
order by breakdown_count desc;

-- How much total production was lost because of machine downtime?
select
sum(production_loss) as total_production_loss
from manufacturing_downtime;

-- Which machine has the highest production loss?
select machine_id,
sum(production_loss) as total_production_loss
from manufacturing_downtime
group by machine_id
order by total_production_loss desc;

select * from manufacturing_downtime;

-- Which downtime reason causes the highest production loss? which downtime reason is causing the biggest production loss.
select downtime_reason,
sum(production_loss) as total_production_loss
from manufacturing_downtime
group by downtime_reason
order by total_production_loss desc;

-- Which machine has the highest total downtime hours? or   which machine is spending the most time stopped .
select machine_id,
sum(downtime_hours) as total_downtime_hours
from manufacturing_downtime
group by machine_id
order by total_downtime_hours desc;
-- Does higher downtime lead to higher production loss? More downtime → More production loss?
select machine_id,
      downtime_reason,
	  downtime_hours,
	  production_loss
from manufacturing_downtime
order by downtime_hours desc;

-- What is the average downtime per machine?
select machine_id, 
avg(downtime_hours) as avg_downtime
from manufacturing_downtime
group by machine_id
order by avg_downtime desc;
-- Which downtime reason has the highest average downtime hours?
select downtime_reason,
avg(downtime_hours) as avg_downtime_hours
from manufacturing_downtime
group by downtime_reason
order by avg_downtime_hours desc;
-- select downtime_reason,
avg(downtime_hours) as avg_downtime_hours
from manufacturing_downtime
group by downtime_reason
order by avg_downtime_hours desc;
-- Which machine has the lowest production?
select machine_id,
sum(production_units_produced) as total_production_units_produced
from manufacturing_downtime
group by machine_id
order by total_production_units_produced asc;

select * from manufacturing_downtime;
-- Which machine has the highest production loss percentage? [Production loss % = Production loss ÷ Planned production × 100 ]
SELECT
    machine_id,
    SUM(production_loss) AS total_production_loss,
    SUM(production_units_planned) AS total_planned_production,
    ROUND(
        100.0 * sum(production_loss)
        / sum(production_units_planned),
        2
    ) AS production_loss_percentage
FROM manufacturing_downtime
GROUP BY machine_id
ORDER BY production_loss_percentage DESC;

-- Which downtime reason has the highest production loss percentage?
SELECT 
    downtime_reason,
    SUM(production_loss) AS total_production_loss,
    SUM(production_units_planned) AS total_planned_production,
    ROUND(
        100.0 * sum(production_loss)
        / sum(production_units_planned),
        2
    ) AS production_loss_percentage
FROM manufacturing_downtime
GROUP BY downtime_reason
ORDER BY production_loss_percentage DESC;

-- Which machine has the most downtime incidents and the highest production loss? Most downtime incidents = most times → COUNT(*)
select machine_id,
count(*) as downtime_incidents,
sum(downtime_hours) as highest_downtime,
sum(production_loss) as total_production_loss
from manufacturing_downtime
group by machine_id
order by highest_downtime desc, 
      total_production_loss desc;

-- Which downtime reason causes the most total production loss?
select downtime_reason,
sum(production_loss) as total_production_loss
from manufacturing_downtime
group by downtime_reason
order by total_production_loss desc;

-- Which machine has the highest average production loss per downtime incident?
select machine_id,
avg(production_loss) as avg_production_loss
from manufacturing_downtime
group by machine_id
order by avg_production_loss desc;

-- Which downtime reason has the longest single downtime event?
select downtime_reason,
max(downtime_hours) as longest_downtime_event
from manufacturing_downtime
group by downtime_reason
order by longest_downtime_event desc;
-- Which machine has the longest single downtime event?
select machine_id,
max(downtime_hours) as longest_downtime_event
from manufacturing_downtime
group by machine_id
order by longest_downtime_event desc;

-- Which machine has the highest average downtime AND the highest total production loss?
select machine_id,
avg(downtime_hours) as avg_downtimes,
sum(production_loss) as total_production_loss
from manufacturing_downtime
group by machine_id
order by avg_downtimes desc,
         total_production_loss desc;





