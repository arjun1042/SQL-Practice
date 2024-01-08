select * from customer
select * from customer where grade > 100;

select * from customer where city="new york" and grade>100;

select * from customer where city="new york" or grade>100;

select * from customer where city='new york' or not grade > 100;

select * from customer where not (city= 'new york' or grade > 100);

select * from orders where not ord_date= '2012-09-10' and not salesman_id > 5005 or not purch_amt > 1000;

select * from orders where not((ord_date = '2012-08-17' or customer_id > 3005) and purch_amt < 1000);

select ord_no, purch_amt, (100* purch_amt)/6000 as "archieved_data %", 100*(6000*purch_amt)/6000 as "un_archieved %" from orders where (100*purch_amt)/6000 >50; 