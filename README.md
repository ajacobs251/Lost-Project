# Lost-Project
Luxury-Oriented Scenic Tours (LOST) provides guided tours to groups of visitors to the 
Washington, D.C. area. In recent years, LOST has grown quickly and is having difficulty 
keeping up with all of the various information needs of the company. The company’s operations 
are as follows:
  1. LOST offers many different tours. For each tour, the tour name, approximate length (in 
hours), and fee charge is needed. Guides are identified by an employee ID, but the system 
should also record a guide’s name, home address, and date of hire. Guides take a test to 
be qualified to lead specific tours. It is important to know which guides are qualified to 
leach which tours and the date that they completed the qualification test for each tour. A 
guide may be qualified to lead many different tours. A tour can have many different 
qualified guides. New guides may or may not be qualified to lead any tours, just as a new 
tour may or may not have any qualified guides.
  2. Every tour must be designed to visit at least three locations. For each location, a name, 
type, and official description are kept. Some locations (such as the White House) are 
visited by more than one tour, while others (such as Arlington Cemetery) are visited by a 
single tour. All locations are visited by at least one tour. The order in which the tour visits 
each location should be tracked as well.
  3. When a tour is actually given, that is referred to as an “outing”. LOST schedules outings 
well in advance so they can be advertised and so employees can understand their 
upcoming work schedules. A tour can have many scheduled outings, although newly 
designed tours may not have any outings scheduled. Each outing is for a single tour and 
is scheduled for a particular date and time. All outings must be associated with a tour. All 
tours at LOST are guided tours, so a guide must be assigned to each outing. Each outing 
has one and only one guide. Guides are occasionally asked to lead an outing of a tour 
even if they are not officially qualified to lead that tour. Newly hired guides may not have 
ever been scheduled to lead any outings. 
  4. Tourists, called “clients” by LOST, pay to join a scheduled outing. For each client, the 
name and telephone number are recorded. Clients may sign up to join many different 
outings, and each outing can have many clients. Information is kept only on clients who 
have signed up for at least one outing, although newly scheduled outings may not have 
any clients signed up yet.
Given the specifications above:
    1. Create a detailed Entity-Relationship Diagram to support LOST operations
    2. Convert this E-R Diagram to a detailed schema diagram, with appropriate primary and 
foreign keys indicated within the diagram.
    3. Ensure that all relations are in the Third Normal Form. Normalize the relations up to 3NF
where necessary.
    4. Write an SQL Script that includes the SQL codes required to create all the normalized 
tables/relations identified in (3) above. (Recommended DBMS: MySQL
