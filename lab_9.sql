use sakila;
-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May
insert into rental(rental_id, rental_date, inventory_id, customer_id, return_date, staff_id)
values (16050,'2005-05-31 22:48:45',1450,61,'2005-05-02 18:01:45',2);


select * from sakila.rental
order by rental_id desc
limit 10;

-- Create a table rentals_june to store the data from rental table with information for the month of June
 CREATE TABLE `rentals_june` (
	`rental_id` int NOT NULL AUTO_INCREMENT,
	`rental_date` datetime NOT NULL,
	`inventory_id` mediumint unsigned NOT NULL,
	`customer_id` smallint unsigned NOT NULL,
	`return_date` datetime DEFAULT NULL,
	`staff_id` tinyint unsigned NOT NULL,
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`rental_id`)
	) ENGINE=InnoDB AUTO_INCREMENT=16055 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;