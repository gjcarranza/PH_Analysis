# Pewlett-Hackard Analysis
---

The Pewlett-Hackard Company required assistance in preparation for a mass of their employees eligible for retirement. The company requested a list of names of employees eligible for retirement, a count for how many positions will be vacant, which positions will be vacant and are in need of replacement, and who already in the company are eligible for mentorship prior to the retiree(s) leave of the company.

---

# Results

Before analysis can begin, possible connections of the raw data must be visualized in an attempt to keep track of the possible connections the raw data may have with each other. 

![EmployeeDB](https://user-images.githubusercontent.com/92961267/149260793-c5c19a46-7df1-4ca6-8a52-3edab28557c6.png)

As the analysis progresses, the main focus is to join data and isolate retirees and mentees from the employees data by joining additional information such as titles, from date, and to date. Prior to joining multiple factors for the client, a brief overview of the raw data and count is made. Out of the 300,024 employees, 41,380 employees (13% of the employee population) are eligible for retirement, assuming those who are eligible are still employed at the comapny.

![Employees and count](https://user-images.githubusercontent.com/92961267/149262504-208a092a-053a-4b93-94b0-5d6e36457836.png)

![retirement_eligible](https://user-images.githubusercontent.com/92961267/149263167-cd014436-39d4-49cc-92f6-05b32e7f50b5.png)

In order to get the correct number of employees eligible for retirement and who continue to work at the company, minor adjustments are made to exclude those who have already left the company by using SELECT DISTINCT ON and WHERE statements and include the retirees' titles.

![retirement and titles](https://user-images.githubusercontent.com/92961267/149263401-957dd4d5-ec9e-421e-a032-67808fbaa0e1.png)

Now that a table is developed including a list of employees and their titles, the client requested an overall summary for the number of vacancies that the company will have and in which position, where Senior Engineer position having the highest vacancy.

![summary of vacancy](https://user-images.githubusercontent.com/92961267/149264203-56fa5a66-d19f-4f81-87ad-06820e797b44.png)

Before the company embarks on hiring new employees, it is advisible to mentor those who are eligible for a promotion who continue to work for the company. There are an eligible 1,549 mentees, enough to qualify for mentorhsip. The list of potential mentees goes as follows:

![Mentorship_eligibility_list](https://user-images.githubusercontent.com/92961267/149265024-af96f0ed-463f-46cb-a6bc-59cce9a1cba7.png)

---

# Summary

The only concern is finding additional replacemnets to those mentees who have taken the opportunity for a mentorship. It is advisible to give notice to the employees who eligible fore retirement. Those who accept a severance package and agree to mentor those who are already in the company must take priority before bringing in new hires. Doing so may eliminate some cost regarding training in some of the positions. Ultimately there may still be additional vacancies that require occupancy assuming most or all mentees accept the posiition of mentorship. 
