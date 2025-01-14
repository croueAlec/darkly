On the `survey` page we can see that we can give a grade to each subject. The grades go from 1 to 10 but the average for one of the subjects seems to be well above the max possible grade.

Here we can edit the value sent through the form to any number we want.
When inspecting any of the `select` tags change the value of any subject's `option` (except option 1) to a big number such as 1000000000000. This will give us the flag.

> To prevent such an issue, do not give users unrestrained access to values sent to the back-end, here an error message when the grade is above 10 would be a first step towards improvement.

This is an **Insufficient Verification of Data Authenticity** a kind of **Software and Integrity Failure**