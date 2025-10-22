-- Auto-generated SQL for SAT Questions

-- Supports both Multiple Choice and Free Response questions


INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'ac472881',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the given equation,  and  are constants, and . If the equation has infinitely many solutions, what is the value of ?',
    '403',
    '{"type":"free_response"}',
    'The correct answer is . For a linear equation in one variable to have infinitely many solutions, the coefficients of the
variable must be equal on both sides of the equation and the constant terms must also be equal on both sides of the
equation. The given equation can be rewritten as , or . Applying the
distributive property to the right-hand side of this equation yields . For this equation to have
infinitely many solutions, the coefficients of  must be equal, so it follows that . Additionally, the constant terms must
be equal, which means . Substituting  for  in this equation yields , or .
Adding  to both sides of this equation yields . Adding  to both sides of this equation yields .
Multiplying both sides of this equation by  yields . Therefore, if the equation has infinitely many solutions, the
value of  is .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '002dba45',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Line  is defined by . Line  is perpendicular to line  in the xy-plane. What is the slope of line ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . It’s given that line  is perpendicular to line  in the xy-plane. This means that the slope of line  is
the negative reciprocal of the slope of line . The equation of line , , is written in slope-intercept form
, where  is the slope of the line and  is the y-coordinate of the y-intercept of the line. It follows that the slope
of line  is . The negative reciprocal of a number is  divided by the number. Therefore, the negative reciprocal of
is , or . Thus, the slope of line  is . Note that 3/17, .1764, .1765, and 0.176 are examples of ways to enter a
correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f224df07',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A cargo helicopter delivers only 100-pound packages and 120-pound packages.
For each delivery trip, the helicopter must carry at least 10 packages, and the total
weight of the packages can be at most 1,100 pounds. What is the maximum
number of 120-pound packages that the helicopter can carry per trip?
A. 2
B. 4
C. 5
D. 6',
    'C',
    '{"type":"multiple_choice","choices":{"A":"2","B":"4","C":"5","D":"6"}}',
    'Choice C is correct. Let a equal the number of 120-pound packages, and let b equal the number of 100-pound packages. It’s
given that the total weight of the packages can be at most 1,100 pounds: the inequality  represents
this situation. It’s also given that the helicopter must carry at least 10 packages: the inequality  represents this
situation. Values of a and b that satisfy these two inequalities represent the allowable numbers of 120-pound packages and
100-pound packages the helicopter can transport. To maximize the number of 120-pound packages, a, in the helicopter, the
number of 100-pound packages, b, in the helicopter needs to be minimized. Expressing b in terms of a in the second
inequality yields , so the minimum value of b is equal to . Substituting  for b in the first inequality
results in . Using the distributive property to rewrite this inequality yields
, or . Subtracting 1,000 from both sides of this inequality yields
. Dividing both sides of this inequality by 20 results in . This means that the maximum number of 120-pound
packages that the helicopter can carry per trip is 5.
Choices A, B, and D are incorrect and may result from incorrectly creating or solving the system of inequalities.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd1b66ae6',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'If  satisfies the system of equations
above, what is the value of y ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . One method for solving the system of equations for y is to add corresponding sides of the two
equations. Adding the left-hand sides gives , or 4y. Adding the right-hand sides yields . It
follows that . Finally, dividing both sides of  by 4 yields  or . Note that 3/2 and 1.5 are examples of
ways to enter a correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'cb8f449f',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The system of equations above has solution (x,
y). What is the value of x ?
A. 3
B.
C. 4
D. 6',
    'D',
    '{"type":"multiple_choice","choices":{"A":"3","C":"4","D":"6"}}',
    'Choice D is correct. Adding the corresponding sides of the two equations eliminates y and yields , as shown.
If (x, y) is a solution to the system, then (x, y) satisfies both equations in the system and any equation derived from them.
Therefore, .
Choices A, B, and C are incorrect and may be the result of errors when solving the system.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '3cdbf026',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The graph of the equation  is a line in the xy-plane, where a and k are
constants. If the line contains the points and , what is the value of
k ?
A.
B.
C. 2
D. 3',
    'A',
    '{"type":"multiple_choice","choices":{"C":"2","D":"3"}}',
    'Choice A is correct. The value of k can be found using the slope-intercept form of a linear equation, , where m is
the slope and b is the y-coordinate of the y-intercept. The equation  can be rewritten in the form
. One of the given points, , is the y-intercept. Thus, the y-coordinate of the y-intercept  must be equal to .
Multiplying both sides by k gives . Dividing both sides by  gives .
Choices B, C, and D are incorrect and may result from errors made rewriting the given equation.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'ff501705',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the given system of equations,  is a constant. If the system has no solution, what is the value of ?',
    '6',
    '{"type":"free_response"}',
    'The correct answer is . A system of two linear equations in two variables,  and , has no solution if the lines represented
by the equations in the xy-plane are parallel and distinct. Lines represented by equations in standard form,
and , are parallel if the coefficients for  and  in one equation are proportional to the corresponding
coefficients in the other equation, meaning ; and the lines are distinct if the constants are not proportional, meaning
is not equal to  or . The first equation in the given system is . Multiplying each side of this
equation by  yields . Adding  to each side of this equation yields , or
. The second equation in the given system is . Multiplying each side of this equation by
yields . Subtracting  from each side of this equation yields . Subtracting  from
each side of this equation yields . Therefore, the two equations in the given system, written in standard form,
are  and. As previously stated, if this system has no solution, the lines represented by the
equations in the xy-plane are parallel and distinct, meaning the proportion , or , is true and the
proportion  is not true. The proportion  is not true. Multiplying each side of the true proportion,
,  by  yields . Therefore, if the system has no solution, then the value of  is .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '2937ef4f',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Hector used a tool called an auger to remove corn from a storage bin at a constant
rate. The bin contained 24,000 bushels of corn when Hector began to use
the auger. After 5 hours of using the auger, 19,350 bushels of corn remained in the
bin. If the auger continues to remove corn at this rate, what is the total number of
hours Hector will have been using the auger when 12,840 bushels of corn remain in
the bin?
A.   3
B.   7
C.   8
D. 12',
    'D',
    '{"type":"multiple_choice","choices":{"A":"3","B":"7","C":"8","D":"12"}}',
    'Choice D is correct. After using the auger for 5 hours, Hector had removed 24,000 – 19,350 = 4,650 bushels of corn from the
storage bin. During the 5-hour period, the auger removed corn from the bin at a constant rate of  bushels per
hour. Assuming the auger continues to remove corn at this rate, after x hours it will have removed 930x bushels of corn.
Because the bin contained 24,000 bushels of corn when Hector started using the auger, the equation 24,000 – 930x = 12,840
can be used to find the number of hours, x, Hector will have been using the auger when 12,840 bushels of corn remain in the
bin. Subtracting 12,840 from both sides of this equation and adding 930x to both sides of the equation yields 11,160 = 930x.
Dividing both sides of this equation by 930 yields x = 12. Therefore, Hector will have been using the auger for 12 hours when
12,840 bushels of corn remain in the storage bin.
Choice A is incorrect. Three hours after Hector began using the auger, 24,000 – 3(930) = 21,210 bushels of corn remained,
not 12,840. Choice B is incorrect. Seven hours after Hector began using the auger, 24,000 – 7(930) = 17,490 bushels of corn
will remain, not 12,840. Choice C is incorrect. Eight hours after Hector began using the auger, 24,000 – 8(930) = 16,560
bushels of corn will remain, not 12,840.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '9bbce683',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'For line , the table shows three values of  and their corresponding values of . Line  is the result of translating line
down  units in the xy-plane. What is the x-intercept of line ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The equation of line  can be written in slope-intercept form , where  is the slope of the
line and  is the y-intercept of the line. It’s given that line  contains the points , , and .
Therefore, its slope  can be found as , or . Substituting  for  in the equation  yields .
Substituting  for  and  for  in this equation yields , or . Subtracting  from both
sides of this equation yields . Substituting  for  in  yields . Since line  is the result of
translating line  down  units, an equation of line  is , or . Substituting  for  in this
equation yields . Solving this equation for  yields . Therefore, the x-intercept of line  is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '2b15d65f',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'An economist modeled the demand Q for a certain product as a linear function of
the selling price P. The demand was 20,000 units when the selling price was $40
per unit, and the demand was 15,000 units when the selling price was $60 per unit.
Based on the model, what is the demand, in units, when the selling price is $55 per
unit?
A. 16,250
B. 16,500
C. 16,750
D. 17,500',
    'A',
    '{"type":"multiple_choice","choices":{"A":"16,250","B":"16,500","C":"16,750","D":"17,500"}}',
    'Choice A is correct. Let the economist’s model be the linear function , where Q is the demand, P is the selling
price, m is the slope of the line, and b is the y-coordinate of the y-intercept of the line in the xy-plane, where . Two pairs
of the selling price P and the demand Q are given. Using the coordinate pairs , two points that satisfy the function are
and . The slope m of the function can be found using the formula . Substituting
the given values into this formula yields , or  . Therefore, . The value of
b can be found by substituting one of the points into the function. Substituting the values of P and Q from the point
yields , or . Adding 10,000 to both sides of this equation
yields . Therefore, the linear function the economist used as the model is . Substituting
55 for P yields . It follows that when the selling price is $55 per unit, the demand is
16,250 units.
Choices B, C, and D are incorrect and may result from calculation or conceptual errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e25f0807',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The table shows two values of  and their corresponding values of . The graph of the linear equation representing this
relationship passes through the point . What is the value of ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . The linear relationship between  and  can be represented by the equation , where
and  are constants. It''s given in the table that when , . Substituting  for  and  for  in the
equation  yields , which can be rewritten as . It''s also given in the table
that when , . Substituting  for  and  for  in the equation  yields , which can be
rewritten as . Substituting  for  in this equation yields . Adding  to
both sides of this equation yields . Adding  to both sides of this equation yields . Dividing
both sides of this equation by  yields , or . Substituting  for ,  for , and  for  in the equation
yields , or . Adding  to both sides of this equation yields .
Therefore,  and . Substituting  for  and  for  in the equation  yields . Thus,
the equation  represents the linear relationship between  and . It’s also given that the graph of the linear
equation representing this relationship passes through the point . Substituting  for  and  for  in the equation
yields , which is equivalent to , or . Note that 65/4 and 16.25 are
examples of ways to enter a correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b86123af',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Hiro and Sofia purchased shirts and pants from a store. The price of each shirt
purchased was the same and the price of each pair of pants purchased was the
same. Hiro purchased 4 shirts and 2 pairs of pants for $86, and Sofia purchased 3
shirts and 5 pairs of pants for $166. Which of the following systems of linear
equations represents the situation, if x represents the price, in dollars, of each shirt
and y represents the price, in dollars, of each pair of pants?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. Hiro purchased 4 shirts and each shirt cost x dollars, so he spent a total of 4x dollars on shirts. Likewise,
Hiro purchased 2 pairs of pants, and each pair of pants cost y dollars, so he spent a total of 2y dollars on pants. Therefore,
the total amount that Hiro spent was 4x + 2y. Since Hiro spent $86 in total, this can be modeled by the equation 4x + 2y = 86.
Using the same reasoning, Sofia bought 3 shirts at x dollars each and 5 pairs of pants at y dollars each, so she spent a total
of 3x + 5y dollars on shirts and pants. Since Sofia spent $166 in total, this can be modeled by the equation 3x + 5y = 166.
Choice B is incorrect and may be the result of switching the number of shirts Sofia purchased with the number of pairs of
pants Hiro purchased. Choice C is incorrect and may be the result of switching the total price each person paid. Choice D is
incorrect and may be the result of switching the total price each person paid as well as switching the number of shirts Sofia
purchased with the number of pairs of pants Hiro purchased.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '608eeb6e',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The solution to the given system of equations is . What is the value of ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. Adding the second equation of the given system to the first equation yields
, which is equivalent to . So the value of  is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect. This is the value of .
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'be9cb6a2',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The cost of renting a backhoe for up to  days is  for the first day and  for each additional day. Which of the
following equations gives the cost , in dollars, of renting the backhoe for  days, where  is a positive integer and ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It''s given that the cost of renting a backhoe for up to  days is  for the first day and  for each
additional day. Therefore, the cost , in dollars, for  days, where , is the sum of the cost for the first day, , and
the cost for the additional  days, . It follows that , which is equivalent to
, or .
Choice A is incorrect. This equation represents a situation where the cost of renting a backhoe is  for the first day and
for each additional day.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '84664a7c',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The front of a roller-coaster car is at the bottom of a hill and is 15 feet above the
ground. If the front of the roller-coaster car rises at a constant rate of 8 feet per
second, which of the following equations gives the height h, in feet, of the front of
the roller-coaster car s seconds after it starts up the hill?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It’s given that the front of the roller-coaster car starts rising when it’s 15 feet above the ground. This
initial height of 15 feet can be represented by a constant term, 15, in an equation. Each second, the front of the roller-coaster
car rises 8 feet, which can be represented by 8s. Thus, the equation  gives the height, in feet, of the front of the
roller-coaster car s seconds after it starts up the hill.
Choices B and C are incorrect and may result from conceptual errors in creating a linear equation. Choice D is incorrect and
may result from switching the rate at which the roller-coaster car rises with its initial height.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e62cfe5f',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'According to a model, the head width, in millimeters, of a worker bumblebee can be
estimated by adding 0.6 to four times the body weight of the bee, in grams.
According to the model, what would be the head width, in millimeters, of a worker
bumblebee that has a body weight of 0.5 grams?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 2.6. According to the model, the head width, in millimeters, of a worker bumblebee can be estimated
by adding 0.6 to 4 times the body weight, in grams, of the bee. Let x represent the body weight, in grams, of a worker
bumblebee and let y represent the head width, in millimeters. Translating the verbal description of the model into an equation
yields . Substituting 0.5 grams for x in this equation yields , or . Therefore, a worker
bumblebee with a body weight of 0.5 grams has an estimated head width of 2.6 millimeters. Note that 2.6 and 13/5 are
examples of ways to enter a correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b0fc3166',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'Systems of two linear equations in two variables',
    'The graph of a system of linear equations is shown. What is the solution  to the system?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. The solution to this system of linear equations is represented by the point that lies on both lines shown,
or the point of intersection of the two lines. According to the graph, the point of intersection occurs when  and ,
or at the point . Therefore, the solution  to the system is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '9b886541',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'If , what is the value of ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It''s given that . Adding  to both sides of this equation yields . Adding  to both
sides of this equation yields . Therefore, the value of  is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect. This is the value of , not .
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'db422e7f',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Line  is defined by . Line  is perpendicular to line  in the xy-plane. What is the slope of line ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . For an equation in slope-intercept form ,  represents the slope of the line in the xy-
plane defined by this equation. It''s given that line  is defined by . Subtracting  from both sides of this
equation yields . Dividing both sides of this equation by  yields , or . Thus,
the slope of line  is . If line  is perpendicular to line , then the slope of line  is the negative reciprocal of the slope of
line . The negative reciprocal of  is . Note that 1/2 and .5 are examples of ways to enter a correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '9b0a4eae',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'Linear equations in two variables',
    'The graph in the xy-plane models the possible combinations of length , , and width , in meters, for a
rectangle with a perimeter of . Which statement is the best interpretation of the point  in this context?
A. The length is  less than the perimeter, and the width is  less than the perimeter.
B. The length is , and the width is .
C. The length is , and the width is .
D. The length is  less than the perimeter, and the width is  less than the perimeter.',
    'C',
    '{"type":"multiple_choice","choices":{"A":"The length is  less than the perimeter, and the width is  less than the perimeter.","B":"The length is , and the width is .","C":"The length is , and the width is .","D":"The length is  less than the perimeter, and the width is  less than the perimeter."}}',
    'Choice C is correct. It’s given that the graph in the xy-plane models the possible combinations of length , in meters (m), and
width , in meters, for a rectangle with a perimeter of  m. Since  represents the length, in meters, and  represents the
width, in meters, the point  in the xy-plane represents a rectangle whose length is  m and whose width is  m.
Choice A is incorrect and may result from conceptual errors.
Choice B is incorrect. This is an interpretation of the point , not .
Choice D is incorrect and may result from conceptual errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '7fac16fb',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The function  is defined by . What is the value of ?',
    '69',
    '{"type":"free_response"}',
    'The correct answer is . The value of  can be found by evaluating the function  for .
Substituting  for  in this function yields , or . Therefore, the value of  is .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '45cfb9de',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Adam’s school is a 20-minute walk or a 5-minute bus ride away from his house.
The bus runs once every 30 minutes, and the number of minutes, w, that Adam
waits for the bus varies between 0 and 30. Which of the following inequalities gives
the values of w for which it would be faster for Adam to walk to school?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It is given that w is the number of minutes that Adam waits for the bus. The total time it takes Adam to
get to school on a day he takes the bus is the sum of the minutes, w, he waits for the bus and the 5 minutes the bus ride
takes; thus, this time, in minutes, is w + 5. It is also given that the total amount of time it takes Adam to get to school on a
day that he walks is 20 minutes. Therefore, w + 5 > 20 gives the values of w for which it would be faster for Adam to walk to
school.
Choices A and B are incorrect because w – 5 is not the total length of time for Adam to wait for and then take the bus to
school. Choice C is incorrect because the inequality should be true when walking 20 minutes is faster than the time it takes
Adam to wait for and ride the bus, not less.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '06fc1726',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'If f is the function defined by ,
what is the value of  ?
A.
B.
C. 3
D. 9',
    'C',
    '{"type":"multiple_choice","choices":{"C":"3","D":"9"}}',
    'Choice C is correct. If , then .
Choice A is incorrect and may result from not multiplying x by 2 in the numerator. Choice B is incorrect and may result from
dividing 2x by 3 and then subtracting 1. Choice D is incorrect and may result from evaluating only the numerator 2x – 1.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f14484a5',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'A manufacturing plant makes -inch, -inch, and -inch frying pans. During a certain day, the number of -inch frying pans
that the manufacturing plant makes is  times the number  of -inch frying pans it makes, and the number of -inch frying
pans it makes is . During this day, the manufacturing plant makes  frying pans total. Which equation represents this
situation?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It''s given that during a certain day, the number of -inch frying pans the manufacturing plant makes is
and the number of -inch frying pans it makes is . It''s also given that during this day the number of -inch frying pans
that the manufacturing plant makes is  times the number of -inch frying pans, or . Therefore, the total number of -inch,
-inch, and -inch frying pans the manufacturing plant makes is , or . It''s given that during this day
the manufacturing plant makes  frying pans total. Thus, the equation  represents this situation.
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '7e3f8363',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the xy-plane, the graph of the linear function  contains the points  and . Which equation defines , where
?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. In the xy-plane, an equation of the graph of a linear function can be written in the form ,
where  represents the slope and  represents the y-intercept of the graph of . It’s given that the graph of the
linear function , where , in the xy-plane contains the point . Thus, . The slope of the graph of a line
containing any two points  and  can be found using the slope formula, . Since it’s given that the
graph of the linear function  contains the points  and , it follows that the slope of the graph of the line
containing these points is , or . Substituting  for  and  for  in  yields
.
Choice A is incorrect. This function represents a graph with a slope of  and a y-intercept of .
Choice B is incorrect. This function represents a graph with a slope of  and a y-intercept of .
Choice D is incorrect. This function represents a graph with a slope of  and a y-intercept of .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0eae6be1',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The number  is  less than the number . Which equation represents the relationship between  and ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It’s given that the number  is  less than the number . A number that''s  less than the number  is
equivalent to  subtracted from the number , or . Therefore, the equation  represents the relationship
between  and .
Choice A is incorrect and may result from conceptual errors.
Choice B is incorrect and may result from conceptual errors.
Choice C is incorrect and may result from conceptual errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0dd6227f',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'At how many points do the graphs of the equations  and  intersect in the xy-plane?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Each given equation is written in slope-intercept form, , where  is the slope and  is
the y-intercept of the graph of the equation in the xy-plane. The graphs of two lines that have different slopes will intersect at
exactly one point. The graph of the first equation is a line with slope . The graph of the second equation is a line with slope
. Since the graphs are lines with different slopes, they will intersect at exactly one point.
Choice A is incorrect because two graphs of linear equations have  intersection points only if they are parallel and therefore
have the same slope.
Choice C is incorrect because two graphs of linear equations in the xy-plane can have only , , or infinitely many points of
intersection.
Choice D is incorrect because two graphs of linear equations in the xy-plane can have only , , or infinitely many points of
intersection.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '7efe5495',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The solution to the given system of equations is . What is the value of ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. It''s given by the first equation in the system that . Substituting  for  in the equation
yields , or .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '2c121b25',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Valentina bought two containers of beads. In the first container 30% of the beads
are red, and in the second container 70% of the beads are red. Together, the
containers have at least 400 red beads. Which inequality shows this relationship,
where x is the total number of beads in the first container and y is the total number
of beads in the second container?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It is given that x is the total number of beads in the first container and that 30% of those beads are red;
therefore, the expression 0.3x represents the number of red beads in the first container. It is given that y is the total number
of beads in the second container and that 70% of those beads are red; therefore, the expression 0.7y represents the number
of red beads in the second container. It is also given that, together, the containers have at least 400 red beads, so the
inequality that shows this relationship is 0.3x + 0.7y ≥ 400.
Choice B is incorrect because it represents the containers having a total of at most, rather than at least, 400 red beads.
Choice C is incorrect and may be the result of misunderstanding how to represent a percentage of beads in each container.
Also, the inequality shows the containers having a combined total of at most, rather than at least, 400 red beads. Choice D is
incorrect because the percentages were not converted to decimals.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '1087f6c4',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Isabel ordered topsoil and crushed stone, which cost a total of , for her garden. The given equation represents the
relationship between the number of cubic yards of topsoil, , and the number of tons of crushed stone, , Isabel ordered.
How much more, in dollars, did a ton of crushed stone cost Isabel than a cubic yard of topsoil?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . It’s given that the topsoil and crushed stone Isabel ordered for her garden cost a total of . It’s
also given that the equation  represents the relationship between the number of cubic yards of
topsoil, , and the number of tons of crushed stone, , that Isabel ordered. Since  represents the number of cubic yards of
topsoil ordered,  represents the total cost, in dollars, of the topsoil, and the cost per cubic yard of topsoil is .
Similarly, since  represents the number of tons of crushed stone ordered,  represents the total cost, in dollars, of
crushed stone ordered, and the cost per ton of crushed stone is . Therefore, a ton of crushed stone cost Isabel
, or , more dollars than a cubic yard of topsoil. Note that .25 and 1/4 are examples of ways to enter a
correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '4d8ccb96',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'A chemist studying the impact of salt on a process mixes  kilograms of a low-salt mixture, which is  salt by weight, with
kilograms of a high-salt mixture, which is  salt by weight, to create  kilograms of a mixture that is  salt by
weight. Which equation represents this situation?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. It’s given that a chemist mixes  kilograms of a low-salt mixture, which is  salt by weight. Multiplying
by the amount of the low-salt mixture,  kilograms, yields  kilograms of salt in the low-salt mixture. It''s also given
that the chemist mixes  kilograms of a high-salt mixture, which is  salt by weight. Multiplying  by the amount of
the high-salt mixture,  kilograms, yields  kilograms of salt in the high-salt mixture. Therefore, the total amount of salt
in the combined mixture is  kilograms. It''s given that the low-salt mixture and the high-salt mixture together
create  kilograms of a combined mixture that is  salt by weight. Thus, the amount of salt in the combined mixture is
kilograms. Since the total amount of salt in the combined mixture equals the amount of salt in the low-salt mixture
and the amount of salt in the high-salt mixture, the equation  represents this situation.
Choice A is incorrect. This equation represents a situation where the low-salt mixture is , not , salt by weight and the
high-salt mixture is , not , salt by weight.
Choice C is incorrect. This equation represents a situation where the low-salt mixture is , not , salt by weight and the
high-salt mixture is , not , salt by weight, and where the combined mixture contains  kilograms of salt, not
kilograms of a mixture that is  salt by weight.
Choice D is incorrect. This equation represents a situation where the combined mixture contains  kilograms of salt, not
kilograms of a mixture that is  salt by weight.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b23bba4c',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'A shipping company charged a customer $25 to ship some small boxes and some
large boxes. The equation above represents the relationship between a, the number
of small boxes, and b, the number of large boxes, the customer had shipped. If the
customer had 3 small boxes shipped, how many large boxes were shipped?
A. 3
B. 4
C. 5
D. 6',
    'B',
    '{"type":"multiple_choice","choices":{"A":"3","B":"4","C":"5","D":"6"}}',
    'Choice B is correct. It’s given that a represents the number of small boxes and b represents the number of large boxes the
customer had shipped. If the customer had 3 small boxes shipped, then . Substituting 3 for a in the equation
yields  or . Subtracting 9 from both sides of the equation yields . Dividing
both sides of this equation by 4 yields . Therefore, the customer had 4 large boxes shipped.
Choices A, C, and D are incorrect. If the number of large boxes shipped is 3, then . Substituting 3 for b in the given
equation yields  or . Subtracting 12 from both sides of the equation and then dividing by 3
yields . However, it’s given that the number of small boxes shipped, a, is 3, not , so b cannot equal 3. Similarly, if
or , then  or , respectively, which is also not true.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '71189542',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'Systems of two linear equations in two variables',
    'A group of 202 people went on an overnight camping trip, taking 60 tents with
them. Some of the tents held 2 people each, and the rest held 4 people each.
Assuming all the tents were filled to capacity and every person got to sleep in a
tent, exactly how many of the tents were 2-person tents?
A. 30
B. 20
C. 19
D. 18',
    'C',
    '{"type":"multiple_choice","choices":{"A":"30","B":"20","C":"19","D":"18"}}',
    'Choice C is correct. Let x represent the number of 2-person tents and let y represent the number of 4-person tents. It is given
that the total number of tents was 60 and the total number of people in the group was 202. This situation can be expressed
as a system of two equations,  and . The first equation can be rewritten as .
Substituting  for y in the equation  yields . Distributing and combining like
terms gives . Subtracting 240 from both sides of  and then dividing both sides by
gives . Therefore, the number of 2-person tents is 19.
Alternate approach: If each of the 60 tents held 4 people, the total number of people that could be accommodated in tents
would be 240. However, the actual number of people who slept in tents was 202. The difference of 38 accounts for the 2-
person tents. Since each of these tents holds 2 people fewer than a 4-person tent,  gives the number of 2-person
tents.
Choice A is incorrect. This choice may result from assuming exactly half of the tents hold 2 people. If that were true, then the
total number of people who slept in tents would be ; however, the total number of people who slept in
tents was 202, not 180. Choice B is incorrect. If 20 tents were 2-person tents, then the remaining 40 tents would be 4-person
tents. Since all the tents were filled to capacity, the total number of people who slept in tents would be
; however, the total number of people who slept in tents was 202, not 200. Choice D is
incorrect. If 18 tents were 2-person tents, then the remaining 42 tents would be 4-person tents. Since all the tents were filled
to capacity, the total number of people who slept in tents would be ; however, the total
number of people who slept in tents was 202, not 204.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '9d4270fe',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A company that creates and sells tape dispensers calculates its monthly profit, in dollars, by subtracting its fixed monthly
costs, in dollars, from its monthly sales revenue, in dollars. The equation  represents this situation
for a month where  tape dispensers are created and sold. Which statement is the best interpretation of  in this
context?
A. The monthly sales revenue, in dollars, from selling  tape dispensers
B. The monthly sales revenue, in dollars, from each tape dispenser sold
C. The monthly cost, in dollars, of creating each tape dispenser
D. The monthly cost, in dollars, of creating  tape dispensers',
    'A',
    '{"type":"multiple_choice","choices":{"A":"The monthly sales revenue, in dollars, from selling  tape dispensers","B":"The monthly sales revenue, in dollars, from each tape dispenser sold","C":"The monthly cost, in dollars, of creating each tape dispenser","D":"The monthly cost, in dollars, of creating  tape dispensers"}}',
    'Choice A is correct. It’s given that the equation  represents this situation for a month where
tape dispensers are created and sold. It’s also given that the company calculates its monthly profit, in dollars, by subtracting
its fixed monthly costs, in dollars, from its monthly sales revenue, in dollars. It follows that  represents the monthly
sales revenue, in dollars. Therefore, the best interpretation of  in this context is the monthly sales revenue from selling
tape dispensers.
Choice B is incorrect. This is the best interpretation of , not .
Choice C is incorrect and may result from conceptual errors.
Choice D is incorrect. This is the best interpretation of , not .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'dba8d38a',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'Systems of two linear equations in two variables',
    'A petting zoo sells two types of tickets. The standard ticket, for admission only,
costs $5. The premium ticket, which includes admission and food to give to the
animals, costs $12. One Saturday, the petting zoo sold a total of 250 tickets and
collected a total of $2,300 from ticket sales. Which of the following systems of
equations can be used to find the number of standard tickets, s, and premium
tickets, p, sold on that Saturday?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It’s given that the petting zoo sells two types of tickets, standard and premium, and that s represents the
number of standard tickets sold and p represents the number of premium tickets sold. It’s also given that the petting zoo
sold 250 tickets on one Saturday; thus, . It’s also given that each standard ticket costs $5 and each premium
ticket costs $12. Thus, the amount collected in ticket sales can be represented by  for standard tickets and  for
premium tickets. On that Saturday the petting zoo collected a total of $2,300 from ticket sales; thus, .
These two equations are correctly represented in choice A.
Choice B is incorrect. The second equation in the system represents the cost per standard ticket as $12, not $5, and the cost
per premium ticket as $5, not $12. Choices C and D are incorrect. The equations represent the total collected from standard
and premium ticket sales as $250, not $2,300, and the total number of standard and premium tickets sold as $2,300, not
$250. Additionally, the first equation in choice D represents the cost per standard ticket as $12, not $5, and the cost per
premium ticket as $5, not $12.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '64c85440',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In North America, the standard width of a parking space is at least 7.5 feet and no
more than 9.0 feet. A restaurant owner recently resurfaced the restaurant’s parking
lot and wants to determine the number of parking spaces, n, in the parking lot that
could be placed perpendicular to a curb that is 135 feet long, based on the
standard width of a parking space. Which of the following describes all the
possible values of n ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Placing the parking spaces with the minimum width of 7.5 feet gives the maximum possible number of
parking spaces. Thus, the maximum number that can be placed perpendicular to a 135-foot-long curb is . Placing
the parking spaces with the maximum width of 9 feet gives the minimum number of parking spaces. Thus, the minimum
number that can be placed perpendicular to a 135-foot-long curb is . Therefore, if n is the number of parking
spaces in the lot, the range of possible values for n is .
Choices A and C are incorrect. These choices equate the length of the curb with the maximum possible number of parking
spaces. Choice B is incorrect. This is the range of possible values for the width of a parking space instead of the range of
possible values for the number of parking spaces.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '87322577',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The equation above relates the number of minutes, x, Maria spends running each
day and the number of minutes, y, she spends biking each day. In the equation,
what does the number 75 represent?
A. The number of minutes spent running each day
B. The number of minutes spent biking each day
C. The total number of minutes spent running and biking each day
D. The number of minutes spent biking for each minute spent running',
    'C',
    '{"type":"multiple_choice","choices":{"A":"The number of minutes spent running each day","B":"The number of minutes spent biking each day","C":"The total number of minutes spent running and biking each day","D":"The number of minutes spent biking for each minute spent running"}}',
    'Choice C is correct. Maria spends x minutes running each day and y minutes biking each day. Therefore,  represents
the total number of minutes Maria spent running and biking each day. Because , it follows that 75 is the total
number of minutes that Maria spent running and biking each day.
Choices A and B are incorrect. The number of minutes Maria spent running each day is represented by x and need not be 75.
Similarly, the number of minutes that Maria spends biking each day is represented by y and need not be 75. The number of
minutes Maria spends running each day and biking each day may vary; however, the total number of minutes she spends
each day on these activities is constant and equal to 75. Choice D is incorrect. The number of minutes Maria spent biking for
each minute spent running cannot be determined from the information provided.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '7a5a74a6',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'Linear equations in one variable',
    'If x is the solution to the equation above,
what is the value of  ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Because 2 is a factor of both  and 6, the expression  can be rewritten as . Substituting
for  on the left-hand side of the given equation yields , or
. Subtracting  from both sides of this equation yields . Adding 11 to
both sides of this equation yields . Dividing both sides of this equation by 2 yields .
Alternate approach: Distributing 3 to the quantity  on the left-hand side of the given equation and distributing 4 to the
quantity  on the right-hand side yields , or . Subtracting  from both
sides of this equation yields . Adding 29 to both sides of this equation yields . Dividing both sides of
this equation by 2 yields . Therefore, the value of  is , or .
Choice A is incorrect. This is the value of x, not . Choices C and D are incorrect. If the value of  is  or ,
it follows that the value of x is  or , respectively. However, solving the given equation for x yields .
Therefore, the value of  can’t be  or .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b7e6394d',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Alan drives an average of 100 miles each week. His car can travel an average of
25 miles per gallon of gasoline. Alan would like to reduce his weekly expenditure
on gasoline by $5. Assuming gasoline costs $4 per gallon, which equation can
Alan use to determine how many fewer average miles, m, he should drive each
week?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Since gasoline costs $4 per gallon, and since Alan’s car travels an average of 25 miles per gallon, the
expression  gives the cost, in dollars per mile, to drive the car. Multiplying  by m gives the cost for Alan to drive m
miles in his car. Alan wants to reduce his weekly spending by $5, so setting m equal to 5 gives the number of miles, m,
by which he must reduce his driving.
Choices A, B, and C are incorrect. Choices A and B transpose the numerator and the denominator in the fraction. The fraction
would result in the unit miles per dollar, but the question requires a unit of dollars per mile. Choices A and C set the
expression equal to 95 instead of 5, a mistake that may result from a misconception that Alan wants to reduce his driving by
5 miles each week; instead, the question says he wants to reduce his weekly expenditure by $5.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '7625073d',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The equation  represents the number of blue tiles, , and the number of green tiles, , an artist needs for an
-square-inch tile project. The artist needs  blue tiles for the project. How many green tiles does he need?',
    '49',
    '{"type":"free_response"}',
    'The correct answer is . It’s given that the equation  represents the number of blue tiles, , and the number
of green tiles, , an artist needs for an -square-inch tile project. It’s also given that the artist needs  blue tiles for the
project. Substituting  for  in the equation  yields , or . Subtracting
from both sides of this equation yields . Dividing both sides of this equation by  yields . Therefore, the
artist needs  green tiles for the project.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'bf36c815',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The function g is defined by .
What is the value of ?
A.
B. 0
C. 4
D. 8',
    'D',
    '{"type":"multiple_choice","choices":{"B":"0","C":"4","D":"8"}}',
    'Choice D is correct. The value of  is found by substituting 0 for x in the function g. This yields , which can
be rewritten as .
Choice A is incorrect and may result from misinterpreting the equation as  instead of . Choice
B is incorrect. This is the value of x, not . Choice C is incorrect and may result from calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '968e9e51',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following ordered pairs  is a solution to
the system of inequalities above?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The solutions to the given system of inequalities is the set of all ordered pairs  that satisfy both
inequalities in the system. For an ordered pair to satisfy the inequality , the value of the ordered pair’s y-coordinate
must be less than or equal to the value of the ordered pair’s x-coordinate. This is true of the ordered pair , because
. To satisfy the inequality , the value of the ordered pair’s y-coordinate must be less than or equal to the value
of the additive inverse of the ordered pair’s x-coordinate. This is also true of the ordered pair . Because 0 is its own
additive inverse,  is the same as . Therefore, the ordered pair  is a solution to the given system of
inequalities.
Choice A is incorrect. This ordered pair satisfies only the inequality  in the given system, not both inequalities. Choice B
incorrect. This ordered pair satisfies only the inequality  in the system, but not both inequalities. Choice C is
incorrect. This ordered pair satisfies neither inequality.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'aa85b138',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A tree had a height of 6 feet when it was planted. The equation above can be used
to find how many years n it took the tree to reach a height of 14 feet. Which of the
following is the best interpretation of the number 2 in this context?
A. The number of years it took the tree to double its height
B. The average number of feet that the tree grew per year
C. The height, in feet, of the tree when the tree was 1 year old
D. The average number of years it takes similar trees to grow 14 feet',
    'B',
    '{"type":"multiple_choice","choices":{"A":"The number of years it took the tree to double its height","B":"The average number of feet that the tree grew per year","C":"The height, in feet, of the tree when the tree was 1 year old","D":"The average number of years it takes similar trees to grow 14 feet"}}',
    'Choice B is correct. The height of the tree at a given time is equal to its height when it was planted plus the number of feet
that the tree grew. In the given equation, 14 represents the height of the tree at the given time, and 6 represents the height of
the tree when it was planted. It follows that  represents the number of feet the tree grew from the time it was planted until
the time it reached a height of 14 feet. Since n represents the number of years between the given time and the time the tree
was planted, 2 must represent the average number of feet the tree grew each year.
Choice A is incorrect and may result from interpreting the coefficient 2 as doubling instead of as increasing by 2 each year.
Choice C is incorrect. The height of the tree when it was 1 year old was  feet, not 2 feet. Choice D is incorrect.
No information is given to connect the growth of one particular tree to the growth of similar trees.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '15daa8d6',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the given equation,  is a constant. If the equation has infinitely many solutions, what is the value of ?',
    '2',
    '{"type":"free_response"}',
    'The correct answer is . An equation with one variable, , has infinitely many solutions only when both sides of the equation
are equal for any defined value of . It''s given that , where  is a constant. This equation can be
rewritten as . If this equation has infinitely many solutions, then both sides of this equation are equal
for any defined value of . Both sides of this equation are equal for any defined value of  when . Therefore, if the
equation has infinitely many solutions, the value of  is .
Alternate approach: If the given equation, , has infinitely many solutions, then both sides of this
equation are equal for any value of . If , then substituting  for  in  yields
, or . Dividing both sides of this equation by  yields .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '12ee1edc',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the given equation, b is a constant. If the equation has no
solution, what is the value of b ?
A. 2
B. 4
C. 6
D. 10',
    'A',
    '{"type":"multiple_choice","choices":{"A":"2","B":"4","C":"6","D":"10"}}',
    'Choice A is correct. This equation has no solution when there is no value of x that produces a true statement. Solving the
given equation for x by dividing both sides by  gives . When , the right-hand side of this
equation will be undefined, and the equation will have no solution. Therefore, when , there is no value of x that satisfies
the given equation.
Choices B, C, and D are incorrect. Substituting 4, 6, and 10 for b in the given equation yields exactly one solution, rather than
no solution, for x. For example, substituting 4 for b in the given equation yields , or . Dividing both sides of
by 2 yields . Similarly, if  or ,  and , respectively.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'c6b151d4',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'A total of  paper straws of equal length were used to construct two types of polygons: triangles and rectangles. The
triangles and rectangles were constructed so that no two polygons had a common side. The equation
represents this situation, where  is the number of triangles constructed and  is the number of rectangles constructed.
What is the best interpretation of  in this context?
A. If  triangles were constructed, then  rectangles were constructed.
B. If  triangles were constructed, then  paper straws were used.
C. If  triangles were constructed, then  rectangles were constructed.
D. If  triangles were constructed, then  paper straws were used.',
    'A',
    '{"type":"multiple_choice","choices":{"A":"If  triangles were constructed, then  rectangles were constructed.","B":"If  triangles were constructed, then  paper straws were used.","C":"If  triangles were constructed, then  rectangles were constructed.","D":"If  triangles were constructed, then  paper straws were used."}}',
    'Choice A is correct. It''s given that  paper straws of equal length were used to construct triangles and rectangles, where
no two polygons had a common side. It''s also given that the equation  represents this situation, where  is
the number of triangles constructed and  is the number of rectangles constructed. The equation  means
that if , then . Substituting  for  and  for  in  yields , or
, which is true. Therefore, in this context, the equation  means that if  triangles were
constructed, then  rectangles were constructed.
Choice B is incorrect and may result from conceptual errors.
Choice C is incorrect and may result from conceptual errors.
Choice D is incorrect and may result from conceptual errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'ee2f611f',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'A local transit company sells a monthly pass for $95 that allows an unlimited
number of trips of any length. Tickets for individual trips cost $1.50, $2.50, or
$3.50, depending on the length of the trip. What is the minimum number of trips
per month for which a monthly pass could cost less than purchasing individual
tickets for trips?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 28. The minimum number of individual trips for which the cost of the monthly pass is less than the
cost of individual tickets can be found by assuming the maximum cost of the individual tickets, $3.50. If n tickets costing
$3.50 each are purchased in one month, the inequality 95 < 3.50n represents this situation. Dividing both sides of the
inequality by 3.50 yields 27.14 < n, which is equivalent to n > 27.14. Since only a whole number of tickets can be purchased, it
follows that 28 is the minimum number of trips.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '8c98c834',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The equation  models the relationship between the number of different
pieces of music a certain pianist practices, y, during an x-minute practice session.
How many pieces did the pianist practice if the session lasted 30 minutes?
A. 1
B. 3
C. 10
D. 30',
    'B',
    '{"type":"multiple_choice","choices":{"A":"1","B":"3","C":"10","D":"30"}}',
    'Choice B is correct. It’s given that the equation  models the relationship between the number of different pieces of
music a certain pianist practices, y, and the number of minutes in a practice session, x. Since it’s given that the session
lasted 30 minutes, the number of pieces the pianist practiced can be found by substituting 30 for x in the given equation,
which yields , or .
Choices A and C are incorrect and may result from misinterpreting the values in the equation. Choice D is incorrect. This is
the given value of x, not the value of y.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '563407e5',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'A bakery sells trays of cookies. Each tray contains at least 50 cookies but no more
than 60. Which of the following could be the total number of cookies on 4 trays of
cookies?
A. 165
B. 205
C. 245
D. 285',
    'B',
    '{"type":"multiple_choice","choices":{"A":"165","B":"205","C":"245","D":"285"}}',
    'Choice B is correct. If each tray contains the least number of cookies possible, 50 cookies, then the least number of cookies
possible on 4 trays is 50 × 4 = 200 cookies. If each tray contains the greatest number of cookies possible, 60 cookies, then
the greatest number of cookies possible on 4 trays is 60 × 4 = 240 cookies. If the least number of cookies on 4 trays is 200
and the greatest number of cookies is 240, then 205 could be the total number of cookies on these 4 trays of cookies
because .
Choices A, C, and D are incorrect. The least number of cookies on 4 trays is 200 cookies, and the greatest number of cookies
on 4 trays is 240 cookies. The choices 165, 245, and 285 are each either less than 200 or greater than 240; therefore, they
cannot represent the total number of cookies on 4 trays.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '25e1cfed',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'How many solutions does the equation  have?
A. Exactly one
B. Exactly two
C. Infinitely many
D. Zero',
    'C',
    '{"type":"multiple_choice","choices":{"A":"Exactly one","B":"Exactly two","C":"Infinitely many","D":"Zero"}}',
    'Choice C is correct. Applying the distributive property to each side of the given equation yields .
Applying the commutative property of addition to the right-hand side of this equation yields .
Since the two sides of the equation are equivalent, this equation is true for any value of . Therefore, the given equation has
infinitely many solutions.
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '50f4cb9c',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'For the linear function , the table shows three values of  and their corresponding values of . Function  is defined by
, where  and  are constants. What is the value of ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The table gives that  when . Substituting 0 for  and  for  into the equation
yields . Subtracting  from both sides of this equation yields . The table gives that
when . Substituting  for ,  for , and  for  into the equation  yields
. Combining like terms yields , or . Since , substituting  for  into this
equation gives , which yields . Thus, the value of  can be written as , which is
.
Choice A is incorrect. This is the value of , not .
Choice B is incorrect. This is the value of , not .
Choice C is incorrect. This is the value of , not .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a396ed75',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'For a training program, Juan rides his bike at an average rate of  minutes per mile. Which function  models the number
of minutes it will take Juan to ride  miles at this rate?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It′s given that Juan rides his bike at an average rate of  minutes per mile. The number of minutes it
will take Juan to ride  miles can be determined by multiplying his average rate by the number of miles, , which yields .
Therefore, the function  models the number of minutes it will take Juan to ride  miles.
Choice A is incorrect and may result from conceptual errors.
Choice B is incorrect and may result from conceptual errors.
Choice C is incorrect and may result from conceptual errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '550b352c',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'How many solutions exist to the
equation shown above?
A. None
B. Exactly 1
C. Exactly 3
D. Infinitely many',
    'B',
    '{"type":"multiple_choice","choices":{"A":"None","B":"Exactly 1","C":"Exactly 3","D":"Infinitely many"}}',
    'Choice B is correct. Subtracting 4 from each side of the given equation yields , or , so the equation has a unique
solution of .
Choice A is incorrect. Since 3 is a value of x that satisfies the given equation, the equation has at least 1 solution. Choice C is
incorrect. Linear equations can have 0, 1, or infinitely many solutions; no linear equation has exactly 3 solutions. Choice D is
incorrect. If a linear equation has infinitely many solutions, it can be reduced to . This equation reduces to , so
there is only 1 solution.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'dd797fe2',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Mario purchased 4 binders that cost x dollars each and 3 notebooks that cost y
dollars each. If the given equation represents this situation, which of the following
is the best interpretation of 24 in this context?
A. The total cost, in dollars, for all binders purchased
B. The total cost, in dollars, for all notebooks purchased
C. The total cost, in dollars, for all binders and notebooks purchased
D. The difference in the total cost, in dollars, between the number of binders and notebooks purchased',
    'C',
    '{"type":"multiple_choice","choices":{"A":"The total cost, in dollars, for all binders purchased","B":"The total cost, in dollars, for all notebooks purchased","C":"The total cost, in dollars, for all binders and notebooks purchased","D":"The difference in the total cost, in dollars, between the number of binders and notebooks purchased"}}',
    'Choice C is correct. Since Mario purchased 4 binders that cost x dollars each, the expression  represents the total cost, in
dollars, of the 4 binders he purchased. Since Mario purchased 3 notebooks that cost y dollars each, the expression
represents the total cost, in dollars, of the 3 notebooks he purchased. Therefore, the expression  represents the total
cost, in dollars, for all binders and notebooks he purchased. In the given equation, the expression  is equal to 24.
Therefore, it follows that 24 is the total cost, in dollars, for all binders and notebooks purchased.
Choice A is incorrect. This is represented by the expression  in the given equation. Choice B is incorrect. This is
represented by the expression  in the given equation. Choice D is incorrect. This is represented by the expression
.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'c5082ce3',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The score on a trivia game is obtained by subtracting the number of incorrect
answers from twice the number of correct answers. If a player answered
40 questions and obtained a score of 50, how many questions did the player
answer correctly?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 30. Let x represent the number of correct answers from the player and y represent the number of
incorrect answers from the player. Since the player answered 40 questions in total, the equation  represents this
situation. Also, since the score is found by subtracting the number of incorrect answers from twice the number of correct
answers and the player received a score of 50, the equation  represents this situation. Adding the equations in
the system of two equations together yields . This can be rewritten as . Finally, solving
for x by dividing both sides of the equation by 3 yields .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '94b48cbf',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The graph of  in the -plane has an -intercept at  and a -intercept at , where  and  are
constants. What is the value of ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The x-coordinate  of the x-intercept  can be found by substituting  for  in the given equation,
which gives , or . Dividing both sides of this equation by  yields . Therefore, the
value of  is . The y-coordinate  of the y-intercept  can be found by substituting  for  in the given equation,
which gives , or . Dividing both sides of this equation by  yields . Therefore, the
value of  is . It follows that the value of  is , which is equivalent to , or .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'c362c210',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The points plotted in the coordinate plane above represent the possible numbers
of wallflowers and cornflowers that someone can buy at the Garden Store in order
to spend exactly $24.00 total on the two types of flowers. The price of each
wallflower is the same and the price of each cornflower is the same. What is the
price, in dollars, of 1 cornflower?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 1.5. The point  corresponds to the situation where 16 cornflowers and 0 wallflowers are
purchased. Since the total spent on the two types of flowers is $24.00, it follows that the price of 16 cornflowers is $24.00,
and the price of one cornflower is $1.50. Note that 1.5 and 3/2 are examples of ways to enter a correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f09097b1',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'An agricultural scientist studying the growth of corn plants recorded the height of a
corn plant at the beginning of a study and the height of the plant each day for the
next 12 days. The scientist found that the height of the plant increased by an
average of 1.20 centimeters per day for the 12 days. If the height of the plant on
the last day of the study was 36.8 centimeters, what was the height, in centimeters,
of the corn plant at the beginning of the study?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 22.4. If the height of the plant increased by an average of 1.20 centimeters per day for 12 days, then its
total growth over the 12 days was  centimeters. The plant was 36.8 centimeters tall after 12 days, so at
the beginning of the study its height was  centimeters. Note that 22.4 and 112/5 are examples of ways
to enter a correct answer.
Alternate approach: The equation  can be used to represent this situation, where h is the height of the
plant, in centimeters, at the beginning of the study. Solving this equation for h yields 22.4 centimeters.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b31c3117',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The Karvonen formula above shows the relationship between Alice’s target heart
rate H, in beats per minute (bpm), and the intensity level p of different activities.
When , Alice has a resting heart rate. When , Alice has her maximum
heart rate. It is recommended that p be between 0.5 and 0.85 for Alice when she
trains. Which of the following inequalities describes Alice’s target training heart
rate?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. When Alice trains, it’s recommended that p be between 0.5 and 0.85. Therefore, her target training heart
rate is represented by the values of H corresponding to . When , , or .
When , , or . Therefore, the inequality that describes Alice’s target training heart rate
is .
Choice B is incorrect. This inequality describes Alice’s target heart rate for . Choice C is incorrect. This
inequality describes her target heart rate for . Choice D is incorrect. This inequality describes  her target heart
rate for .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '70e29454',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the equation above, a and b are constants. If the equation has infinitely many
solutions, what are the values of a and b ?
A.  and
B.  and
C.  and
D.  and',
    'B',
    '{"type":"multiple_choice","choices":{"A":"and","B":"and","C":"and","D":"and"}}',
    'Choice B is correct. Distributing the a on the left-hand side of the equation gives 3a – b – ax = –1 – 2x. Rearranging the
terms in each side of the equation yields –ax + 3a – b = –2x –1. Since the equation has infinitely many solutions, it follows
that the coefficients of x and the free terms on both sides must be equal. That is,  –a = –2, or a = 2, and 3a – b = –1.
Substituting 2 for a in the equation 3a – b = –1 gives 3(2) – b = –1, so  b = 7.
Choice A is incorrect and may be the result of a conceptual error when finding the value of b. Choices C and D are incorrect
and may result from making a sign error when simplifying.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0b46bad5',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'Linear equations in two variables',
    'In the equation above, a and b are constants and . Which of the following
could represent the graph of the equation in the xy-plane?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. The given equation  can be rewritten in slope-intercept form, , where m
represents the slope of the line represented by the equation, and k represents the y-coordinate of the y-intercept of the line.
Subtracting ax from both sides of the equation yields , and dividing both sides of this equation by b yields
, or . With the equation now in slope-intercept form, it shows that , which means the y-
coordinate of the y-intercept is 1. It’s given that a and b are both greater than 0 (positive) and that . Since ,
the slope of the line must be a value between  and 0. Choice C is the only graph of a line that has a y-value of the y-
intercept that is 1 and a slope that is between  and 0.
Choices A, B, and D are incorrect because the slopes of the lines in these graphs aren’t between  and 0.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '271f7e3f',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'For the function f defined above, what is the
value of  ?
A. 1
B. 2
C.
D.',
    'B',
    '{"type":"multiple_choice","choices":{"A":"1","B":"2"}}',
    'Choice B is correct. The value of  can be calculated by finding the values of  and . The value of
can be found by substituting 9 for x in the given function: . This equation can be rewritten as , or
4. Then, the value of  can be found by substituting 1 for x in the given function: . This equation can be
rewritten as , or 2. Therefore, , which is equivalent to 2.
Choices A, C, and D are incorrect and may result from incorrectly substituting values of x in the given function or making
computational errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '80da233d',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A certain elephant weighs 200 pounds at birth and gains more than 2 but less than
3 pounds per day during its first year. Which of the following inequalities
represents all possible weights w, in pounds, for the elephant 365 days after birth?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It’s given that the elephant weighs 200 pounds at birth and gains more than 2 pounds but less than 3
pounds per day during its first year. The inequality  represents this situation, where d is the
number of days after birth. Substituting 365 for d in the inequality gives , or
.
Choice A is incorrect and may result from solving the inequality . Choice B is incorrect and may result
from solving the inequality for a weight range of more than 1 pound but less than 2 pounds:
. Choice C is incorrect and may result from calculating the possible weight gained by the
elephant during the first year without adding the 200 pounds the elephant weighed at birth.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '8adf1335',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'A city’s total expense budget for one year was x million dollars. The city budgeted
y million dollars for departmental expenses and 201 million dollars for all other
expenses. Which of the following represents the relationship between x and y in
this context?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Of the city’s total expense budget for one year, the city budgeted y million dollars for departmental
expenses and 201 million dollars for all other expenses. This means that the expression  represents the total
expense budget, in millions of dollars, for one year. It’s given that the total expense budget for one year is x million dollars. It
follows then that the expression  is equivalent to x, or . Subtracting y from both sides of this equation
yields . By the symmetric property of equality, this is the same as .
Choices A and C are incorrect. Because it’s given that the total expense budget for one year, x million dollars, is comprised of
the departmental expenses, y million dollars, and all other expenses, 201 million dollars, the expressions  and
both must be equivalent to a value greater than 201 million dollars. Therefore, the equations and
aren’t true. Choice D is incorrect. The value of x must be greater than the value of y. Therefore,  can’t represent
this relationship.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '52cb8ea4',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'If  is the solution to the system of equations above,
what is the value of  ?
A.
B.
C. 5
D. 13',
    'B',
    '{"type":"multiple_choice","choices":{"C":"5","D":"13"}}',
    'Choice B is correct. Subtracting the second equation, , from the first equation, , results in
, or . Combining like terms on the left-hand side of this equation yields
.
Choice A is incorrect and may result from miscalculating  as . Choice C is incorrect and may result from
miscalculating  as 5. Choice D is incorrect and may result from adding 9 to 4 instead of subtracting 9 from 4.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '12983c1e',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'Linear functions',
    'Some values of the linear function f are shown in the table above.
Which of the following defines f ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. Because f is a linear function of x, the equation , where m and b are constants, can be
used to define the relationship between x and f (x). In this equation, m represents the increase in the value of f (x) for every
increase in the value of x by 1. From the table, it can be determined that the value of f (x) increases by 8 for every increase in
the value of x by 2. In other words, for the function f the value of m is , or 4. The value of b can be found by substituting
the values of x and f (x) from any row of the table and the value of m into the equation  and solving for b. For
example, using , , and  yields . Solving for b yields . Therefore, the equation defining
the function f can be written in the form .
Choices A, B, and D are incorrect. Any equation defining the linear function f must give values of f (x) for corresponding
values of x, as shown in each row of the table. According to the table, if , . However, substituting  into
the equation given in choice A gives , or , not 13. Similarly, substituting  into the equation
given in choice B gives , or , not 13.
Lastly, substituting  into the equation given in choice D gives , or , not 13. Therefore, the
equations in choices A, B, and D cannot define f.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'bf5f80c6',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which point (, ) is a solution to the given inequality in the -plane?
A. (, )
B. (, )
C. (, )
D. (, )',
    'A',
    '{"type":"multiple_choice","choices":{"A":"(, )","B":"(, )","C":"(, )","D":"(, )"}}',
    'Choice D is correct. For a point  to be a solution to the given inequality in the xy-plane, the value of the point’s y-
coordinate must be less than the value of , where  is the value of the x-coordinate of the point. This is true of the
point  because , or . Therefore, the point  is a solution to the given inequality.
Choices A, B, and C are incorrect. None of these points are a solution to the given inequality because each point’s y-
coordinate is greater than the value of  for the point’s x-coordinate.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'dae126d7',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The boiling point of water at sea level is 212 degrees Fahrenheit . For every
550 feet above sea level, the boiling point of water is lowered by about . Which
of the following equations can be used to find the boiling point B of water, in , x
feet above sea level?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It’s given that the boiling point of water at sea level is 212°F and that for every 550 feet above sea level,
the boiling point of water is lowered by about 1°F. Therefore, the change in the boiling point of water x feet above sea level is
represented by the expression . Adding this expression to the boiling point of water at sea level gives the equation
for the boiling point B of water, in °F, x feet above sea level: , or .
Choices A and B are incorrect and may result from using the boiling point of water at sea level as the rate of change and the
rate of change as the initial boiling point of water at sea level. Choice C is incorrect and may result from representing the
change in the boiling point of water as an increase rather than a decrease.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '05bb1af9',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'Linear equations in two variables',
    'The graph of  is shown. Which equation defines function ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. An equation for the graph shown can be written in slope-intercept form , where  is the
slope of the graph and its y-intercept is . Since the y-intercept of the graph shown is , the value of  is . Since the
graph also passes through the point , the slope can be calculated as , or . Therefore, the value of  is .
Substituting  for  and  for  in the equation  yields . It’s given that an equation for the
graph shown is . Substituting  for  in the equation   yields
. Subtracting  from both sides of this equation yields .
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e1248a5c',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'Systems of two linear equations in two variables',
    'In the system of equations below, a and c are constants.
If the system of equations has an infinite number of
solutions , what is the value of a ?
A.
B. 0
C.
D.',
    'D',
    '{"type":"multiple_choice","choices":{"B":"0"}}',
    'Choice D is correct. A system of two linear equations has infinitely many solutions if one equation is equivalent to the other.
This means that when the two equations are written in the same form, each coefficient or constant in one equation is equal
to the corresponding coefficient or constant in the other equation multiplied by the same number. The equations in the given
system of equations are written in the same form, with x and y on the left-hand side and a constant on the right-hand side of
the equation. The coefficient of y in the second equation is equal to the coefficient of y in the first equation multiplied by 3.
Therefore, a, the coefficient of x in the second equation, must be equal to 3 times the coefficient of x in the first equation:
, or .
Choices A, B, and C are incorrect. When , , or , the given system of equations has one solution.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'df32b09c',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Tom scored 85, 78, and 98 on his first three exams in history class. Solving which
inequality gives the score, G, on Tom’s fourth exam that will result in a mean score
on all four exams of at least 90 ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. The mean of the four scores (G, 85, 78, and 98) can be expressed as  . The inequality
that expresses the condition that the mean score is at least 90 can therefore be written as .
Choice A is incorrect. The sum of the scores (G, 85, 78, and 98) isn’t divided by 4 to express the mean. Choice B is incorrect
and may be the result of an algebraic error when multiplying both sides of the inequality by 4. Choice D is incorrect because
it doesn’t include G in the mean with the other three scores.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b9835972',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the xy-plane, line  passes through the point  and is parallel to the line represented by the equation . If
line  also passes through the point , what is the value of ?',
    '24',
    '{"type":"free_response"}',
    'The correct answer is . A line in the xy-plane can be defined by the equation , where  is the slope of the line
and  is the y-coordinate of the y-intercept of the line. It''s given that line  passes through the point . Therefore, the y-
coordinate of the y-intercept of line  is . It''s given that line  is parallel to the line represented by the equation .
Since parallel lines have the same slope, it follows that the slope of line  is . Therefore, line  can be defined by an equation
in the form , where  and . Substituting  for  and  for  in  yields the equation
, or  . If line  passes through the point , then when ,  for the equation .
Substituting  for  and  for  in the equation  yields , or .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a775af14',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the xy-plane, the graph of the linear function  contains the points  and . Which equation defines , where
?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. In the xy-plane, the graph of a linear function can be written in the form , where
represents the slope and  represents the y-intercept of the graph of . It’s given that the graph of the linear
function , where , in the xy-plane contains the point . Thus, . The slope of the graph of a line
containing any two points  and  can be found using the slope formula, . Since it’s given that the
graph of the linear function  contains the points  and , it follows that the slope of the graph of the line
containing these points is , or  . Substituting  for  and  for  in  yields
.
Choice A is incorrect. This function represents a graph with a slope of  and a y-intercept of .
Choice B is incorrect. This function represents a graph with a slope of  and a y-intercept of .
Choice D is incorrect. This function represents a graph with a slope of  and a y-intercept of .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '19fdf387',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the xy-plane, the graph of  intersects the graph of  at
the point . What is the value of a ?
A. 3
B. 6
C. 9
D. 12',
    'C',
    '{"type":"multiple_choice","choices":{"A":"3","B":"6","C":"9","D":"12"}}',
    'Choice C is correct. Since the graph of  intersects the graph of  at the point , the ordered pair
is the solution to the system of linear equations consisting of  and , and the value of a is the value of x
in the solution of this system. Since both and  are equal to y, it follows that . Subtracting x from
and adding 6 to both sides of the equation yields . Therefore, the value of a is 9.
Choices A and B are incorrect and may result from a calculation or conceptual error in solving the system of equations
consisting of  and . Choice D is incorrect. This is the value of b, not a.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'af2ba762',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'According to data provided by the US Department of Energy, the average price per gallon of regular gasoline in the
United States from September 1, 2014, to December 1, 2014, is modeled by the function F defined below, where  is
the average price per gallon x months after September 1.
The constant 2.74 in this function estimates which of the following?
A. The average monthly decrease in the price per gallon
B. The difference in the average price per gallon from September 1, 2014, to December 1, 2014
C. The average price per gallon on September 1, 2014
D. The average price per gallon on December 1, 2014',
    'D',
    '{"type":"multiple_choice","choices":{"A":"The average monthly decrease in the price per gallon","B":"The difference in the average price per gallon from September 1, 2014, to December 1, 2014","C":"The average price per gallon on September 1, 2014","D":"The average price per gallon on December 1, 2014"}}',
    'Choice D is correct. Since 2.74 is a constant term, it represents an actual price of gas rather than a measure of change in gas
price. To determine what gas price it represents, find x such that F(x) = 2.74, or 2.74 = 2.74 – 0.19(x – 3). Subtracting 2.74
from both sides gives 0 = –0.19(x – 3). Dividing both sides by –0.19 results in 0 = x – 3, or x = 3. Therefore, the average price
of gas is $2.74 per gallon 3 months after September 1, 2014, which is December 1, 2014.
Choice A is incorrect. Since 2.74 is a constant, not a multiple of x, it cannot represent a rate of change in price. Choice B is
incorrect. The difference in the average price from September 1, 2014, to December 1, 2014, is F(3) – F(0) = 2.74 – 0.19(3 –
3) – (2.74 – 0.19(0 – 3)) = 2.74 – (2.74 + 0.57) = –0.57, which is not 2.74. Choice C is incorrect. The average price per gallon
on September 1, 2014, is F(0) = 2.74 – 0.19(0 – 3) = 2.74 + 0.57 = 3.31, which is not 2.74.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '1a621af4',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'A number  is at most  less than  times the value of . If the value of  is , what is the greatest possible value of ?',
    '-14',
    '{"type":"free_response"}',
    'The correct answer is . It''s given that a number  is at most  less than  times the value of . Therefore,  is less than
or equal to  less than  times the value of . The expression  represents  times the value of . The expression
represents  less than  times the value of . Therefore,  is less than or equal to . This can be shown by the
inequality . Substituting  for  in this inequality yields  or, . Therefore, if the value of
is , the greatest possible value of  is .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '606cdce7',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'Linear equations in two variables',
    'The table shows four values of  and their corresponding values of . There is a linear relationship between  and . Which
of the following equations represents this relationship?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. An equation representing the linear relationship between  and  can be written in slope-intercept form
, where  is the slope of the graph of the equation in the xy-plane and  is the y-intercept. The slope, ,
can be calculated using two ordered pairs,  and , and the formula . Substituting the ordered
pairs  and  from the table for  and , respectively, in this formula yields , which
is equivalent to , or . Substituting  for  in the formula  yields .
Substituting the point  into this equation yields , or . Subtracting  from both
sides of this equation yields . Substituting  for  in the equation  yields . Adding
to both sides of this equation yields . Multiplying both sides of this equation by  yields .
Choice B is incorrect. Substituting the point  from the table into this equation yields , or
, which is false.
Choice C is incorrect. Substituting the point  from the table into this equation yields , or
, which is false.
Choice D is incorrect. Substituting the point  from the table into this equation yields , or
, which is false.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'ed92fb68',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If the system of equations above has solution ,
what is the value of  ?
A. 0
B. 9
C. 18
D. 38',
    'C',
    '{"type":"multiple_choice","choices":{"A":"0","B":"9","C":"18","D":"38"}}',
    'Choice C is correct. Adding the given equations yields 9x + 9y = 162. Dividing each side of the equation 9x + 9y = 162 by 9
gives x + y = 18.
Choice A is incorrect and may result from incorrectly adding the equations. Choice B is incorrect and may result from
conceptual or computational errors. Choice D is incorrect. This value is equivalent to y – x.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '60f71697',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'What value of  is the solution to the given equation?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. Dividing both sides of the given equation by  yields . Therefore,  is the solution to the given
equation.
Choice B is incorrect. This is the solution to the equation .
Choice C is incorrect. This is the solution to the equation .
Choice D is incorrect. This is the solution to the equation .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '70feb725',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'During a month, Morgan ran r miles at 5 miles per hour and biked b miles at
10 miles per hour. She ran and biked a total of 200 miles that month, and she biked
for twice as many hours as she ran. What is the total number of miles that Morgan
biked during the month?
A. 80
B. 100
C. 120
D. 160',
    'D',
    '{"type":"multiple_choice","choices":{"A":"80","B":"100","C":"120","D":"160"}}',
    'Choice D is correct. The number of hours Morgan spent running or biking can be calculated by dividing the distance she
traveled during that activity by her speed, in miles per hour, for that activity. So the number of hours she ran can be
represented by the expression , and the number of hours she biked can be represented by the expression . It’s given
that she biked for twice as many hours as she ran, so this can be represented by the equation , which can be
rewritten as . It’s also given that she ran r miles and biked b miles, and that she ran and biked a total of 200 miles.
This can be represented by the equation . Substituting  for b in this equation yields , or .
Solving for r  yields . Determining the number of miles she biked, b, can be found by substituting 40 for r in
, which yields . Solving for b yields .
Choices A, B, and C are incorrect because they don’t satisfy that Morgan biked for twice as many hours as she ran. In choice
A, if she biked 80 miles, then she ran 120 miles, which means she biked for 8 hours and ran for 24 hours. In choice B, if she
biked 100 miles, then she ran 100 miles, which means she biked for 10 hours and ran for 20 hours. In choice C, if she biked
120 miles, then she ran for 80 miles, which means she biked for 12 hours and ran for 16 hours.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '3d04de9c',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'A principal used a total of  flags that were either blue or yellow for field day. The principal used  blue flags. How many
yellow flags were used?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It''s given that a principal used a total of  blue flags and yellow flags. It''s also given that of the  flags
used,  flags were blue. Subtracting the number of blue flags used from the total number of flags used results in the
number of yellow flags used. It follows that the number of yellow flags used is , or .
Choice B is incorrect. This is the number of blue flags used.
Choice C is incorrect. This is the total number of flags used.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b988eeec',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The functions  and  are defined as  and . If the function  is defined as
, what is the x-coordinate of the x-intercept of the graph of  in the xy-plane?',
    '-12',
    '{"type":"free_response"}',
    'The correct answer is . It''s given that the functions  and  are defined as  and . If
the function  is defined as , then substituting  for  and  for  in this
function yields . This can be rewritten as , or . The x-
intercept of a graph in the xy-plane is the point on the graph where . The equation representing the graph of
is . Substituting  for  in this equation yields . Subtracting  from both sides of this equation
yields , or . Therefore, the x-coordinate of the x-intercept of the graph of  in the xy-plane is .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '018a2704',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If , what is the value of ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. Subtracting  from both sides of the given equation yields . Therefore, the value of
is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e1259a5a',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A system of two linear equations is graphed in the xy-plane below.
Which of the following points is the solution to
the system of equations?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The solution to this system of linear equations is the point that lies on both lines graphed, or the point of
intersection of the two lines. According to the graphs, the point of intersection occurs when  and , or at the point
.
Choices B and D are incorrect. Each of these points lies on one line, but not on both lines in the xy-plane. Choice C is
incorrect. This point doesn’t lie on either of the lines graphed in the xy-plane.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '8abed0fb',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'What is the solution  to the given
system of equations?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Since it’s given that , substituting 1 for x in the first equation yields . Simplifying the
right-hand side of this equation yields , or . Therefore, the ordered pair  is a solution to the given system
of equations.
Choice A is incorrect and may result from a calculation error when substituting 1 for x in the first equation. Choices C and D
are incorrect. Because it’s given that , x cannot equal 2 as stated in these ordered pairs.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '9c7741c6',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'On a 210-mile trip, Cameron drove at an average speed of 60 miles per hour for the
first x hours. He then completed the trip, driving at an average speed of 50 miles
per hour for the remaining y hours. If , what is the value of y ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 3. It’s given that Cameron drove 60 miles per hour for x hours; therefore, the distance driven at this
speed can be represented by . He then drove 50 miles per hour for y hours; therefore, the distance driven at this speed
can be represented by . Since Cameron drove 210 total miles, the equation  represents this situation.
If , substitution yields , or . Subtracting 60 from both sides of this equation yields
. Dividing both sides of this equation by 50 yields .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '5cf1bbc9',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'Linear functions',
    'The graph of the function , where , gives the total cost , in dollars, for a certain video game system and
games. What is the best interpretation of the slope of the graph in this context?
A. Each game costs .
B. The video game system costs .
C. The video game system costs .
D. Each game costs .',
    'A',
    '{"type":"multiple_choice","choices":{"A":"Each game costs .","B":"The video game system costs .","C":"The video game system costs .","D":"Each game costs ."}}',
    'Choice A is correct. The given graph is a line, and the slope of a line is defined as the change in the value of  for each
increase in the value of  by . It’s given that  represents the total cost, in dollars, and that  represents the number of
games. Therefore, the change in the value of  for each increase in the value of  by  represents the change in total cost, in
dollars, for each increase in the number of games by . In other words, the slope represents the cost, in dollars, per game.
The graph shows that when the value of  increases from  to , the value of  increases from  to . It follows that the
slope is , or the cost per game is . Thus, the best interpretation of the slope of the graph is that each game costs .
Choice B is incorrect. This is an interpretation of the y-intercept of the graph rather than the slope of the graph.
Choice C is incorrect. The slope of the graph is the cost per game, not the cost of the video game system.
Choice D is incorrect. Each game costs , not .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '93954cfa',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'One pound of grapes costs $2. At this rate, how many
dollars will c pounds of grapes cost?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. If one pound of grapes costs $2, two pounds of grapes will cost 2 times $2, three pounds of grapes will
cost 3 times $2, and so on. Therefore, c pounds of grapes will cost c times $2, which is 2c dollars.
Choice B is incorrect and may result from incorrectly adding instead of multiplying. Choice C is incorrect and may result from
assuming that c pounds cost $2, and then finding the cost per pound. Choice D is incorrect and could result from incorrectly
assuming that 2 pounds cost $c, and then finding the cost per pound.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '7392dfc1',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which of the following is
equivalent to  ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Dividing each side of the original equation by  yields , which simplifies to .
Choice A is incorrect. Dividing each side of the original equation by  gives , which is not equivalent to
. Choice B is incorrect. Dividing each side of the original equation by  gives , which is not equivalent to
. Choice C is incorrect. Dividing each side of the original equation by  gives , which is not equivalent to
.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'af711d1b',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Distance (kilometers)Average time (minutes)
The table gives the average time , in minutes, it takes Carly to travel a certain distance , in kilometers. Which equation
could represent this linear relationship?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. The average time , in minutes, it takes Carly to travel a certain distance , in kilometers, is given in the
table. This linear relationship can be represented by an equation in the form , where  and  are constants. The
table shows that it takes Carly an average time of  minutes to travel  kilometers. Substituting  for  and  for  in
the equation  yields . Subtracting  from both sides of this equation yields .
The table also shows that it takes Carly an average time of  minutes to travel  kilometers. Substituting  for  and
for  in the equation  yields . Subtracting  from both sides of this equation yields
. Substituting  for  in this equation yields . Subtracting  from both
sides of this equation yields . Adding  to both sides of this equation yields . Dividing
both sides of this equation by  yields . Substituting  for  in the equation  yields
, or . Subtracting  from both sides of this equation yields . Substituting  for  and
for  in the equation  yields , or .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e6cb2402',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the given equation,  is a constant. The equation has no solution. What is the value of ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . It''s given that the equation  has no solution. A linear equation in the
form , where , , , and  are constants, has no solution only when the coefficients of  on each side of
the equation are equal and the constant terms aren''t equal. Dividing both sides of the given equation by  yields
, or . Since the coefficients of  on each side of the equation must be equal, it
follows that the value of  is . Note that 16/17, .9411, .9412, and 0.941 are examples of ways to enter a correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6e6a3241',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'Systems of two linear equations in two variables',
    'Which of the following graphs in the xy-plane could be used to
solve the system of equations above?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. The graph of a system of equations is the graph that shows the lines represented by each of the
equations in the system. The x-intercept of the graph of each given equation can be found by substituting 0 for y in each
equation: , or , and , or . The y-intercept of the graph of each equation can be found
by substituting 0 for x in each equation: , or , and  or . Using these x- and y- intercept
values, the line that has equation  passes through the points  and , and the line that has equation
passes through the points  and . Only the lines in choice C pass through these points and can be
used to solve the given system of equations.
Choices A, B, and D are incorrect. In choices A and B, neither line passes through  and  or  and . In
choice D, although one line passes through  and  the other line doesn’t pass through  and .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6ac23de7',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'In the equation above, what is
the value of x ?
A. 25
B. 24
C. 16
D. 15',
    'A',
    '{"type":"multiple_choice","choices":{"A":"25","B":"24","C":"16","D":"15"}}',
    'Choice A is correct. Multiplying both sides of the equation by 5 results in . Dividing both sides of the resulting
equation by 4 results in .
Choice B is incorrect and may result from adding 20 and 4. Choice C is incorrect and may result from dividing 20 by 5 and
then multiplying the result by 4. Choice D is incorrect and may result from subtracting 5 from 20.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b3abf40f',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The function  gives the temperature, in degrees Fahrenheit, that corresponds to a temperature of  kelvins. If a
temperature increased by  kelvins, by how much did the temperature increase, in degrees Fahrenheit?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It’s given that the function  gives the temperature, in degrees Fahrenheit,
that corresponds to a temperature of  kelvins. A temperature that increased by  kelvins means that the value of
increased by  kelvins. It follows that an increase in  by  increases  by , or . Therefore, if a
temperature increased by  kelvins, the temperature increased by  degrees Fahrenheit.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '17d80dc3',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the xy-plane, line  has a slope of  and a y-intercept of . What is the x-coordinate of the x-intercept of line ?',
    '7',
    '{"type":"free_response"}',
    'The correct answer is . An equation of a line in the xy-plane can be written in the form , where  is the slope
of the line and  is the y-intercept of the line. It’s given that line  has a slope of  and a y-intercept of .
Therefore,  and . Substituting  for  and  for  in the equation  yields . The
x-intercept of a line in the xy-plane is the point where the line intersects the x-axis, which is a point with a y-coordinate of .
Substituting  for  in the equation  yields . Adding  to both sides of this equation yields
. Dividing both sides of this equation by  yields . Therefore, the x-coordinate of the x-intercept of line  is .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f75bd744',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the given system of equations,  is a constant. If the system has no solution, what is the value of ?',
    '8',
    '{"type":"free_response"}',
    'The correct answer is . The given system of equations can be solved using the elimination method. Multiplying both sides
of the second equation in the given system by  yields , or . Adding this equation to
the first equation in the given system, , yields , or
. Subtracting  from both sides of this equation yields
, or . If the given system has no solution, then
the equation  has no solution. If this equation has no solution, the coefficients of  on each side of
the equation,  and , must be equal, which yields the equation . Dividing both sides of this equation by
yields . Thus, if the system has no solution, the value of  is .
Alternate approach: A system of two linear equations in two variables,  and , has no solution if the lines represented by the
equations in the xy-plane are parallel and distinct. Lines represented by equations in the form , where , ,
and  are constant terms, are parallel if the ratio of the x-coefficients is equal to the ratio of the y-coefficients, and distinct if
the ratio of the x-coefficients are not equal to the ratio of the constant terms. Subtracting  from both sides of the first
equation in the given system yields , or . Subtracting  from
both sides of the second equation in the given system yields , or . The
ratio of the x-coefficients for these equations is , or . The ratio of the y-coefficients for these equations is . The
ratio of the constant terms for these equations is , or . Since the ratio of the x-coefficients, , is not equal to the ratio
of the constants, , the lines represented by the equations are distinct. Setting the ratio of the x-coefficients equal to the
ratio of the y-coefficients yields . Multiplying both sides of this equation by  yields
, or . Therefore, when , the lines represented by these equations are parallel.
Thus, if the system has no solution, the value of  is .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b2845d88',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which of the following is an equation of the graph
shown in the xy-plane above?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The slope of the line can be found by choosing any two points on the line, such as (4, –2) and (0, –1).
Subtracting the y-values results in –2 – (–1) = –1, the change in y. Subtracting the x-values results in 4 – 0 = 4, the change in
x. Dividing the change in y by the change in x yields , the slope. The line intersects the y-axis at (0, –1), so –1
is the y-coordinate of the y-intercept. This information can be expressed in slope-intercept form as the equation
.
Choice B is incorrect and may result from incorrectly calculating the slope and then misidentifying the slope as the y-
intercept. Choice C is incorrect and may result from misidentifying the slope as the y-intercept. Choice D is incorrect and
may result from incorrectly calculating the slope.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '620fe971',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A team of workers has been moving cargo off of a ship. The equation below models the approximate number of tons of
cargo, y, that remains to be moved x hours after the team started working.
The graph of this equation in the xy-plane is a line. What is the best interpretation
of the x-intercept in this context?
A. The team will have moved all the cargo in about 4.8 hours.
B. The team has been moving about 4.8 tons of cargo per hour.
C. The team has been moving about 25 tons of cargo per hour.
D. The team started with 120 tons of cargo to move.',
    'A',
    '{"type":"multiple_choice","choices":{"A":"The team will have moved all the cargo in about 4.8 hours.","B":"The team has been moving about 4.8 tons of cargo per hour.","C":"The team has been moving about 25 tons of cargo per hour.","D":"The team started with 120 tons of cargo to move."}}',
    'Choice A is correct. The x-intercept of the line with equation y = 120 – 25x can be found by substituting 0 for y and finding
the value of x. When y = 0, x = 4.8, so the x-intercept is at (4.8, 0). Since y represents the number of tons of cargo remaining
to be moved x hours after the team started working, it follows that the x-intercept refers to the team having no cargo
remaining to be moved after 4.8 hours. In other words, the team will have moved all of the cargo after about 4.8 hours.
Choice B is incorrect and may result from incorrectly interpreting the value 4.8. Choices C and D are incorrect and may result
from misunderstanding the x-intercept. These statements are accurate but not directly relevant to the x-intercept.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '3f5375d9',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The line graphed in the xy-plane below models the total cost, in dollars, for a cab ride, y, in a certain city during nonpeak
hours based on the number of miles traveled, x.
According to the graph, what is the cost for each additional mile traveled, in dollars,
of a cab ride?
A. $2.00
B. $2.60
C. $3.00
D. $5.00',
    'A',
    '{"type":"multiple_choice","choices":{"A":"$2.00","B":"$2.60","C":"$3.00","D":"$5.00"}}',
    'Choice A is correct. The cost of each additional mile traveled is represented by the slope of the given line. The slope of the
line can be calculated by identifying two points on the line and then calculating the ratio of the change in y to the change in x
between the two points. Using the points  and , the slope is equal to , or 2. Therefore, the cost for each
additional mile traveled of the cab ride is $2.00.
Choice B is incorrect and may result from calculating the slope of the line that passes through the points  and .
However,  does not lie on the line shown. Choice C is incorrect. This is the y-coordinate of the y-intercept of the graph
and represents the flat fee for a cab ride before the charge for any miles traveled is added. Choice D is incorrect. This value
represents the total cost of a 1-mile cab ride.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'fdee0fbf',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the xy-plane, line k intersects the y-axis at the point  and passes through
the point . If the point  lies on line k, what is the value of w ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 74. The y-intercept of a line in the xy-plane is the ordered pair  of the point of intersection of the
line with the y-axis. Since line k intersects the y-axis at the point , it follows that  is the y-intercept of this line.
An equation of any line in the xy-plane can be written in the form , where m is the slope of the line and b is the y-
coordinate of the y-intercept. Therefore, the equation of line k can be written as , or . The value of
m can be found by substituting the x- and y-coordinates from a point on the line, such as , for x and y, respectively. This
results in . Solving this equation for m gives . Therefore, an equation of line k is . The value of w
can be found by substituting the x-coordinate, 20, for x in the equation of line k and solving this equation for y. This gives
, or . Since w is the y-coordinate of this point, .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'aee9fd2d',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'If , the value of  is between which of the following pairs of values?
A.  and
B.  and
C.  and
D.  and',
    'B',
    '{"type":"multiple_choice","choices":{"A":"and","B":"and","C":"and","D":"and"}}',
    'Choice B is correct. Multiplying both sides of the given equation by , or , yields , or
. Subtracting  from both sides of this equation yields . Dividing both sides
of this equation by  yields . Therefore, if , then the value of  is . It follows that of the given
choices, the value of  is between  and .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'ce6b52d8',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If , what is the value of ?',
    '60',
    '{"type":"free_response"}',
    'The correct answer is . Subtracting  from both sides of the given equation yields . Applying the
distributive property to the left-hand side of this equation yields . Adding  to both sides of this
equation yields . Subtracting  from both sides of this equation yields . Therefore, the value of  is
.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '466b87e3',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the system of equations above, c is a constant. If the system has
no solution, what is the value of c ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . A system of two linear equations has no solution when the graphs of the equations have the
same slope and different y-intercepts. Each of the given linear equations is written in the slope-intercept form, ,
where m is the slope and b is the y-coordinate of the y-intercept of the graph of the equation. For these two linear equations,
the y-intercepts are  and . Thus, if the system of equations has no solution, the slopes of the graphs of the two
linear equations must be the same. The slope of the graph of the first linear equation is . Therefore, for the system of
equations to have no solution, the value of c must be . Note that 1/2 and .5 are examples of ways to enter a correct
answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'dcc4886a',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'One of the two equations in a system of linear equations is given. The system has infinitely many solutions. If the second
equation in the system is , where  and  are constants, what is the value of ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It’s given that the system has infinitely many solutions. The graphs of two lines in the xy-plane
represented by equations in slope-intercept form, , where  and  are constants, have infinitely many solutions
if their slopes, , are the same and if their y-coordinates of the y-intercepts, , are also the same. The first equation in the
given system is . For this equation, the slope is  and the y-coordinate of the y-intercept is . If the second
equation is in the form , then for the two equations to be equivalent, the values of  and  in the second
equation must equal the corresponding values in the first equation. Therefore, the second equation must have a slope, , of
, and a y-coordinate of the y-intercept, , of . Thus, the value of  is .
Choice A is incorrect and may result from conceptual errors.
Choice B is incorrect and may result from conceptual errors.
Choice C is incorrect and may result from conceptual errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'ee031767',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A dance teacher ordered outfits for students for a dance recital. Outfits for boys
cost $26, and outfits for girls cost $35. The dance teacher ordered a total of 28
outfits and spent $881. If b represents the number of outfits the dance teacher
ordered for boys and g represents the number of outfits the dance teacher ordered
for girls, which of the following systems of equations can be solved to find b and g
?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Outfits for boys cost $26 each and the teacher ordered b outfits for boys, so the teacher spent 26b
dollars on outfits for boys. Similarly, outfits for girls cost $35 each and the teacher ordered g outfits for girls, so the teacher
spent 35g dollars on outfits for girls. Since the teacher spent a total of $881 on outfits for boys and girls, the equation 26b +
35g = 881 must be true. And since the teacher ordered a total of 28 outfits, the equation b + g = 28 must also be true.
Choice A is incorrect and may result from switching the constraint on the total number of outfits with the constraint on the
cost of the outfits. Choice C is incorrect and may result from switching the constraint on the total number of outfits with the
constraint on the cost of the outfits, as well as switching the cost of the outfits for boys with the cost of the outfits for girls.
Choice D is incorrect and may result from switching the cost of the outfits for boys with the cost of the outfits for girls.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0ef4a7b6',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A particular botanist classifies a species of plant as tall if its typical height when fully grown is more than  centimeters.
Each of the following inequalities represents the possible heights , in centimeters, for a specific plant species when fully
grown. Which inequality represents the possible heights , in centimeters, for a tall plant species?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It''s given that a particular botanist classifies a species of plant as tall if its typical height when fully
grown is more than  centimeters. The inequality  represents possible heights , in centimeters, for a
plant species when fully grown where  is between  and  centimeters. Since all values of  in this inequality are
greater than  centimeters, this inequality represents the possible heights for a tall plant species.
Choice B is incorrect. This inequality represents possible heights , in centimeters, for a plant species when fully grown
where  is between  and  centimeters, not more than  centimeters.
Choice C is incorrect. This inequality represents possible heights , in centimeters, for a plant species when fully grown
where  is between  and  centimeters, not more than  centimeters.
Choice D is incorrect. This inequality represents possible heights , in centimeters, for a plant species when fully grown
where  is between  and  centimeters, not more than  centimeters.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '2875ba81',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The solution to the given system of equations is . What is the value of y?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The given system of linear equations can be solved by the elimination method. Multiplying each side of
the second equation in the given system by  yields , or . Subtracting this equation
from the first equation in the given system yields , which is equivalent to
, or .
Choice B is incorrect. This is the value of , not the value of .
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '89541f9b',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which of the following ordered pairs  satisfies
the inequality  ?
1.
2.
3.
A. I only
B. II only
C. I and II only
D. I and III only',
    'C',
    '{"type":"multiple_choice","choices":{"A":"I only","B":"II only","C":"I and II only","D":"I and III only"}}',
    'Choice C is correct. Substituting  into the inequality gives , or , which is a true statement.
Substituting  into the inequality gives , or , which is a true statement. Substituting  into the
inequality gives , or , which is not a true statement. Therefore,  and  are the only ordered pairs
shown that satisfy the given inequality.
Choice A is incorrect because the ordered pair  also satisfies the inequality. Choice B is incorrect because the ordered
pair  also satisfies the inequality. Choice D is incorrect because the ordered pair  does not satisfy the inequality.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '915463e0',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Normal body temperature for an adult is between  and , inclusive. If
Kevin, an adult male, has a body temperature that is considered to be normal,
which of the following could be his body temperature?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. Normal body temperature must be greater than or equal to 97.8°F but less than or equal to 99°F. Of the
given choices, 97.9°F is the only temperature that fits these restrictions.
Choices A and B are incorrect. These temperatures are less than 97.8°F, so they don’t fit the given restrictions. Choice D is
incorrect. This temperature is greater than 99°F, so it doesn’t fit the given restrictions.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6e50ce28',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The sum of a number  and  is twice as large as a number . The number  is  less than the number . Which system of
equations describes this situation?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It''s given that the sum of a number  and  is twice as large as a number . This can be described by the
equation . It’s also given that the number  is  less than the number . This can be described by the equation
. Therefore, the system consisting of the equations  and  describes this situation.
Choice B is incorrect. The equation  describes a situation where the number  is  less than .
Choice C is incorrect. The equation  describes a situation where the number  is twice the sum of a number
and .
Choice D is incorrect. The equation  describes a situation where the number  is twice the sum of a number
and , and the equation  describes a situation where a number  is  less than .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f718c9cf',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The solution to the given system of equations is . What is the value of ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . Multiplying the first equation in the given system by  yields . Subtracting the
second equation in the given system, , from  yields
, which is equivalent to , or . Dividing both
sides of this equation by  yields . The value of  can be found by substituting  for  in either of the two given
equations. Substituting  for  in the equation  yields , or . Subtracting
from both sides of this equation yields . Dividing both sides of this equation by  yields , or .
Therefore, the value of  is , or . Note that 9/5 and 1.8 are examples of ways to enter a correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'feb78194',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A museum rents tablets to visitors. The museum earns revenue of  for each tablet rented for the day. On Wednesday, the
museum earned  in profit from renting tablets after paying daily expenses of . How many tablets did the museum
rent on Wednesday?',
    '37',
    '{"type":"free_response"}',
    'The correct answer is . It''s given that the museum earns revenue of  for each tablet rented for the day. It''s also given
that on Wednesday, the museum earned  in profit from renting tablets after paying daily expenses of . Let
represent the number of tablets the museum rented on Wednesday. It follows that the total revenue can be represented by
the expression . Because , the equation  represents this
situation. Adding  to both sides of this equation yields . Dividing both sides of this equation by  yields
. Therefore, the museum rented  tablets on Wednesday.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a7e2859a',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The cost of renting a large canopy tent for up to  days is  for the first day and  for each additional day. Which of
the following equations gives the cost , in dollars, of renting the tent for  days, where  is a positive integer and ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It’s given that the cost of renting a large canopy tent is  for the first day and  for each
additional day for up to  days. For  days of renting the tent, the cost includes  for the first day and  for each of
the  additional days. It follows that the cost , in dollars, of renting the tent can be expressed as
, which is equivalent to , or . Therefore, the equation
gives the cost of renting the tent for  days, where  is a positive integer and .
Choice B is incorrect. This equation represents a situation where the cost of renting the tent for the first day is , not
, and the cost for each additional day is , not .
Choice C is incorrect. This equation represents a situation where the cost of renting the tent for the first day is , not
, and the cost for each additional day is , not .
Choice D is incorrect. This equation represents a situation where the cost of renting the tent for the first day is , not
.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'ce314070',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If , what is the
value of ?
A. 2
B.
C.
D.',
    'D',
    '{"type":"multiple_choice","choices":{"A":"2"}}',
    'Choice D is correct. Multiplying the given equation by 2 on each side yields . Applying the distributive
property, this equation can be rewritten as , or .
Choices A, B, and C are incorrect and may result from calculation errors in solving the given equation for  and then
substituting that value of x in the expression .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e8f9e117',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The formula above is Ohm’s law for an electric circuit with current I, in amperes,
potential difference V, in volts, and resistance R, in ohms. A circuit has a resistance
of 500 ohms, and its potential difference will be generated by n six-volt batteries
that produce a total potential difference of  volts. If the circuit is to have a
current of no more than 0.25 ampere, what is the greatest number, n, of six-volt
batteries that can be used?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 20. For the given circuit, the resistance R is 500 ohms, and the total potential difference V generated
by n batteries is  volts. It’s also given that the circuit is to have a current of no more than 0.25 ampere, which can be
expressed as . Since Ohm’s law says that , the given values for V and R can be substituted for I in this
inequality, which yields . Multiplying both sides of this inequality by 500 yields , and dividing both
sides of this inequality by 6 yields . Since the number of batteries must be a whole number less than 20.833, the
greatest number of batteries that can be used in this circuit is 20.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '868fc236',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The table above gives the typical amounts of energy per gram, expressed in both
food calories and kilojoules, of the three macronutrients in food. If x food calories
is equivalent to k kilojoules, of the following, which best represents the relationship
between x and k ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The relationship between x food calories and k kilojoules can be modeled as a proportional relationship.
Let  and  represent the values in the first two rows in the table:  and . The rate of
change, or , is ; therefore, the equation that best represents the relationship between x and k is
.
Choice A is incorrect and may be the result of calculating the rate of change using . Choice C is incorrect because
the number of kilojoules is greater than the number of food calories. Choice D is incorrect and may be the result of an error
when setting up the equation.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'bd45df49',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The solution to the given system of equations is . What is the value of ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The first equation in the given system of equations defines  as . Substituting  for  in the
second equation in the given system of equations yields . Applying the distributive property on the left-
hand side of this equation yields . Subtracting  from both sides of this equation yields .
Subtracting  from both sides of this equation yields . Substituting  for  in the first equation of the given
system of equations yields , or . Substituting  for  and  for  into the expression
yields , or .
Choice A is incorrect. This is the value of , not .
Choice B is incorrect. This is the value of , not .
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '431c3038',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In an article about exercise, it is estimated that a 160-pound adult uses 200
calories for every 30 minutes of hiking and 150 calories for every 30 minutes of
bicycling. An adult who weighs 160 pounds has completed 1 hour of bicycling.
Based on the article, how many hours should the adult hike to use a total of
1,900 calories from bicycling and hiking?
A. 9.5
B. 8.75
C. 6
D. 4',
    'D',
    '{"type":"multiple_choice","choices":{"A":"9.5","B":"8.75","C":"6","D":"4"}}',
    'Choice D is correct. Since a 160-pound adult uses 200 calories for every 30 minutes of hiking, then the same adult uses
calories after hiking for h 30-minute periods. Similarly, the same adult uses  calories after bicycling for b 30-
minute periods. Therefore, the equation  represents the situation where a 160-pound adult uses a
total of 1,900 calories from hiking for h 30-minute periods and bicycling for b 30-minute periods. It’s given that the adult
completes 1 hour, or 2 30-minute periods, of bicycling. Substituting 2 for b in the equation  yields
, or . Subtracting 300 from both sides of this equation yields .
Dividing both sides by 200 yields . Since h represents the number of 30-minute periods spent hiking and there are 2 30-
minute periods in every hour, it follows that the adult will need to hike for , or 4 hours to use a total of 1,900 calories from
bicycling and hiking.
Choice A is incorrect and may result from solving the equation . This represents 0 30-minute periods bicycling
instead of 2. Choice B is incorrect and may result from solving the equation . This represents 1 30-
minute period of bicycling instead of 2. Choice C is incorrect. This may result from determining that the number of 30-minute
periods the adult should hike is 8, but then subtracting 2 from 8, rather than dividing 8 by 2, to find the number of hours the
adult should hike.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'dfa45424',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Tony spends $80 per month on public transportation. A 10-ride pass costs $12.50,
and a single-ride pass costs $1.50. If g represents the number of 10-ride passes
Tony buys in a month and t represents the number of single-ride passes Tony buys
in a month, which of the following equations best represents the relationship
between g and t ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Since a 10-ride pass costs $12.50 and g is the number of 10-ride passes Tony buys in a month, the
expression  represents the amount Tony spends on 10-ride passes in a month. Since a single-ride pass costs $1.50
and t is the number of single-ride passes Tony buys in a month, the expression  represents the amount Tony spends on
single-ride passes in a month. Therefore, the sum  represents the amount he spends on the two types of
passes in a month. Since Tony spends a total of $80 on passes in a month, this expression can be set equal to 80, producing
.
Choices A and B are incorrect. The expression  represents the total number of the two types of passes Tony buys in a
month, not the amount Tony spends, which is equal to 80, nor the cost of one of each pass, which is equal to .
Choice C is incorrect and may result from reversing the cost for each type of pass Tony buys in a month.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a1696f3e',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The function  is defined as , where a is a constant. If
, what is the value of a ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. Substituting 4 for x in g(x) = 5x + a gives g(4) = 5(4) + a. Since g(4) = 31, the equation g(4) = 5(4) + a
simplifies to 31 = 20 + a. It follows that a = 11.
Choices A, B, and D are incorrect and may result from arithmetic errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '255996a6',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'In the equation above, T represents Brittany’s total take-home pay, in dollars, for her
first week of work, where h represents the number of hours she worked that week
and 1,000 represents a sign-on bonus. If Brittany’s total take-home pay was $1,576,
for how many hours was Brittany paid for her first week of work?
A. 16
B. 32
C. 55
D. 88',
    'B',
    '{"type":"multiple_choice","choices":{"A":"16","B":"32","C":"55","D":"88"}}',
    'Choice B is correct. Since Brittany’s total take-home pay was $1,576, the value 1,576 can be substituted for T in the given
equation  to give . Subtracting 1,000 from both sides of this equation gives
. Dividing both sides of this equation by 18 gives . Therefore, Brittany was paid for 32 hours for her first
week of work.
Choice A is incorrect. This is half the number of hours Brittany was paid for. Choice C is incorrect and may result from
dividing 1,000 by 18. Choice D is incorrect and may result from dividing 1,576 by 18.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '9d9fe1e6',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'In science class, Diego conducted an experiment to learn about evaporation. Diego measured the height of fluid in a beaker
over a period of time. The function  gives the estimated height, , of the fluid in the
beaker  days after the start of the experiment. Which of the following is the best interpretation of  in this context?
A. The estimated height, , of the fluid at the start of the experiment
B. The estimated height, , of the fluid at the end of the experiment
C. The estimated change in the height, , of the fluid each day
D. The estimated number of days for all the fluid to evaporate',
    'A',
    '{"type":"multiple_choice","choices":{"A":"The estimated height, , of the fluid at the start of the experiment","B":"The estimated height, , of the fluid at the end of the experiment","C":"The estimated change in the height, , of the fluid each day","D":"The estimated number of days for all the fluid to evaporate"}}',
    'Choice A is correct. It’s given that the function  gives the estimated height, in centimeters (cm), of the
fluid in the beaker  days after the start of the experiment. For a function defined by an equation of the form
, where  and  are constants,  represents the value of  when . It follows that in the given
function,  represents the value of  when . Since  represents the start of the experiment, then the best
interpretation of  in this context is that the estimated height, in cm, of the fluid was  at the start of the experiment.
Choice B is incorrect and may result from conceptual errors.
Choice C is incorrect. The estimated change in the height, in cm, of the fluid each day is , not .
Choice D is incorrect and may result from conceptual errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6989c80a',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The function  gives the temperature, in degrees Fahrenheit, that corresponds to a temperature of  kelvins. If a
temperature increased by  kelvins, by how much did the temperature increase, in degrees Fahrenheit?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It’s given that the function  gives the temperature, in degrees Fahrenheit,
that corresponds to a temperature of  kelvins. A temperature that increased by  kelvins means that the value of
increased by  kelvins. It follows that an increase in  by  increases  by , or . Therefore, if a
temperature increased by  kelvins, the temperature increased by  degrees Fahrenheit.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0b0fa68b',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'For the function ,  for all values of , where  is a positive constant. If , what is the value of ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . It''s given that  for all values of , where  is a positive constant, and .
Therefore, for the given function , . Dividing both sides of this equation by  yields . Substituting  for  in
the equation  yields , or . Since it’s given that , substituting  for
yields . Adding  to both sides of this equation yields . Multiplying both sides of this equation by
yields . Dividing both sides of this equation by  yields . Note that 2/43, .0465, 0.046, and 0.047 are
examples of ways to enter a correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '3c4ce699',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'If , what is the value of ?',
    '27',
    '{"type":"free_response"}',
    'The correct answer is . Multiplying both sides of the given equation by  yields , or .
Therefore, the value of  is .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '4f669597',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'What value of p is the solution of
the equation above?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 1.2. One way to solve the equation  is to first distribute the terms outside the
parentheses to the terms inside the parentheses: . Next, combine like terms on the left side of the
equal sign:  . Subtracting 10p from both sides yields  . Finally, dividing both sides by  gives
, which is equivalent to . Note that 1.2 and 6/5 are examples of ways to enter a correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '98d3393a',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Line  in the xy-plane is perpendicular to the line with equation
. What is the slope of line ?
A. 0
B.
C.
D. The slope of line  is undefined.',
    'A',
    '{"type":"multiple_choice","choices":{"A":"0","D":"The slope of line  is undefined."}}',
    'Choice A is correct. It is given that line  is perpendicular to a line whose equation is x = 2. A line whose equation is a
constant value of x is vertical, so  must therefore be horizontal. Horizontal lines have a slope of 0, so  has a slope of 0.
Choice B is incorrect. A line with slope  is perpendicular to a line with slope 2. However, the line with equation x = 2 is
vertical and has undefined slope (not slope of 2). Choice C is incorrect. A line with slope –2 is perpendicular to a line with
slope . However, the line with equation x = 2 has undefined slope (not slope of ). Choice D is incorrect; this is the
slope of the line x = 2 itself, not the slope of a line perpendicular to it.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a91a2b75',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The function  is defined by . What is the -coordinate of the -intercept of the graph of  in the
-plane?',
    '9',
    '{"type":"free_response"}',
    'The correct answer is . The y-intercept of the graph of  in the xy-plane is the point where the graph of
crosses the y-axis, which occurs at . It’s given that the function  is defined by . Substituting  for
and  for  in this equation yields , or . It follows that  when  and that the y-intercept
of the graph of  in the xy-plane is . Therefore, the y-coordinate of the y-intercept of the graph of  in
the xy-plane is .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '23dedddd',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the linear function ,  and . Which equation defines ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Since  is a linear function, it can be defined by an equation of the form , where  and
are constants. It''s given that . Substituting  for  and  for  in the equation  yields
, or . Substituting  for  in the equation  yields . It''s given that
. Substituting  for  and  for  in the equation  yields , or .
Subtracting  from both sides of this equation yields . Substituting  for  in the equation  yields
. Therefore, an equation that defines  is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd9d83c02',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'For what value of w does
?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. To solve the equation, use the distributive property to multiply on the right-hand side of the equation
which gives w – 10 = 2w + 10. Subtract w from both sides of the equation, which gives –10 = w + 10. Finally, subtract 10
from both sides of the equation, which gives –20 = w.
Choices A and B are incorrect and may result from making sign errors. Choice C is incorrect and may result from
incompletely distributing the 2 in the expression 2(w + 5).',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '3462d850',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Marisol drove 3 hours from City A to City B. The equation below estimates the distance d, in miles, Marisol traveled after
driving for t hours.
Which of the following does 45 represent in the equation?
A. Marisol took 45 trips from City A to City B.
B. The distance between City A and City B is 45 miles.
C. Marisol drove at an average speed of about 45 miles per hour.
D. It took Marisol 45 hours to drive from City A to City B.',
    'C',
    '{"type":"multiple_choice","choices":{"A":"Marisol took 45 trips from City A to City B.","B":"The distance between City A and City B is 45 miles.","C":"Marisol drove at an average speed of about 45 miles per hour.","D":"It took Marisol 45 hours to drive from City A to City B."}}',
    'Choice C is correct. It’s given that d is the distance, in miles, Marisol traveled after driving for t hours. Therefore, 45
represents the distance in miles traveled per hour, which is the speed she drove in miles per hour.
Choice A is incorrect and may result from misidentifying speed as the number of trips. Choice B is incorrect and may result
from misidentifying speed as the total distance. Choice D is incorrect and may result from misidentifying the speed as the
time, in hours.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'ed18c4f7',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Cathy has n CDs. Gerry has 3 more than twice the number of CDs that Cathy has. In
terms of n, how many CDs does Gerry have?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The term 2n represents twice the number of CDs that Cathy has, and adding 3 represents 3 more than
that amount.
Choices A and B are incorrect. The expression 3n represents three times the number of CDs that Cathy has. Choice C is
incorrect. Subtracting 3 represents 3 fewer than twice the number of CDs that Cathy has.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd62ad380',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'Linear equations in two variables',
    'An artist paints and sells square tiles. The selling price P, in dollars, of a painted tile is a linear function of the side length
of the tile s, in inches, as shown in the table below.
Side length, s (inches)Price, P (dollars)
38.00
618.00
928.00
Which of the following could define the relationship between s and P ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. The relationship between s and P can be modeled by a linear equation of the form P = ks + a, where k
and a are constants. The table shows that P increases by 10 when s increases by 3, so k = . To solve for a, substitute
one of the given pairs of values for s and P: when s = 3, P = 8, so , which yields a = –2. The solution is
therefore .
Choice A is incorrect. When s = 3, P = 8, but 3(3) + 10 = 19 ≠  8. Choice B is incorrect. This may result from using the first
number given for P in the table as the constant term a in the linear equation P = ks + a, which is true only when s = 0. Choice
D is incorrect and may result from using the reciprocal of the slope of the line.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '620abf36',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If , what is the value of ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. Subtracting  from both sides of the given equation yields , or .
Therefore, the value of  is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect. This is the value of , not .
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '2554b413',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'In the xy-plane, a line has a slope of 6 and passes through the point . Which
of the following is an equation of this line?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The slope-intercept form of an equation for a line is , where m is the slope of the line and b
is the y-coordinate of the y-intercept of the line. It’s given that the slope is 6, so . It’s also given that the line passes
through the point  on the y-axis, so . Substituting  and  into the equation  gives
.
Choices B, C, and D are incorrect and may result from misinterpreting the slope-intercept form of an equation of a line.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0d1b1e35',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A batch of banana milkshakes consists of  cups of ice cream and  bananas and has  of calcium.
There is  of calcium in  cup of the ice cream used to make this batch of milkshakes. How much calcium, , is
in  banana?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It’s given that a batch of banana milkshakes consists of  cups of ice cream and  bananas and has
mg of calcium. It’s also given that there is  mg of calcium in  cup of the ice cream used to make this batch of
milkshakes. It follows that the total amount of calcium in  cups of ice cream is , or  mg. Let  represent the
amount of calcium, in mg, in  banana. It follows that the total amount of calcium in  bananas is  mg. Since the batch of
banana milkshakes has  mg of calcium, the equation  represents this situation. Subtracting
from both sides of this equation yields . Dividing both sides of this equation by  yields . Therefore, the
amount of calcium in  banana is  mg.
Choice B is incorrect. This is the amount of calcium, in mg, in  bananas, not in  banana.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect. This is the amount of calcium, in mg, in  cups of ice cream, not in  banana.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'cea27ab2',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'Linear equations in two variables',
    'For the given equation, which table gives three values of  and their corresponding values of ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. To verify which table represents this linear relationship, the values in each table can be checked by
substituting them into the given equation. The table in choice A shows that when , . Substituting these values
into the given equation yields , or , which is true. Additionally, the table in choice A shows
that when , . Substituting these values into the given equation yields , or ,
which is true. Finally, the table in choice A shows that when , . Substituting these values into the given equation
yields , or , which is true. Therefore, the table in choice A gives three values of  and their
corresponding values of .
Choice B is incorrect. The table in choice B shows that when , . Substituting these values into the given
equation yields , or , which is not true.
Choice C is incorrect. The table in choice C shows that when , . Substituting these values into the given
equation yields , or , which is not true.
Choice D is incorrect. The table in choice D shows that when , . Substituting these values into the given
equation yields , or , which is not true.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '55ea82f3',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'A team hosting an event to raise money for new uniforms plans to sell at least  tickets before this event and at least
tickets during this event to raise a total of at least  from all tickets sold. The price of a ticket during this event is
less than the price of a ticket before this event. Which inequality represents this situation, where  is the price, in dollars, of a
ticket sold during this event?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. It’s given that a team plans to sell at least  tickets before an event and at least  tickets during the
event to raise a total of at least  from all tickets sold. It’s also given that the price of a ticket during the event is
less than the price of a ticket before the event and that  represents the price, in dollars, of a ticket sold during the event. It
follows that  represents the price, in dollars, of a ticket sold before the event. The expression  represents
the planned revenue, in dollars, from the tickets sold before the event, and the expression  represents the planned
revenue, in dollars, from the tickets sold during the event. Thus, the expression  represents the planned
revenue, in dollars, from all tickets sold. Since the team plans to raise a total of at least  from all tickets sold, the total
revenue must be at least . Therefore, the inequality  represents this situation.
Choice A is incorrect. This inequality represents a situation in which the team raises a total of at most  from all
tickets sold.
Choice C is incorrect. This inequality represents a situation in which the price of a ticket before the event is  less, rather
than  more, than the price of a ticket during the event and the team raises a total of at most  from all tickets sold.
Choice D is incorrect. This inequality represents a situation in which the price of a ticket before the event is  less, rather
than  more, than the price of a ticket during the event.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a309803e',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'One gallon of paint will cover  square feet of a surface. A room has a total wall area of  square feet. Which equation
represents the total amount of paint , in gallons, needed to paint the walls of the room twice?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It''s given that  represents the total wall area, in square feet. Since the walls of the room will be painted
twice, the amount of paint, in gallons, needs to cover  square feet. It’s also given that one gallon of paint will cover
square feet. Dividing the total area, in square feet, of the surface to be painted by the number of square feet covered by one
gallon of paint gives the number of gallons of paint that will be needed. Dividing  by  yields  , or . Therefore,
the equation that represents the total amount of paint , in gallons, needed to paint the walls of the room twice is .
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from finding the amount of paint needed to paint the walls once rather than twice.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '789975b7',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'A gardener buys two kinds of fertilizer. Fertilizer A contains 60% filler materials by
weight and Fertilizer B contains 40% filler materials by weight. Together, the
fertilizers bought by the gardener contain a total of 240 pounds of filler materials.
Which equation models this relationship, where x is the number of pounds of
Fertilizer A and y is the number of pounds of Fertilizer B?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Since Fertilizer A contains 60% filler materials by weight, it follows that x pounds of Fertilizer A consists
of 0.6x pounds of filler materials. Similarly, y pounds of Fertilizer B consists of 0.4y pounds of filler materials. When x pounds
of Fertilizer A and y pounds of Fertilizer B are combined, the result is 240 pounds of filler materials. Therefore, the total
amount, in pounds, of filler materials in a mixture of x pounds of Fertilizer A and y pounds of Fertilizer B can be expressed as
.
Choice A is incorrect. This choice transposes the percentages of filler materials for Fertilizer A and Fertilizer B. Fertilizer A
consists of 0.6x pounds of filler materials and Fertilizer B consists of 0.4y pounds of filler materials. Therefore,
is equal to 240, not . Choice C is incorrect. This choice transposes the percentages of filler materials for
Fertilizer A and Fertilizer B and incorrectly represents how to take the percentage of a value mathematically. Choice D is
incorrect. This choice incorrectly represents how to take the percentage of a value mathematically. Fertilizer A consists of
0.6x pounds of filler materials, not 60x pounds of filler materials, and Fertilizer B consists of 0.4y pounds of filler materials,
not 40y pounds of filler materials.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '4fe4fd7c',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A company’s total cost , in dollars, to produce x shirts is given by the function
above, where m is a constant and . The total cost to produce 100 shirts is
$800. What is the total cost, in dollars, to produce 1000 shirts? (Disregard the $
sign when gridding your answer.)',
    '',
    '{"type":"free_response"}',
    'The correct answer is 3500. The given information includes a cost, $800, to produce 100 shirts. Substituting  and
into the given equation yields . Subtracting 500 from both sides of the equation yields
. Dividing both sides of this equation by 100 yields . Substituting the value of m into the given equation
yields . Substituting 1000 for x in this equation and solving for  gives the cost of 1000 shirts:
, or 3500.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '771bd0ca',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'What value of  is the solution to the given equation?',
    '-22',
    '{"type":"free_response"}',
    'The correct answer is . The given equation can be rewritten as . Dividing both sides of this equation by
yields . Subtracting  from both sides of this equation yields . Therefore,  is the value of
that is the solution to the given equation.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'df78b361',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Lily made  cups of jam. Lily then filled  small containers and  large containers with all the jam she made. The equation
represents this situation. Which is the best interpretation of  in this context?
A. The number of large containers Lily filled
B. The number of small containers Lily filled
C. The total number of cups of jam in the large containers
D. The total number of cups of jam in the small containers',
    'C',
    '{"type":"multiple_choice","choices":{"A":"The number of large containers Lily filled","B":"The number of small containers Lily filled","C":"The total number of cups of jam in the large containers","D":"The total number of cups of jam in the small containers"}}',
    'Choice C is correct. It’s given that the equation  represents the situation where Lily filled  small containers
and  large containers with all the jam she made, which was  cups. Therefore,  represents the total number of cups of
jam in the large containers.
Choice A is incorrect. The number of large containers Lily filled is represented by , not .
Choice B is incorrect. The number of small containers Lily filled is represented by , not .
Choice D is incorrect. The total number of cups of jam in the small containers is represented by , not .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '11e1ab81',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The graph above shows the distance traveled d, in feet, by a product on a conveyor
belt m minutes after the product is placed on the belt. Which of the following
equations correctly relates d and m ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The line passes through the origin. Therefore, this is a relationship of the form , where k is a
constant representing the slope of the graph. To find the value of k, choose a point  on the graph of the line other than
the origin and substitute the values of m and d into the equation. For example, if the point  is chosen, then , and
. Therefore, the equation of the line is .
Choice B is incorrect and may result from calculating the slope of the line as the change in time over the change in distance
traveled instead of the change in distance traveled over the change in time. Choices C and D are incorrect because each of
these equations represents a line with a d-intercept of 2. However, the graph shows a line with a d-intercept of 0.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd7bf55e1',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'A movie theater sells two types of tickets, adult tickets for $12 and child tickets for
$8. If the theater sold 30 tickets for a total of $300, how much, in dollars, was
spent on adult tickets? (Disregard the $ sign when gridding your answer.)',
    '',
    '{"type":"free_response"}',
    'The correct answer is 180. Let a be the number of adult tickets sold and c be the number of child tickets sold. Since the
theater sold a total of 30 tickets, a + c = 30. The price per adult ticket is $12, and the price per child ticket is $8. Since the
theater received a total of $300 for the 30 tickets sold, it follows that 12a + 8c = 300. To eliminate c, the first equation can be
multiplied by 8 and then subtracted from the second equation:
Because the question asks for the amount spent on adult tickets, which is 12a dollars, the resulting equation can be
multiplied by 3 to give 3(4a) = 3(60) = 180. Therefore, $180 was spent on adult tickets.
Alternate approach: If all the 30 tickets sold were child tickets, their total price would be 30($8) = $240. Since the actual total
price of the 30 tickets was $300, the extra $60 indicates that a certain number of adult tickets, a, were sold. Since the price
of each adult ticket is $4 more than each child ticket, 4a = 60, and it follows that 12a = 180.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6cb9bf45',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'Linear inequalities in one or two variables',
    'For which of the following tables are all the values of  and their corresponding values of  solutions to the given inequality?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. A solution  to the given inequality is a value of  and the corresponding value of  such that the
value of  is greater than the value of . All the tables in the choices have the same three values of , so each of the
three values of  can be substituted in the given inequality to compare the corresponding values of  in each of the tables.
Substituting  for  in the given inequality yields , or . Substituting  for  in the given inequality yields
, or . Substituting  for  in the given inequality yields , or . Therefore, when
, , and , the corresponding values of  must be greater than , greater than , and greater than ,
respectively. In the table in choice D, when , the corresponding value of  is , which is greater than ; when ,
the corresponding value of  is , which is greater than ; when , the corresponding value of  is , which is
greater than . Of the given choices, only choice D gives values of  and their corresponding values of  that are all
solutions to the given inequality.
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'c22b5f25',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the xy-plane, the points  and  lie on the graph of
which of the following linear functions?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. A linear function can be written in the form , where m is the slope and b is the y-
coordinate of the y-intercept of the line. The slope of the graph can be found using the formula . Substituting
the values of the given points into this formula yields  or , which simplifies to . Only
choice C shows an equation with this slope.
Choices A, B, and D are incorrect and may result from computation errors or misinterpreting the given information.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '16889ef3',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Oil and gas production in a certain area dropped from 4 million barrels in 2000 to
1.9 million barrels in 2013. Assuming that the oil and gas production decreased at
a constant rate, which of the following linear functions f best models the
production, in millions of barrels, t years after the year 2000?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. It is assumed that the oil and gas production decreased at a constant rate. Therefore, the function f that
best models the production t years after the year 2000 can be written as a linear function, , where m is the rate
of change of the oil and gas production and b is the oil and gas production, in millions of barrels, in the year 2000. Since
there were 4 million barrels of oil and gas produced in 2000, . The rate of change, m, can be calculated as
, which is equivalent to , the rate of change in choice C.
Choices A and B are incorrect because each of these functions has a positive rate of change. Since the oil and gas
production decreased over time, the rate of change must be negative. Choice D is incorrect. This model may result from
misinterpreting 1.9 million barrels as the amount by which the production decreased.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '87071893',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'What value of  is the solution to the given equation?',
    '55',
    '{"type":"free_response"}',
    'The correct answer is . Subtracting  from both sides of the given equation yields . Therefore, the value of  is
.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'c651cc56',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Some values of the linear function f are shown in the table
above. What is the value of ?
A. 6
B. 7
C. 8
D. 9',
    'B',
    '{"type":"multiple_choice","choices":{"A":"6","B":"7","C":"8","D":"9"}}',
    'Choice B is correct. A linear function has a constant rate of change, and any two rows of the table shown can be used to
calculate this rate. From the first row to the second, the value of x is increased by 2 and the value of  is increased by
. So the values of  increase by 3 for every increase by 1 in the value of x. Since , it follows that
. Therefore, .
Choice A is incorrect. This is the third x-value in the table, not . Choices C and D are incorrect and may result from errors
when calculating the function’s rate of change.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a7a14e87',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the xy-plane, line k is defined by . Line j is perpendicular to line k, and
the y-intercept of line j is . Which of the following is an equation of line j ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It’s given that line j is perpendicular to line k and that line k is defined by the equation . This
equation can be rewritten in slope-intercept form, , where m represents the slope of the line and b represents
the y-coordinate of the y-intercept of the line, by subtracting x from both sides of the equation, which yields . Thus,
the slope of line k is . Since line j and line k are perpendicular, their slopes are opposite reciprocals of each other. Thus,
the slope of line j is 1. It’s given that the y-intercept of line j is . Therefore, the equation for line j in slope-intercept form
is , which can be rewritten as .
Choices A, B, and C are incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '023c0a8d',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'For the function f, if  for all values of x,
what is the value of  ?
A.
B.
C. 0
D. 2',
    'B',
    '{"type":"multiple_choice","choices":{"C":"0","D":"2"}}',
    'Choice B is correct. It’s given that  for all values of x. If , then  will equal . Dividing both sides
of  by 3 gives . Therefore, substituting 2 for x in the given equation yields , which can be
rewritten as .
Choice A is incorrect. This is the value of the constant in the given equation for f. Choice C is incorrect and may result from
substituting , rather than , into the given equation. Choice D is incorrect. This is the value of x that yields  for
the left-hand side of the given equation; it’s not the value of .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b9839f9e',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'In the equation above, F represents the total amount of money, in dollars, a food
truck charges for x drinks and y salads. The price, in dollars, of each drink is the
same, and the price, in dollars, of each salad is the same. Which of the following is
the best interpretation for the number 7.00 in this context?
A. The price, in dollars, of one drink
B. The price, in dollars, of one salad
C. The number of drinks bought during the day
D. The number of salads bought during the day',
    'B',
    '{"type":"multiple_choice","choices":{"A":"The price, in dollars, of one drink","B":"The price, in dollars, of one salad","C":"The number of drinks bought during the day","D":"The number of salads bought during the day"}}',
    'Choice B is correct. It’s given that  is equal to the total amount of money, in dollars, a food truck charges for x
drinks and y salads. Since each salad has the same price, it follows that the total charge for y salads is  dollars. When
, the value of the expression  is , or 7.00. Therefore, the price for one salad is 7.00 dollars.
Choice A is incorrect. Since each drink has the same price, it follows that the total charge for x drinks is  dollars.
Therefore, the price, in dollars, for one drink is 2.50, not 7.00. Choices C and D are incorrect. In the given equation, F
represents the total charge, in dollars, when x drinks and y salads are bought at the food truck. No information is provided
about the number of drinks or the number of salads that are bought during the day. Therefore, 7.00 doesn’t represent either
of these quantities.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0d1dca87',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'If  is the solution to the given system of
equations, what is the value of y ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 23. Since it’s given that , the value of y can be found by substituting 2 for x in the first equation
and solving for y. Substituting 2 for x yields , or . Subtracting 6 from both sides of this equation
yields .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '3f8a701b',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The equation , where a and b are constants, has no
solutions. Which of the following must be true?
I.
II.
III.
A. None
B. I only
C. I and II only
D. I and III only',
    'D',
    '{"type":"multiple_choice","choices":{"A":"None","B":"I only","C":"I and II only","D":"I and III only"}}',
    'Choice D is correct. For a linear equation in a form  to have no solutions, the x-terms must have equal
coefficients and the remaining terms must not be equal. Expanding the right-hand side of the given equation yields
. Inspecting the x-terms, 9 must equal a, so statement I must be true. Inspecting the remaining terms, 5
can’t equal . Dividing both of these quantities by 9 yields that b can’t equal . Therefore, statement III must be true.
Since b can have any value other than , statement II may or may not be true.
Choice A is incorrect. For the given equation to have no solution, both  and  must be true. Choice B is incorrect
because it must also be true that . Choice C is incorrect because when , there are many values of b that lead to
an equation having no solution. That is, b might be 5, but b isn’t required to be 5.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'daad7c32',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'An object hangs from a spring. The formula  relates the length , in
centimeters, of the spring to the weight w, in newtons, of the object. Which of the
following describes the meaning of the 2 in this context?
A. The length, in centimeters, of the spring with no weight attached
B. The weight, in newtons, of an object that will stretch the spring 30 centimeters
C. The increase in the weight, in newtons, of the object for each one-centimeter increase in the length of the spring
D. The increase in the length, in centimeters, of the spring for each one-newton increase in the weight of the object',
    'D',
    '{"type":"multiple_choice","choices":{"A":"The length, in centimeters, of the spring with no weight attached","B":"The weight, in newtons, of an object that will stretch the spring 30 centimeters","C":"The increase in the weight, in newtons, of the object for each one-centimeter increase in the length of the spring","D":"The increase in the length, in centimeters, of the spring for each one-newton increase in the weight of the object"}}',
    'Choice D is correct. The value 2 is multiplied by w, the weight of the object. When the weight is 0, the length is 30 + 2(0) = 30
centimeters. If the weight increases by w newtons, the length increases by 2w centimeters, or 2 centimeters for each one-
newton increase in weight.
Choice A is incorrect because this describes the value 30. Choice B is incorrect because 30 represents the length of the
spring before it has been stretched. Choice C is incorrect because this describes the value w.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '567ac7ab',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'One of the two equations in a linear system is . The system has no
solution. Which of the following could be the other equation in the system?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. A system of two linear equations written in standard form has no solution when the equations are
distinct and the ratio of the x-coefficient to the y-coefficient for one equation is equivalent to the ratio of the x-coefficient to
the y-coefficient for the other equation. This ratio for the given equation is 2 to 6, or 1 to 3. Only choice B is an equation that
isn’t equivalent to the given equation and whose ratio of the x-coefficient to the y-coefficient is 1 to 3.
Choice A is incorrect. Multiplying each of the terms in this equation by 2 yields an equation that is equivalent to the given
equation. This system would have infinitely many solutions. Choices C and D are incorrect. The ratio of the x-coefficient to
the y-coefficient in  (choice C) is  to 2, or  to 1. This ratio in  (choice D) is 6 to 2, or 3 to 1.
Since neither of these ratios is equivalent to that for the given equation, these systems would have exactly one solution.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '2704399f',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'Systems of two linear equations in two variables',
    'Which of the following systems of equations has the same solution as the
system of equations graphed above?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The solution to a system of equations is the coordinates of the intersection point of the graphs of the
equations in the xy-plane. Based on the graph, the solution to the given system of equations is best approximated as .
In the xy-plane, the graph of  is a horizontal line on which every y-coordinate is 0, and the graph of  is a vertical
line on which every x-coordinate is . These graphs intersect at the point . Therefore, the system of equations in
choice A has the same solution as the given system.
Choices B, C, and D are incorrect. If graphed in the xy-plane, these choices would intersect at the points , , and
, respectively, not .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '97eab129',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Area (square feet)Water (gallons)
The buildings of a shopping center are designed to allow water to drain from the roof into gutters on the sides of the
buildings. The table shows the relationship between the area , in square feet, of a roof and the amount of water , in
gallons, drained from the roof into the gutters over a certain period of time. Which equation could define ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. It''s given that the table represents the relationship between the area , in square feet, of the roof of a
shopping center and the amount of water , in gallons, drained from the roof into the gutters. Every choice represents
this relationship with an equation defining  in the form , where  is a constant rate of change. The value of
can be determined by dividing both sides of the equation by . Each of three pairs of  and  in the table yield
, since , , and . Therefore, the equation  could define .
Choice A is incorrect. For the roof with an area of  square feet, this equation would yield , or , gallons,
not the  gallons shown in the table.
Choice C is incorrect. For the roof with an area of  square feet, this equation would yield , or ,
gallons, not the  gallons shown in the table.
Choice D is incorrect. For the roof with an area of  square feet, this equation would yield , or
, gallons, not the  gallons shown in the table.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'cb58833c',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The line with the equation  is graphed in the xy‑plane. What is the
x-coordinate of the x‑intercept of the line?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 1.25. The y-coordinate of the x-intercept is 0, so 0 can be substituted for y, giving .
This simplifies to . Multiplying both sides of  by 5 gives . Dividing both sides of  by 4 gives
, which is equivalent to 1.25. Note that 1.25 and 5/4 are examples of ways to enter a correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e9ef0e6b',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A model estimates that whales from the genus Eschrichtius travel  to  miles in the ocean each day during their
migration. Based on this model, which inequality represents the estimated total number of miles, , a whale from the genus
Eschrichtius could travel in  days of its migration?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. It''s given that the model estimates that whales from the genus Eschrichtius travel  to  miles in the
ocean each day during their migration. If one of these whales travels  miles each day for  days, then the whale travels
miles total. If one of these whales travels  miles each day for  days, then the whale travels  miles total.
Therefore, the model estimates that in  days of its migration, a whale from the genus Eschrichtius could travel at least
and at most  miles total. Thus, the inequality  represents the estimated total
number of miles, , a whale from the genus Eschrichtius could travel in  days of its migration.
Choice A is incorrect and may result from conceptual errors.
Choice C is incorrect and may result from conceptual errors.
Choice D is incorrect and may result from conceptual errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '4f7981a0',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'If , what is the
value of  ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 24. Multiplying both sides of the given equation by 3 yields . Using the distributive
property to rewrite the left-hand side of this equation yields .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '1efd8202',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'Linear equations in two variables',
    'Which table gives three values of  and their corresponding values of  for the given equation?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. Each of the given choices gives three values of : , , and . Substituting  for  in the given equation
yields , or . Therefore, when , the corresponding value of  for the given equation is .
Substituting  for  in the given equation yields , or . Therefore, when , the corresponding
value of  for the given equation is . Substituting  for  in the given equation yields , or .
Therefore, when , the corresponding value of  for the given equation is . Thus, if the three values of  are , , and
, then their corresponding values of  are , , and , respectively, for the given equation.
Choice B is incorrect. This table gives three values of  and their corresponding values of  for the equation .
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '36ab4122',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Megan’s regular wage at her job is p dollars per hour for the first 8 hours of work in
a day plus 1.5 times her regular hourly wage for work in excess of 8 hours that day.
On a given day, Megan worked for 10 hours, and her total earnings for that day
were $137.50. What is Megan’s regular hourly wage?
A. $11.75
B. $12.50
C. $13.25
D. $13.75',
    '',
    '{"type":"multiple_choice","choices":{"A":"$11.75","B":"$12.50","C":"$13.25","D":"$13.75"}}',
    'Choice B is correct. Since p represents Megan’s regular pay per hour, 1.5p represents the pay per hour in excess of 8 hours.
Since Megan worked for 10 hours, she must have been paid p dollars per hour for 8 of the hours plus 1.5p dollars per hour
for the remaining 2 hours. Therefore, since Megan earned $137.50 for the 10 hours, the situation can be represented by the
equation 137.5 = 8p + 2(1.5)p. Distributing the 2 in the equation gives 137.5 = 8p + 3p, and combining like terms gives 137.5
= 11p. Dividing both sides by 11 gives p = 12.5. Therefore, Megan’s regular wage is $12.50.
Choices A and C are incorrect and may be the result of calculation errors. Choice D is incorrect and may result from finding
the average hourly wage that Megan earned for the 10 hours of work.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '74c98c82',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'An event planner is planning a party. It costs the event planner a onetime fee of  to rent the venue and  per
attendee. The event planner has a budget of . What is the greatest number of attendees possible without exceeding the
budget?',
    '16',
    '{"type":"free_response"}',
    'The correct answer is . The total cost of the party is found by adding the onetime fee of the venue to the cost per attendee
times the number of attendees. Let  be the number of attendees. The expression  thus represents the total
cost of the party. It''s given that the budget is , so this situation can be represented by the inequality
. The greatest number of attendees can be found by solving this inequality for . Subtracting  from
both sides of this inequality gives . Dividing both sides of this inequality by  results in approximately
. Since the question is stated in terms of attendees, rounding  down to the nearest whole number, , gives the
greatest number of attendees possible.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6efcc0a3',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'In the linear function ,  and . Which equation defines ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. An equation defining a linear function can be written in the form , where  and  are
constants. It’s given that . Substituting  for  and  for  in the equation  yields
, or . Substituting  for  in the equation  yields . It’s also given that
. Substituting  for  and  for  in the equation  yields , or .
Subtracting  from the left- and right-hand sides of this equation yields . Substituting  for  in the equation
yields , or .
Choice B is incorrect. Substituting  for  and  for  in this equation yields , which isn''t a true statement.
Choice C is incorrect. Substituting  for  and  for  in this equation yields , or , which isn''t a true
statement.
Choice D is incorrect. Substituting  for  in this equation yields , which isn''t a true statement.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f01ef454',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'A geologist estimates that the volume of a slab of granite is greater than  cubic feet but less than  cubic feet. The
geologist also estimates that the slab of granite weighs  pounds per cubic foot of volume. Which inequality represents
this situation, where  represents the estimated total weight, in pounds, of the slab of granite?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. It''s given that the estimated volume of the slab of granite is greater than  cubic feet but less than
cubic feet. It''s also given that the estimated weight per cubic foot of volume of that slab is  pounds. The estimated
total weight of the slab of granite, in pounds, can be calculated by multiplying the estimated volume by the estimated weight
per cubic foot. Therefore, if the estimated volume of the slab of granite is  cubic feet, its estimated total weight is
pounds, and if the estimated volume of the slab of granite is  cubic feet, its estimated total weight is
pounds. Since the estimated volume of the slab of granite is greater than  cubic feet but less than
cubic feet, the estimated total weight , in pounds, must be greater than  pounds and less than
pounds. This situation can be represented by the inequality .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e744499e',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'An elementary school teacher is ordering x workbooks and y sets of flash cards for
a math class. The teacher must order at least 20 items, but the total cost of the
order must not be over $80. If the workbooks cost $3 each and the flash cards cost
$4 per set, which of the following systems of inequalities models this situation?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The total number of workbooks and sets of flash cards ordered is represented by x + y. Since the teacher
must order at least 20 items, it must be true that x + y ≥ 20. Each workbook costs $3; therefore, 3x represents the cost, in
dollars, of x workbooks. Each set of flashcards costs $4; therefore, 4y represents the cost, in dollars, of y sets of flashcards.
It follows that the total cost for x workbooks and y sets of flashcards is 3x + 4y. Since the total cost of the order must not be
over $80, it must also be true that 3x + 4y ≤ 80. Of the choices given, these inequalities are shown only in choice A.
Choice B is incorrect. The second inequality says that the total cost must be greater, not less than or equal to $80. Choice C
incorrectly limits the cost by the minimum number of items and the number of items with the maximum cost. Choice D is
incorrect. The first inequality incorrectly says that at most 20 items must be ordered, and the second inequality says that the
total cost of the order must be at least, not at most, $80.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '5e422ff9',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the solution to the system of equations
above, what is the value of y ?
A.
B.
C. 9
D. 15',
    'D',
    '{"type":"multiple_choice","choices":{"C":"9","D":"15"}}',
    'Choice D is correct. Multiplying both sides of  by 5 results in . Multiplying both sides of  by
2 results in . Subtracting the resulting equations yields , which simplifies to
. Dividing both sides of  by  results in .
Choices A and B are incorrect and may result from incorrectly subtracting the transformed equation. Choice C is incorrect
and may result from finding the value of x instead of the value of y.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '2e1a7f66',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Figure A and figure B are both regular polygons. The sum of the perimeter of figure A and the perimeter of figure B is
inches. The equation  represents this situation, where  is the number of sides of figure A and  is the
number of sides of figure B. Which statement is the best interpretation of  in this context?
A. Each side of figure B has a length of  inches.
B. The number of sides of figure B is .
C. Each side of figure A has a length of  inches.
D. The number of sides of figure A is .',
    'A',
    '{"type":"multiple_choice","choices":{"A":"Each side of figure B has a length of  inches.","B":"The number of sides of figure B is .","C":"Each side of figure A has a length of  inches.","D":"The number of sides of figure A is ."}}',
    'Choice A is correct. It’s given that figure A and figure B (not shown) are both regular polygons and the sum of the perimeters
of the two figures is . It’s also given that  is the number of sides of figure A and  is the number of sides of figure
B, and that the equation  represents this situation. Thus,  and  represent the perimeters, in inches, of
figur e A and figure B, respectively. Since  represents the perimeter, in inches, of figure B and  is the number of sides of
figur e B, it follows that each side of figure B has a length of .
Choice B is incorrect. The number of sides of figure B is , not .
Choice C is incorrect. Since the perimeter, in inches, of figure A is represented by , each side of figure A has a length of
, not .
Choice D is incorrect. The number of sides of figure A is , not .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '029c2dc2',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'A teacher is creating an assignment worth  points. The assignment will consist of questions worth  point and questions
worth  points. Which equation represents this situation, where  represents the number of -point questions and
represents the number of -point questions?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Since  represents the number of -point questions and  represents the number of -point questions,
the assignment is worth a total of , or , points. Since the assignment is worth  points, the equation
represents this situation.
Choice A is incorrect and may result from conceptual errors.
Choice B is incorrect and may result from conceptual errors.
Choice C is incorrect and may result from conceptual errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '113b938e',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The equation above represents the speed y, in feet per second, of Sheila’s bicycle x
seconds after she applied the brakes at the end of a ride. If the equation is graphed
in the xy-plane, which of the following is the best interpretation of the x-coordinate
of the line’s x-intercept in the context of the problem?
A. The speed of Sheila’s bicycle, in feet per second, before Sheila applied the brakes
B. The number of feet per second the speed of Sheila’s bicycle decreased each second after Sheila applied the brakes
C. The number of seconds it took from the time Sheila began applying the brakes until the bicycle came to a complete stop
D. The number of feet Sheila’s bicycle traveled from the time she began applying the brakes until the bicycle came to a
complete stop',
    'C',
    '{"type":"multiple_choice","choices":{"A":"The speed of Sheila’s bicycle, in feet per second, before Sheila applied the brakes","B":"The number of feet per second the speed of Sheila’s bicycle decreased each second after Sheila applied the brakes","C":"The number of seconds it took from the time Sheila began applying the brakes until the bicycle came to a complete stop","D":"The number of feet Sheila’s bicycle traveled from the time she began applying the brakes until the bicycle came to a"}}',
    'Choice C is correct. It’s given that for each point  on the graph of the given equation, the x-coordinate represents the
number of seconds after Sheila applied the brakes, and the y-coordinate represents the speed of Sheila’s bicycle at that
moment in time. For the graph of the equation, the y-coordinate of the x-intercept is 0. Therefore, the x-coordinate of the x-
intercept of the graph of the given equation represents the number of seconds it took from the time Sheila began applying
the brakes until the bicycle came to a complete stop.
Choice A is incorrect. The speed of Sheila’s bicycle before she applied the brakes is represented by the y-coordinate of the y-
intercept of the graph of the given equation, not the x-coordinate of the x-intercept. Choice B is incorrect. The number of feet
per second the speed of Sheila’s bicycle decreased each second after Sheila applied the brakes is represented by the slope
of the graph of the given equation, not the x-coordinate of the x-intercept. Choice D is incorrect and may result from
misinterpreting x as the distance, in feet, traveled after applying the brakes, rather than the time, in seconds, after applying
the brakes.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '2869fe95',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'For a -week period in a town in Illinois, the lowest recorded temperature was  degrees Fahrenheit  and the highest
recorded temperature was . Which inequality is true for any recorded temperature , in , in this town for this -week
period?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. It''s given that for a -week period in a town in Illinois, the lowest recorded temperature was  and
the highest recorded temperature was . It follows that the inequality  is true for any recorded temperature
, in , in this town for this -week period.
Choice A is incorrect and may result from conceptual errors.
Choice B is incorrect and may result from conceptual errors.
Choice D is incorrect and may result from conceptual errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'fb5e7f59',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the given system of equations,  is a constant. In the xy-plane, the graphs of these equations intersect at the point
, where  is a constant. What is the value of ?',
    '11',
    '{"type":"free_response"}',
    'The correct answer is . It’s given that the graphs of the equations in the given system intersect at the point , where
is a constant. Therefore, the coordinates of this point must satisfy both equations. Substituting the point  into the
first equation, , yields . Adding  to both sides of this equation yields
, which is equivalent to . Substituting the point  into the second equation yields
. Substituting  in place of  in the equation  yields
. Applying the distributive property to the left-hand side of this equation yields
. Combining like terms on the left-hand side of this equation yields . Subtracting
from both sides of this equation yields . Dividing both sides of this equation by  yields .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'c4ea43ef',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'Linear equations in two variables',
    'To earn money for college, Avery works two part-time jobs: A and B. She earns $10
per hour working at job A and $20 per hour working at job B. In one week, Avery
earned a total of s dollars for working at the two part-time jobs. The graph above
represents all possible combinations of numbers of hours Avery could have
worked at the two jobs to earn s dollars. What is the value of s ?
A. 128
B. 160
C. 200
D. 320',
    'B',
    '{"type":"multiple_choice","choices":{"A":"128","B":"160","C":"200","D":"320"}}',
    'Choice B is correct. Avery earns $10 per hour working at job A. Therefore, if she works a hours at job A, she will earn
dollars. Avery earns $20 per hour working at job B. Therefore, if she works b hours at job B, she will earn  dollars. The
graph shown represents all possible combinations of the number of hours Avery could have worked at the two jobs to earn s
dollars. Therefore, if she worked a hours at job A, worked b hours at job B, and earned s dollars from both jobs, the following
equation represents the graph: , where s is a constant. Identifying any point  from the graph and
substituting the values of the coordinates for a and b, respectively, in this equation yield the value of s. For example, the point
, where  and , lies on the graph. Substituting 16 for a and 0 for b in the equation  yields
, or . Similarly, the point , where  and , lies on the graph. Substituting 0 for a and
8 for b in the equation  yields , or .
Choices A, C, and D are incorrect. If the value of s is 128, 200, or 320, then no points  on the graph will satisfy this
equation. For example, if the value of s is 128 (choice A), then the equation  becomes .
The point , where  and , lies on the graph. However, substituting 16 for a and 0 for b in
yields , or , which is false. Therefore,  doesn’t satisfy the equation, and so the value
of s can’t be 128. Similarly, if  (choice C) or  (choice D), then substituting 16 for a and 0 for b yields
and , respectively, which are both false.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '830120b0',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following consists of the y-coordinates of all the points that
satisfy the system of inequalities above?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Subtracting the same number from each side of an inequality gives an equivalent inequality. Hence,
subtracting 1 from each side of the inequality  gives . So the given system of inequalities is equivalent to
the system of inequalities  and , which can be rewritten as . Using the transitive property
of inequalities, it follows that .
Choice A is incorrect because there are points with a y-coordinate less than 6 that satisfy the given system of inequalities.
For example,  satisfies both inequalities. Choice C is incorrect. This may result from solving the inequality  for
x, then replacing x with y. Choice D is incorrect because this inequality allows y-values that are not the y-coordinate of any
point that satisfies both inequalities. For example,  is contained in the set ; however, if 2 is substituted into the
first inequality for y, the result is . This cannot be true because the second inequality gives .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b8e73b5b',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Ken is working this summer as part of a crew on a farm. He earned $8 per hour for
the first 10 hours he worked this week. Because of his performance, his crew
leader raised his salary to $10 per hour for the rest of the week. Ken saves 90% of
his earnings from each week. What is the least number of hours he must work the
rest of the week to save at least $270 for the week?
A. 38
B. 33
C. 22
D. 16',
    'C',
    '{"type":"multiple_choice","choices":{"A":"38","B":"33","C":"22","D":"16"}}',
    'Choice C is correct. Ken earned $8 per hour for the first 10 hours he worked, so he earned a total of $80 for the first 10 hours
he worked. For the rest of the week, Ken was paid at the rate of $10 per hour. Let x be the number of hours he will work for
the rest of the week. The total of Ken’s earnings, in dollars, for the week will be . He saves 90% of his earnings each
week, so this week he will save  dollars. The inequality  represents the condition that he
will save at least $270 for the week. Factoring 10 out of the expression  gives . The product of 10 and 0.9
is 9, so the inequality can be rewritten as . Dividing both sides of this inequality by 9 yields , so
. Therefore, the least number of hours Ken must work the rest of the week to save at least $270 for the week is 22.
Choices A and B are incorrect because Ken can save $270 by working fewer hours than 38 or 33 for the rest of the week.
Choice D is incorrect. If Ken worked 16 hours for the rest of the week, his total earnings for the week will be
, which is less than $270. Since he saves only 90% of his earnings each week, he would save even
less than $240 for the week.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '68c5c81a',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Anthony will spend at most  to purchase  small cheese pizzas and  large cheese pizzas for a team dinner. The given
inequality represents this situation. Which of the following is the best interpretation of  in this context?
A. The amount, in dollars, Anthony will spend on each large cheese pizza
B. The amount, in dollars, Anthony will spend on each small cheese pizza
C. The total amount, in dollars, Anthony will spend on large cheese pizzas
D. The total amount, in dollars, Anthony will spend on small cheese pizzas',
    'C',
    '{"type":"multiple_choice","choices":{"A":"The amount, in dollars, Anthony will spend on each large cheese pizza","B":"The amount, in dollars, Anthony will spend on each small cheese pizza","C":"The total amount, in dollars, Anthony will spend on large cheese pizzas","D":"The total amount, in dollars, Anthony will spend on small cheese pizzas"}}',
    'Choice C is correct. It''s given that Anthony will spend at most  to purchase  small cheese pizzas and  large cheese
pizzas. In the inequality ,  represents the number of large cheese pizzas that Anthony will purchase.
This means the coefficient  represents the amount, in dollars, Anthony will spend on each large cheese pizza.
Therefore, the best interpretation of  in this context is the total amount, in dollars, Anthony will spend on large
cheese pizzas.
Choice A is incorrect. This is the best interpretation of , not .
Choice B is incorrect. This is the best interpretation of , not .
Choice D is incorrect. This is the best interpretation of , not .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b2fe7ab6',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'For the linear function , the table shows four values of  and their corresponding values of . The function can be
written as , where  and  are constants. What is the value of ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It''s given that for the linear function , the table shows four values of  and their corresponding values of
. It''s also given that the function can be written as , where  and  are constants. The table shows that
when the value of  is , the corresponding value of  is . Substituting  for  and  for  in
yields  or, . Subtracting  from both sides of this equation yields. The table also
shows that when the value of  is , the corresponding value of  is . Substituting  for  and  for  in
yields , or . Substituting  for  in this equation yields
. Applying the distributive property to the right-hand side of this equation yields ,
or . Subtracting  from both sides of this equation yields . Dividing both sides of this equation
by  yields .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e77a76ce',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following systems of linear equations has no solution?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. A system of two linear equations in two variables,  and , has no solution if the graphs of the lines
represented by the equations in the xy-plane are distinct and parallel. The graphs of two lines in the xy-plane represented by
equations in slope-intercept form, , where  and  are constants, are parallel if their slopes, , are the same
and are distinct if their y-coordinates of the y-intercepts, , are different. In the equations  and , the
values of  are each , and the values of  are  and , respectively. Since the slopes of these lines are the same and the y-
coordinates of the y-intercepts are different, it follows that the system of linear equations in choice A has no solution.
Choice B is incorrect. The two lines represented by these equations are a horizontal line and a line with a slope of  that
have the same y-coordinate of the y-intercept. Therefore, this system has a solution, , rather than no solution.
Choice C is incorrect. The two lines represented by these equations have different slopes and the same y-coordinate of the y-
intercept. Therefore, this system has a solution, , rather than no solution.
Choice D is incorrect. The two lines represented by these equations are a vertical line and a horizontal line. Therefore, this
system has a solution, , rather than no solution.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '9ff10b3b',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'If , what is
the value of x ?
A.
B.
C. 3
D. 6',
    'C',
    '{"type":"multiple_choice","choices":{"C":"3","D":"6"}}',
    'Choice C is correct. To make it easier to add like terms on the left-hand side of the given equation, both sides of the equation
can be multiplied by 6, which is the lowest common denominator of  and . This yields , which can be
rewritten as . Dividing both sides of this equation by 2 yields .
Choice A is incorrect and may result from subtracting the denominators instead of numerators with common denominators
to get , rather than , on the left-hand side of the equation. Choice B is incorrect and may result from rewriting the
given equation as  instead of . Choice D is incorrect and may result from conceptual or computational
errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '78391fcc',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'Linear functions',
    'x
f(x)21181512
The table above shows some values of x and their corresponding values  for
the linear function f. What is the x-intercept of the graph of  in the xy-
plane?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The equation of a linear function can be written in the form , where , m is the slope
of the graph of , and b is the y-coordinate of the y-intercept of the graph. The value of m can be found using the
slope formula, . According to the table, the points  and  lie on the graph of .
Using these two points in the slope formula yields, or . Substituting  for m in the slope-intercept form
of the equation yields . The value of b can be found by substituting values from the table and solving; for
example, substituting the coordinates of the point  into the equation  gives ,
which yields . This means the function given by the table can be represented by the equation . The
value of the x-intercept of the graph of  can be determined by finding the value of x when . Substituting
into  yields , or . This corresponds to the point .
Choice A is incorrect and may result from substituting the value of the slope for the x-coordinate of the x-intercept. Choice C
is incorrect and may result from a calculation error. Choice D is incorrect and may result from substituting the y-coordinate
of the y-intercept for the x-coordinate of the x-intercept.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'c39dbbdf',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Line  is defined by the equation . Line  is parallel to line  in the xy-plane. What is the slope of line ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. It''s given that line  is parallel to line  in the xy-plane. This means that the slope of line  is equal to the
slope of line . Line  is defined by the equation . This equation can be written in slope-intercept form
, where  represents the slope of the line and  represents the y-coordinate of the y-intercept of the line.
Subtracting  from both sides of the equation  yields . Dividing both sides of this equation
by  yields . Therefore, the slope of line  is . Since parallel lines have equal slopes, the slope of line  is
also .
Choice A is incorrect. This is the reciprocal of the slope of line , not the slope of line .
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '1e11190a',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Store A sells raspberries for  per pint and blackberries for  per pint. Store B sells raspberries for  per pint
and blackberries for  per pint. A certain purchase of raspberries and blackberries would cost  at Store A or
at Store B. How many pints of blackberries are in this purchase?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice C is correct. It’s given that store A sells raspberries for  per pint and blackberries for  per pint, and a
certain purchase of raspberries and blackberries at store A would cost . It’s also given that store B sells raspberries
for  per pint and blackberries for  per pint, and this purchase of raspberries and blackberries at store B would
cost . Let  represent the number of pints of raspberries and  represent the number of pints of blackberries in this
purchase. The equation  represents this purchase of raspberries and blackberries from store A
and the equation  represents this purchase of raspberries and blackberries from store B. Solving
the system of equations by elimination gives the value of  and the value of  that make the system of equations true.
Multiplying both sides of the equation for store A by  yields , or
. Multiplying both sides of the equation for store B by  yields
, or . Subtracting both sides of the equation for
store A, , from the corresponding sides of the equation for store B, , yields
, or . Dividing both sides of this equationby
yields . Thus,  pints of blackberries are in
this purchase.
Choices A and B are incorrect and may result from conceptual or calculation errors. Choice D is incorrect. This is the number
of pints of raspberries, not blackberries, in the purchase.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '1e0a46e4',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Which system of linear equations has no solution?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. A system of linear equations can be solved by the elimination method. Multiplying the equation
by  yields . Adding this equation to the equation  yields , which has
no solution. It follows that the system of linear equations consisting of  and  has no solution.
Choice A is incorrect. This system of linear equations has infinitely many solutions, rather than no solution.
Choice B is incorrect. This system of linear equations has one solution, rather than no solution.
Choice C is incorrect. This system of linear equations has infinitely
many solutions, rather than no solution.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '4fb8adf7',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'What is the solution  to the given system of equations?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The second equation in the given system is . Substituting  for  in the first equation in the given
system yields , or . Subtracting  from both sides of this equation yields .
Dividing both sides of this equation by  yields . Therefore, the solution  to the given system of equations is
.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '2d54c272',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'At a school fair, students can win colored tokens that are worth a different number of points depending on the color. One
student won  green tokens and  red tokens worth a total of  points. The given equation represents this situation. How
many more points is a red token worth than a green token?',
    '40',
    '{"type":"free_response"}',
    'The correct answer is . It''s given that , where  is the number of green tokens and  is the number of
red tokens won by one student and these tokens are worth a total of  points. Since the equation represents the situation
where the student won points with green tokens and red tokens for a total of  points, each term on the left-hand side of
the equation represents the number of points won for one of the colors. Since the coefficient of  in the given equation is ,
a green token must be worth  points. Similarly, since the coefficient of  in the given equation is , a red token must be
worth  points. Therefore, a red token is worth  points, or  points, more than a green token.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '4f8bd093',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'What value of  is the solution to the equation ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Subtracting  from both sides of the given equation yields . Dividing both sides of this
equation by  yields . Therefore, the solution to the given equation is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'de6fe450',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'On January 1, 2015, a city’s minimum hourly wage was $9.25. It will increase by
$0.50 on the first day of the year for the next 5 years. Which of the following
functions best models the minimum hourly wage, in dollars, x years after January
1, 2015, where  ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. It’s given that the city’s minimum hourly wage will increase by $0.50 on the first day of the year for the 5
years after January 1, 2015. Therefore, the total increase, in dollars, in the minimum hourly wage x years after January 1,
2015, is represented by . Since the minimum hourly wage on January 1, 2015, was $9.25, it follows that the minimum
hourly wage, in dollars, x years after January 1, 2015, is represented by . Therefore, the function
best models this situation.
Choices A, B, and D are incorrect. In choice A, the function models a situation where the minimum hourly wage is $9.25 on
January 1, 2015, but decreases by $0.50 on the first day of the year for the next 5 years. The functions in choices B and D
both model a situation where the minimum hourly wage is increasing by $9.25 on the first day of the year for the 5 years
after January 1, 2015.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e2e3942f',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the system of equations above, a is a constant. If the system of equations
has no solution, what is the value of a ?
A.
B. 0
C. 1
D. 2',
    'D',
    '{"type":"multiple_choice","choices":{"B":"0","C":"1","D":"2"}}',
    'Choice D is correct. A system of two linear equations has no solution when the graphs of the equations have the same slope
and different y-coordinates of the y-intercepts. Each of the given equations is written in the slope-intercept form of a linear
equation, , where m is the slope and b is the y-coordinate of the y-intercept of the graph of the equation. For
these two linear equations, the y-coordinates of the y-intercepts are different:  and . Thus, if the system of equations
has no solution, the slopes of the two linear equations must be the same. The slope of the first linear equation is 2.
Therefore, for the system of equations to have no solution, the value of a must be 2.
Choices A, B, and C are incorrect and may result from conceptual and computational errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'cd33b015',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'If  is the solution to the given system of
equations, what is the value of y ?
A. 10
B. 15
C. 60
D. 65',
    'B',
    '{"type":"multiple_choice","choices":{"A":"10","B":"15","C":"60","D":"65"}}',
    'Choice B is correct. Substituting 20 for  in the second equation in the system yields , or .
Subtracting 40 from both sides of this equation yields . Dividing both sides of this equation by 3 yields .
Choice A is incorrect. If , then  since . However, substituting 10 for both x and y in the second
equation yields , which is a false statement. Choice C is incorrect. If , then  since .
However, substituting these values for x and y in the second equation yields , which is a false statement. Choice D
is incorrect. If , then  since . However, substituting these values for x and y in the second
equation yields , which is a false statement.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '042aa429',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If  and , what is the value of ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. The value of  can be found by substituting  for  in the given equation , which yields
, or . The value of  can be found by substituting  for  in the given equation , which
yields , or . The value of the expression  can be found by substituting the
corresponding values into the expression, which gives . This expression is equivalent to , or .
Choice A is incorrect. This is the value of , not .
Choice B is incorrect and may result from calculating  as , rather than
.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b2de69bd',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'Linear equations in two variables',
    'xy
15
27
39
411
The table above shows some pairs of x values and y values. Which of the following
equations could represent the relationship between x and y ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. Each of the choices is a linear equation in the form y = mx + b, where m and b are constants. In this
equation, m represents the change in y for each increase in x by 1. From the table, it can be determined that the value of y
increases by 2 for each increase in x by 1. In other words, for the  pairs of x and y in the given table, m = 2. The value of b can
be found by substituting the values of x and y from any row of the table and substituting the value of m into the equation y =
mx + b and then solving for b. For example, using x = 1, y = 5, and m = 2 yields 5 = 2(1) + b. Solving for b yields b = 3.
Therefore, the equation y = 2x + 3 could represent the relationship between x and y in the given table.
Alternatively, if an equation represents the relationship between x and y, then when each pair of x and y from the table is
substituted into the equation, the result will be a true statement. Of the equations given, the equation y = 2x + 3 in choice A is
the only equation that results in a true statement when each of the pairs of x and y are substituted into the equation.
Choices B, C, and D are incorrect because when at least one pair of x and y from the table is substituted into the equations
given in these choices, the result is a false statement. For example, when the pair x = 4 and y = 11 is substituted into the
equation in choice B, the result is 11 = 3(4) – 2, or 11 = 10, which is false.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '76f29fa5',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The cost to rent a commercial fishing boat from a certain company is  for the first  hours and an additional  per
hour for each hour after the first  hours. If the total cost to rent the commercial fishing boat from the company for  hours,
where , is , which equation represents this situation?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. It’s given that the cost to rent a commercial fishing boat is  for the first  hours and an additional
per hour for each hour after the first  hours. It’s also given that  represents the total number of hours and .
Therefore, the number of additional hours after the first  hours can be represented with the expression . The cost for
these additional hours is  per hour, so the cost for the additional hours can be represented by the expression .
The total cost can be calculated by adding the cost for the first  hours to the cost for the additional hours and can be
represented by the expression . It’s also given that the total cost to rent the commercial fishing boat from
the company for  hours is . Thus, the equation that represents this situation is .
Choice A is incorrect and may result from conceptual errors.
Choice B is incorrect and may result from conceptual errors.
Choice D is incorrect and may result from conceptual errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '963da34c',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'A shipping service restricts the dimensions of the boxes it will ship for a certain
type of service. The restriction states that for boxes shaped like rectangular
prisms, the sum of the perimeter of the base of the box and the height of the box
cannot exceed 130 inches. The perimeter of the base is determined using the
width and length of the box. If a box has a height of 60 inches and its length is
2.5 times the width, which inequality shows the allowable width x, in inches, of the
box?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. If x is the width, in inches, of the box, then the length of the box is 2.5x inches. It follows that the
perimeter of the base is , or 7x inches. The height of the box is given to be 60 inches. According to the
restriction, the sum of the perimeter of the base and the height of the box should not exceed 130 inches. Algebraically, this
can be represented by , or . Dividing both sides of the inequality by 7 gives . Since x represents
the width of the box, x must also be a positive number. Therefore, the inequality  represents all the allowable
values of x that satisfy the given conditions.
Choices B, C, and D are incorrect and may result from calculation errors or misreading the given information.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6d8ad460',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Line  is shown in the xy-plane. Line  (not shown) is perpendicular to line . What is the slope of line ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . It’s given that line  is perpendicular to line  in the xy-plane. This means that the slope of line  is
the opposite reciprocal of the slope of line . For a line that passes through the points  and  in the xy-plane,
the slope of the line can be calculated as . It''s shown that line  passes through the points  and  in the
xy-plane. Substituting  for ,  for ,  for , and  for  in  yields , or . The opposite reciprocal of
is . Therefore, the slope of line  is . Note that 6/5 and 1.2 are examples of ways to enter a correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0366d965',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'xy
37
k11
12n
The table above shows the coordinates of three points on a line in the xy-plane,
where k and n are constants. If the slope of the line is 2, what is the value of
?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 30. The slope of a line can be found by using the slope formula, . It’s given that the slope of
the line is 2; therefore, . According to the table, the points  and  lie on the line. Substituting the
coordinates of these points into the equation gives . Multiplying both sides of this equation by  gives
, or . Solving for k gives . According to the table, the points  and  also lie
on the line. Substituting the coordinates of these points into  gives . Solving for n gives .
Therefore, , or 30.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '7a987ae4',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'If , what is the
value of  ?
A. 24
B. 49
C. 50
D. 99',
    'B',
    '{"type":"multiple_choice","choices":{"A":"24","B":"49","C":"50","D":"99"}}',
    'Choice B is correct. Multiplying both sides of the given equation by 5 yields . Substituting 50 for  in the
expression  yields .
Alternate approach: Dividing both sides of  by 2 yields . Evaluating the expression  for  yields
.
Choice A is incorrect and may result from finding the value of  instead of . Choice C is incorrect and may result
from finding the value of  instead of . Choice D is incorrect and may result from finding the value of  instead
of .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '84d0d07e',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'A clothing store is having a sale on shirts and pants. During the sale, the cost of
each shirt is $15 and the cost of each pair of pants is $25. Geoff can spend at
most $120 at the store. If Geoff buys s shirts and p pairs of pants, which of the
following must be true?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. Since the cost of each shirt is $15 and Geoff buys s shirts, the expression  represents the amount
Geoff spends on shirts. Since the cost of each pair of pants is $25 and Geoff buys p pairs of pants, the expression
represents the amount Geoff spends on pants. Therefore, the sum  represents the total amount Geoff spends at
the store. Since Geoff can spend at most $120 at the store, the total amount he spends must be less than or equal to 120.
Thus, .
Choice B is incorrect. This represents the situation in which Geoff spends at least, rather than at most, $120 at the store.
Choice C is incorrect and may result from reversing the cost of a shirt and that of a pair of paints. Choice D is incorrect and
may result from both reversing the cost of a shirt and that of a pair of pants and from representing a situation in which Geoff
spends at least, rather than at most, $120 at the store.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6daf8d70',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'Linear inequalities in one or two variables',
    'A city employee will plant two types of bushes, azaleas and boxwoods, in a park. There will be no more than  total
bushes planted, and the number of azaleas planted will be at most three times the number of boxwoods planted. Which of
the following systems of inequalities best represents this situation, where  is the number of azaleas that will be planted,
and  is the number of boxwoods that will be planted?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It’s given that a city employee will plant azaleas and boxwoods in a park, where  is the number of
azaleas that will be planted and  is the number of boxwoods that will be planted. It’s also given that there will be no more
than  total bushes planted, which can be represented by the inequality . It’s also given that the number of
azaleas planted will be at most three times the number of boxwoods planted, which can be represented by the inequality
. Therefore, the system of inequalities containing  and  best represents this situation.
Choice A is incorrect. The inequality  represents a situation where at least  total bushes will be planted, not
that there will be no more than  total bushes planted. Also, the inequality  represents a situation where the
number of boxwoods that will be planted is at most three times the number of azaleas that will be planted, not that the
number of azaleas planted will be at most three times the number of boxwoods planted.
Choice B is incorrect. The inequality  represents a situation where at least  total bushes will be planted, not
that there will be no more than  total bushes planted.
Choice C is incorrect. The inequality  represents a situation where the number of boxwoods that will be planted is at
most three times the number of azaleas that will be planted, not that the number of azaleas planted will be at most three
times the number of boxwoods planted.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '00b9bd37',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'Linear equations in two variables',
    '20406080100
x
10
20
30
40
50
y
O
Number of T-shirts
Number of sweatshirts
The graph models the relationship between the number of T-shirts, , and the number of sweatshirts, , that Kira can
purchase for a school fundraiser. Which equation could represent this relationship?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. A line in the xy-plane can be written as , where  is the slope of the line and  is the y-
coordinate of the y-intercept. The graph shown is a line passing through the points  and . Substituting  for
and  for  in the equation  yields , or . Substituting  for ,  for , and  for  in
the equation  yields . Subtracting  from both sides of this equation yields .
Dividing both sides of this equation by  yields , or . Substituting  for  and  for  in the
equation  yields . Multiplying both sides of this equation by  yields ,
or . Adding  to both sides of this equation yields . Therefore, the equation
represents the relationship between  and  modeled by the graph.
Choice A is incorrect. The point  is not on the graph of this equation, since , not .
Choice C is incorrect. The point  is not on the graph of this equation, since , not .
Choice D is incorrect. The point  is not on the graph of this equation, since , not .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '948087f2',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following ordered pairs (x, y) satisfies the
system of inequalities above?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Any point (x, y) that is a solution to the given system of inequalities must satisfy both inequalities in the
system. The second inequality in the system can be rewritten as . Of the given answer choices, only choice D
satisfies this inequality, because inequality  is a true statement. The point  also satisfies the first
inequality.
Alternate approach: Substituting  into the first inequality gives , or , which is a true statement.
Substituting  into the second inequality gives , or , which is a true statement. Therefore, since
satisfies both inequalities, it is a solution to the system.
Choice A is incorrect because substituting −2 for x and −1 for y in the first inequality gives , or ,
which is false. Choice B is incorrect because substituting −1 for x and 3 for y in the first inequality gives , or
, which is false. Choice C is incorrect because substituting 1 for x and 5 for y in the first inequality gives ,
or , which is false.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a8e6bd75',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which of the following is the graph of the equation
in the xy-plane?
A.
B.
C.
D.
Assessment
SAT
Test
Math
Domain
Algebra
Skill
Linear functions
Difficulty',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. In the xy-plane, the graph of the equation , where m and b are constants, is a line with slope
m and y-intercept . Therefore, the graph of  in the xy-plane is a line with slope 2 and a y-intercept .
Having a slope of 2 means that for each increase in x by 1, the value of y increases by 2. Only the graph in choice D has a
slope of 2 and crosses the y-axis at . Therefore, the graph shown in choice D must be the correct answer.
Choices A, B, and C are incorrect. The graph of  in the xy-plane is a line with slope 2 and a y-intercept at .
The graph in choice A crosses the y-axis at the point , not , and it has a slope of , not 2. The graph in
choice B crosses the y-axis at ; however, the slope of this line is , not 2. The graph in choice C has a slope of 2;
however, the graph crosses the y-axis at , not .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '1993561d',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'For the linear function , the graph of  in the xy-plane has a slope of  and passes through the point . Which
equation defines ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. An equation that defines a linear function  can be written in the form , where  is the
slope of the graph of  in the xy-plane and  is the y-intercept of the graph. It’s given that for the linear function
, the graph of  in the xy-plane has a slope of . Therefore, . It’s also given that the graph of
passes through the point . Therefore, the y-intercept of the graph is , and it follows that . Substituting  for
and  for  in the equation  yields .
Choice B is incorrect. This equation defines a function whose graph has a y-intercept of , not .
Choice C is incorrect. This equation defines a function whose graph has a y-intercept of , not .
Choice D is incorrect. This equation defines a function whose graph has a y-intercept of , not .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '4b76c7f1',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'In the given system of equations, a is a constant. If the system has infinitely
many solutions, what is the value of a ?
A. 4
B. 9
C. 36
D. 54',
    'C',
    '{"type":"multiple_choice","choices":{"A":"4","B":"9","C":"36","D":"54"}}',
    'Choice C is correct. A system of two linear equations has infinitely many solutions if one equation is equivalent to the other.
This means that when the two equations are written in the same form, each coefficient or constant in one equation is equal
to the corresponding coefficient or constant in the other equation multiplied by the same number. The equations in the given
system of equations are written in the same form, with x and y on the left-hand side of the equation and a constant on the
right-hand side of the equation. The coefficients of x and y in the second equation are equal to the coefficients of x and y,
respectively, in the first equation multiplied by 4:  and . Therefore, the constant in the second equation
must be equal to 4 times the constant in the first equation: , or .
Choices A, B, and D are incorrect. When , , or , the given system of equations has no solution.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '8c515062',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A candle is made of  ounces of wax. When the candle is burning, the amount of wax in the candle decreases by  ounce
every  hours. If  ounces of wax remain in this candle, for how many hours has it been burning?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It’s given that the candle starts with  ounces of wax and has  ounces of wax remaining after a period
of time has passed. The amount of wax the candle has lost during the time period can be found by subtracting the remaining
amount of wax from the amount of wax the candle was made of, which yields  ounces, or  ounces. This means the
candle loses  ounces of wax during that period of time. It’s given that the amount of wax decreases by  ounce every
hours. If  represents the number of hours the candle has been burning, it follows that . Multiplying both sides of
this equation by  yields . Therefore, the candle has been burning for  hours.
Choice A is incorrect and may result from using the equation  rather than  to represent the situation, and
then rounding to the nearest whole number.
Choice B is incorrect. This is the amount of wax, in ounces, remaining in the candle, not the number of hours it has been
burning.
Choice C is incorrect and may result from using the equation  rather than  to represent the situation.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a9c04a21',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'What is the solution to the
equation ?
A. 1
B. 1.5
C. 2
D. 4',
    'C',
    '{"type":"multiple_choice","choices":{"A":"1","B":"1.5","C":"2","D":"4"}}',
    'Choice C is correct. Subtracting 3 from both sides of the given equation yields . Dividing both sides by 2 results in
.
Choices A and B are incorrect and may result from computational errors. Choice D is incorrect. This is the value of .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a73a5c22',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The function  is defined by . What is the value of  when ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The value of  when  can be found by substituting  for  in the given equation
. This yields , or . Therefore, when , the value of  is .
Choice A is incorrect. This is the value of  when , rather than the value of  when .
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '8a1544f1',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'What is the equation of the line shown
in the xy-plane above?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Any line in the xy-plane can be defined by an equation in the form y = mx + b, where m is the slope of the
line and b is the y-coordinate of the y-intercept of the line. From the graph, the y-intercept of the line is (0, 3). Therefore, b = 3.
The slope of the line is the change in the value of y divided by the change in the value of x for any two points on the line. The
line shown passes through (0, 3) and (1, 0), so , or m = –3. Therefore, the equation of the line is y = –3x + 3.
Choices A and C are incorrect because the equations given in these choices represent a line with a positive slope. However,
the line shown has a negative slope. Choice D is incorrect because the equation given in this choice represents a line with
slope of . However, the line shown has a slope of  –3.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '8b2a2a63',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The y-intercept of the graph of  in the xy-plane is . What is the value of ?',
    '-32',
    '{"type":"free_response"}',
    'The correct answer is . It’s given that the y-intercept of the graph of  is . Substituting  for  in this
equation yields , or . Therefore, the value of  that corresponds to the y-intercept of the graph of
in the xy-plane is .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '41fdc0b8',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The table above shows the population of Greenleaf, Idaho, for the years 2000 and 2010. If the relationship between
population and year is linear, which of the following functions P models the population of Greenleaf t years after 2000?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It is given that the relationship between population and year is linear; therefore, the function that models
the population t years after 2000 is of the form , where m is the slope and b is the population when . In
the year 2000, . Therefore, . The slope is given by .
Therefore, , which is equivalent to the equation in choice A.
Choice B is incorrect and may be the result of incorrectly calculating the slope as just the change in the value of P. Choice C
is incorrect and may be the result of the same error as in choice B, in addition to incorrectly using t to represent the year,
instead of the number of years after 2000. Choice D is incorrect and may be the result of incorrectly using t to represent the
year instead of the number of years after 2000.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '44d65912',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Angela is playing a video game. In this game, players can score points only by collecting coins and stars. Each coin is
worth c points, and each star is worth s points.
The first time she played, Angela scored 700 points. She collected 20 coins and 10 stars.
The second time she played, Angela scored 850 points. She collected 25 coins and 12 stars.
Which system of equations can be used to correctly determine the values of c and
s ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The number of coins collected can be multiplied by c to give the score from the points earned from
coins. Similarly, the number of stars collected can be multiplied by s to give the score from the points earned from the stars.
Therefore, the total score each time Angela played is , and the total score the second time she played is
.
Choices A, C, and D are incorrect and may result from misidentifying the terms of the equation. Choice A switches coins and
stars, choice C switches stars and points, and choice D misidentifies coins, stars, and points.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '65833256',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'What is the solution  to the given system of equations?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The given system of linear equations can be solved by the substitution method. The first equation in the
given system of equations defines  as . Substituting  for  in the second equation of the given system of
equations yields . Applying the distributive property on the left-hand side of this equation yields
, or . Adding  to both sides of this equation yields . Dividing both
sides of this equation by  yields . Substituting  for  in the first equation of the given system of equations,
, yields , or . Therefore, the solution  to the given system of equations is
.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a4d6fbec',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'If , what is the value of  when ?',
    '50',
    '{"type":"free_response"}',
    'The correct answer is . Substituting  for  in the given equation yields , or . Therefore, the value of
is  when .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'bbf9e5ce',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'For groups of  or more people, a museum charges  per person for the first  people and  for each additional
person. Which function  gives the total charge, in dollars, for a tour group with  people, where ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. A tour group with  people, where , can be split into two subgroups: the first  people and the
additional  people. Since the museum charges  per person for the first  people and  for each additional
person, the charge for the first  people is  and the charge for the additional  people is .
Therefore, the total charge, in dollars, is given by the function , or .
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '8643d906',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The population of snow leopards in a certain area can be modeled by the function
P defined above, where  is the population t years after 1990. Of the following,
which is the best interpretation of the equation  ?
A. The snow leopard population in this area is predicted to be 30 in the year 2020.
B. The snow leopard population in this area is predicted to be 30 in the year 2030.
C. The snow leopard population in this area is predicted to be 550 in the year 2020.
D. The snow leopard population in this area is predicted to be 550 in the year 2030.',
    'C',
    '{"type":"multiple_choice","choices":{"A":"The snow leopard population in this area is predicted to be 30 in the year 2020.","B":"The snow leopard population in this area is predicted to be 30 in the year 2030.","C":"The snow leopard population in this area is predicted to be 550 in the year 2020.","D":"The snow leopard population in this area is predicted to be 550 in the year 2030."}}',
    'Choice C is correct. It’s given that  represents the population of snow leopards t years after 1990.
corresponds to  and . It follows that  corresponds to 30 years after 1990, or 2020. Thus, the best
interpretation of  is that the snow leopard population in this area is predicted to be 550 in the year 2020.
Choices A and B are incorrect and may result from reversing the interpretations of t and . Choice D is incorrect and may
result from determining that 30 years after 1990 is 2030, not 2020.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '8a6de407',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The function f is defined by , where m and b are constants. If
and , what is the value of m ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 2. The slope-intercept form of an equation for a line is , where m is the slope and b is the
y-coordinate of the y-intercept. Two ordered pairs,  and , can be used to compute the slope using the formula
. It’s given that  and ; therefore, the two ordered pairs for this line are  and .
Substituting these values for  and  gives , or 2.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '17f176ec',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'A movie theater charges $11 for each full-price ticket and $8.25 for each reduced-
price ticket. For one movie showing, the theater sold a total of 214 full-price and
reduced-price tickets for $2,145. Which of the following systems of equations
could be used to determine the number of full-price tickets, f, and the number of
reduced-price tickets, r, sold?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The movie theater sells f full-price tickets and r reduced-price tickets, so the total number of tickets sold
is f + r. Since the movie theater sold a total of 214 full-price and reduced-price tickets for one movie showing, it follows that f
+ r = 214. The movie theater charges $11 for each full-price ticket; thus, the sales for full-price tickets, in dollars, is given by
11f. The movie theater charges $8.25 for each reduced-price ticket; thus, the sales for reduced-price tickets, in dollars, is
given by 8.25r. Therefore, the total sales, in dollars, for the movie showing is given by 11f + 8.25r. Since the total sales for all
full-price and reduced-price tickets is $2,145, it follows that 11f + 8.25r = 2,145.
Choice A is incorrect. This system of equations suggests that the movie theater sold a total of 2,145 full-price and reduced-
price tickets for a total of $214. Choice C is incorrect. This system suggests that the movie theater charges $8.25 for each
full-price ticket and $11 for each reduced-price ticket. Choice D is incorrect. This system suggests that the movie theater
charges $8.25 for each full-price ticket and $11 for each reduced-price ticket and sold a total of 2,145 tickets for a total of
$214.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0bd33265',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The equation  gives the corresponding temperature , in degrees Fahrenheit, of any substance that
has a temperature of  kelvins, where . If a substance has a temperature of  degrees Fahrenheit, what is the
corresponding temperature, in kelvins, of this substance?',
    '515',
    '{"type":"free_response"}',
    'The correct answer is . It’s given that the equation  gives the corresponding temperature , in
degrees Fahrenheit, of any substance that has a temperature of  kelvins, where . Substituting  for  in the
given equation yields . Subtracting  from both sides of this equation yields
. Multiplying both sides of this equation by  yields . Dividing both sides
of this equation by  yields . Adding  to both sides of this equation yields . Therefore,
if a substance has a temperature of  degrees Fahrenheit, the corresponding temperature, in kelvins, of this substance
is .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '7d89376f',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'A discount airline sells a certain number of tickets, x, for a flight for $90 each. It
sells the number of remaining tickets, y, for $250 each. For a particular flight, the
airline sold 120 tickets and collected a total of $27,600 from the sale of those
tickets. Which system of equations represents this relationship between x and y ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The airline sold two types of tickets for this flight: x tickets at $90 each and the remaining  tickets, y, at
$250 each. Because the airline sold a total of 120 tickets for this flight, it must be true that x + y = 120. The amount, in
dollars, collected from the sale of x tickets at $90 each is represented by 90x. The amount, in dollars, collected from the sale
of the remaining y tickets at $250 each is represented by 250y. It is given that a total of $27,600 was collected from the sale
of all tickets. Therefore, it must also be true that 90x + 250y = 27,600.
Choice B is incorrect. The total number of tickets sold is represented correctly as x + y = 120. The total amount, in dollars,
collected from the sale of the x tickets at $90 each and the remaining tickets, y, at $250 has been correctly represented as
90x + 250y. However, according to the information given, this total should be equal to 27,600, not 120(27,600) dollars.
Choice C is incorrect. The total number of tickets sold has been correctly represented as x + y. However, according to the
information given, this total should be equal to 120, not 27,600, as shown in choice C. The total amount, in dollars, collected
from the sale of the x tickets at $90 each and the remaining tickets, y, at $250 has been correctly represented as 90x + 250y.
However, according to the information given, this total should be equal to 27,600, not 120(27,600) dollars. Choice D is
incorrect. The two equations given in choice D have no meaning in this context.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'fb43b85f',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A line passes through the points  and  in the xy-plane. What is the slope of the line?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . For a line that passes through the points  and  in the xy-plane, the slope of the
line can be calculated using the slope formula, . It''s given that a line passes through the points  and
in the xy-plane. Substituting  for  and  for  in the slope formula, , yields
, or . Therefore, the slope of the line is . Note that 18/11 and 1.636 are examples of ways to enter a
correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '1ecaa9c0',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Robert rented a truck to transport materials he purchased from a hardware store.
He was charged an initial fee of $20.00 plus an additional $0.70 per mile driven. If
the truck was driven 38 miles, what was the total amount Robert was charged?
A. $46.60
B. $52.90
C. $66.90
D. $86.50',
    'A',
    '{"type":"multiple_choice","choices":{"A":"$46.60","B":"$52.90","C":"$66.90","D":"$86.50"}}',
    'Choice A is correct. It’s given that Robert was charged an initial fee of $20.00 to rent the truck plus an additional $0.70 per
mile driven. Let m represent the number of miles the truck was driven. Since the rental charge is $0.70 per mile driven,
represents the amount Robert was charged for m miles driven. Let c equal the total amount, in dollars, Robert was
charged to rent the truck. The total amount can be represented by the equation . It’s given that the truck
was driven 38 miles, thus . Substituting 38 into the equation gives . Multiplying
gives . Adding these values gives , so the total amount Robert was charged is $46.60.
Choices B, C, and D are incorrect and may result from setting up the equation incorrectly or from making calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b75f7812',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Maria plans to rent a boat. The boat rental costs $60 per hour, and she will also
have to pay for a water safety course that costs $10. Maria wants to spend no
more than $280 for the rental and the course. If the boat rental is available only for
a whole number of hours, what is the maximum number of hours for which Maria
can rent the boat?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 4. The equation , where h is the number of hours the boat has been rented, can be
written to represent the situation. Subtracting 10 from both sides and then dividing by 60 yields . Since the boat can
be rented only for whole numbers of hours, the maximum number of hours for which Maria can rent the boat is 4.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '208626df',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'A rectangle has length  and width . The inequality gives the possible values of  and  for which the perimeter of this
rectangle is less than or equal to . Which statement is the best interpretation of  in this context?
A. If the rectangle has length  and width , its perimeter is less than or equal to .
B. If the rectangle has length  and width , its perimeter is less than or equal to .
C. If the rectangle has length  and width , its perimeter is greater than or equal to .
D. If the rectangle has length  and width , its perimeter is greater than or equal to .',
    'B',
    '{"type":"multiple_choice","choices":{"A":"If the rectangle has length  and width , its perimeter is less than or equal to .","B":"If the rectangle has length  and width , its perimeter is less than or equal to .","C":"If the rectangle has length  and width , its perimeter is greater than or equal to .","D":"If the rectangle has length  and width , its perimeter is greater than or equal to ."}}',
    'Choice B is correct. It’s given that a rectangle has length  and width , and the inequality  gives the possible
values of  and  for which the perimeter of this rectangle is less than or equal to . To determine the best interpretation of
in this context, the values can be substituted in the given inequality. Substituting  for  and  for  in this
inequality yields , which is equivalent to , or . Since this inequality is true, if the
rectangle has length  and width , its perimeter is less than or equal to .
Choice A is incorrect. The interpretation of  implies that the rectangle has length  and width , not length
and width .
Choice C is incorrect. The interpretation of  implies that the rectangle has length  and width , not length
and width .
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '45bba652',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If , what is
the value of  ?
A. 2
B. 5
C. 7
D. 12',
    'A',
    '{"type":"multiple_choice","choices":{"A":"2","B":"5","C":"7","D":"12"}}',
    'Choice A is correct. Adding the like terms on the left-hand side of the given equation yields . Dividing both
sides of this equation by 5 yields .
Choice B is incorrect and may result from subtracting 5, not dividing by 5, on both sides of the equation .
Choice C is incorrect. This is the value of x, not the value of . Choice D is incorrect. This is the value of , not the
value of .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '9ed4c1a2',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'What is the slope of the graph of  in the xy-plane?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . In the xy-plane, the graph of an equation in the form , where  and  are constants,
has a slope of  and a y-intercept of . Applying the distributive property to the right-hand side of the given equation
yields . Combining like terms yields . This equation is in the form , where
and . It follows that the slope of the graph of  in the xy-plane is . Note that 55/4
and 13.75 are examples of ways to enter a correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '628300a9',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'A science teacher is preparing the 5 stations of a science laboratory. Each station
will have either Experiment A materials or Experiment B materials, but not both.
Experiment A requires 6 teaspoons of salt, and Experiment B requires 4 teaspoons
of salt. If x is the number of stations that will be set up for Experiment A and the
remaining stations will be set up for Experiment B, which of the following
expressions represents the total number of teaspoons of salt required?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. It is given that x represents the number of stations that will be set up for Experiment A and that there will
be 5 stations total, so it follows that 5 – x is the number of stations that will be set up for Experiment B. It is also given that
Experiment A requires 6 teaspoons of salt and that Experiment B requires 4 teaspoons of salt, so the total number of
teaspoons of salt required is 6x + 4(5 – x), which simplifies to 2x + 20.
Choices A, B, and D are incorrect and may be the result of not understanding the description of the context.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b544a348',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the solution  to the system of equations
above, what is the value of x ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 7. Subtracting the second equation from the first equation eliminates the variable y.
Dividing both sides of the resulting equation by 4 yields x = 7.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a1fd2304',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'How many liters of a 25% saline solution must be added to 3 liters of a 10% saline
solution to obtain a 15% saline solution?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 1.5. The total amount, in liters, of a saline solution can be expressed as the liters of each type of saline
solution multiplied by the percent concentration of the saline solution. This gives , , and ,
where x is the amount, in liters, of 25% saline solution and 10%, 15%, and 25% are represented as 0.10, 0.15, and 0.25,
respectively. Thus, the equation  must be true. Multiplying 3 by 0.10 and distributing 0.15 to
yields . Subtracting 0.15x and 0.30 from each side of the equation gives
. Dividing each side of the equation by 0.10 yields . Note that 1.5 and 3/2 are examples of ways to
enter a correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f5ff91b2',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'If , the value of  is between which of the following pairs of values?
A.  and
B.  and
C.  and
D.  and',
    'B',
    '{"type":"multiple_choice","choices":{"A":"and","B":"and","C":"and","D":"and"}}',
    'Choice B is correct. Multiplying both sides of the given equation by , or , yields , or
. Subtracting  from both sides of this equation yields . Dividing both sides of
this equation by  yields . Therefore, if , then the value of  is . It follows that of the given
choices, the value of  is between  and .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e53870b6',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'In the given equation, k is a constant. If the equation has infinitely
many solutions, what is the value of k ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 5. Subtracting  from both sides of the given equation gives , so for any value of x,
if and only if . Therefore, if the given equation has infinitely many solutions, the value of k is 5.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0df106df',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'An online bookstore sells novels and magazines. Each novel sells for $4, and each
magazine sells for $1. If Sadie purchased a total of 11 novels and magazines that
have a combined selling price of $20, how many novels did she purchase?
A. 2
B. 3
C. 4
D. 5',
    'B',
    '{"type":"multiple_choice","choices":{"A":"2","B":"3","C":"4","D":"5"}}',
    'Choice B is correct. Let n be the number of novels and m be the number of magazines that Sadie purchased. If Sadie
purchased a total of 11 novels and magazines, then . It is given that the combined price of 11 novels and
magazines is $20. Since each novel sells for $4 and each magazine sells for $1, it follows that . So the system
of equations below must hold.
Subtracting corresponding sides of the second equation from the first equation yields , so . Therefore, Sadie
purchased 3 novels.
Choice A is incorrect. If 2 novels were purchased, then a total of $8 was spent on novels. That leaves $12 to be spent on
magazines, which means that 12 magazines would have been purchased. However, Sadie purchased a total of 11 novels and
magazines. Choices C and D are incorrect. If 4 novels were purchased, then a total of $16 was spent on novels. That leaves
$4 to be spent on magazines, which means that 4 magazines would have been purchased. By the same logic, if Sadie
purchased 5 novels, she would have no money at all ($0) to buy magazines. However, Sadie purchased a total of 11 novels
and magazines.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0ea7ef01',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'Linear functions',
    'Oxygen gas is placed inside a tank with a constant volume. The graph shows the estimated temperature , in kelvins, of the
oxygen gas when its pressure is  atmospheres.
What is the estimated temperature, in kelvins, of the oxygen gas when its pressure is  atmospheres?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. For the graph shown, the x-axis represents pressure, in atmospheres, and the y-axis represents
temperature, in kelvins. Therefore, the estimated temperature, in kelvins, of the oxygen gas when its pressure is
atmospheres is represented by the y-coordinate of the point on the graph that has an x-coordinate of . The point on the
graph with an x-coordinate of  has a y-coordinate of approximately . Therefore, the estimated temperature, in kelvins, of
the oxygen gas when its pressure is  atmospheres is .
Choice A is incorrect. This is the pressure, in atmospheres, not the estimated temperature, in kelvins, of the oxygen gas when
its pressure is  atmospheres.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '8da536c6',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In , a swim club had a total of  swimmers, each classified as either advanced or intermediate. From  to ,
the number of advanced swimmers in the club increased by approximately , and the number of intermediate swimmers
in the club increased by approximately . The total number of swimmers in the club increased by approximately .
Which equation best represents this situation, where  represents the number of advanced swimmers in the club in
and  represents the number of intermediate swimmers in the club in ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. It’s given that in , a swim club had a total of  swimmers, each classified as either advanced or
intermediate, and that  represents the number of advanced swimmers in  and  represents the number of intermediate
swimmers in . It''s also given that from  to , the number of advanced swimmers in the club increased by
approximately  and the number of intermediate swimmers in the club increased by approximately . Thus, in ,
the approximate number of advanced swimmers in the club can be represented as  and the approximate number of
intermediate swimmers in the club can be represented as . It''s given that the total number of swimmers in the club
increased by approximately  from  to . Since the club had  swimmers in , it follows that the total
number of swimmers in  can be represented as . Since the sum of the number of advanced swimmers in
and the number of intermediate swimmers in  equals the total number of swimmers in , the equation
best represents this situation.
Choice A is incorrect. This equation represents a situation where the number of intermediate swimmers in the club in
increased by approximately , not , and the total number of swimmers in the club in  increased by
approximately , not .
Choice B is incorrect and may result from conceptual errors.
Choice D is incorrect. This equation represents a situation where the number of advanced swimmers in the club in
increased by approximately , not , and the number of intermediate swimmers in the club in  increased by
approximately , not .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f0773a55',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'Linear functions',
    'The graph represents the total charge, in dollars, by an electrician for  hours of work. The electrician charges a onetime fee
plus an hourly rate. What is the best interpretation of the slope of the graph?
A. The electrician’s hourly rate
B. The electrician’s onetime fee
C. The maximum amount that the electrician charges
D. The total amount that the electrician charges',
    'A',
    '{"type":"multiple_choice","choices":{"A":"The electrician’s hourly rate","B":"The electrician’s onetime fee","C":"The maximum amount that the electrician charges","D":"The total amount that the electrician charges"}}',
    'Choice A is correct. It’s given that the electrician charges a onetime fee plus an hourly rate. It''s also given that the graph
represents the total charge, in dollars, for  hours of work. This graph shows a linear relationship in the xy-plane. Thus, the
total charge , in dollars, for  hours of work can be represented as , where  is the slope and  is the y-
intercept of the graph of the equation in the xy-plane. Since the given graph represents the total charge, in dollars, by an
electrician for  hours of work, it follows that its slope is , or the electrician’s hourly rate.
Choice B is incorrect. The electrician''s onetime fee is represented by the y-coordinate of the y-intercept, not the slope, of the
graph.
Choice C is incorrect and may result from conceptual errors.
Choice D is incorrect and may result from conceptual errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '2eef7e61',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The graph of the function f is a line in the xy-plane. If the line has slope  and
, which of the following defines f?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The equation for the function f in the xy-plane can be represented by , where m is the
slope and b is the y-coordinate of the y-intercept. Since it’s given that the line has a slope of , it follows that  in
, which yields . It’s given that . This implies that the graph of the function f in the xy-
plane passes through the point . Thus, the y-coordinate of the y-intercept of the graph is 3, so  in ,
which yields . Therefore, the equation  defines the function f.
Choice A is incorrect and may result from a sign error for the y-intercept. Choice C is incorrect and may result from using the
denominator of the given slope as m in , in addition to a sign error for the y-intercept. Choice D is incorrect
and may result from using the denominator of the given slope as m in .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '46f68129',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'A librarian has 43 books to distribute to a group of children. If he gives each child 2
books, he will have 7 books left over. How many children are in the group?
A. 15
B. 18
C. 25
D. 29',
    '',
    '{"type":"multiple_choice","choices":{"A":"15","B":"18","C":"25","D":"29"}}',
    'Choice B is correct. Subtracting the number of books left over from the total number of books results in , which
is the number of books distributed. Dividing the number of books distributed by the number of books given to each child
results in .
Choice A is incorrect and results from dividing the total number of books by the number of books given to each child,
, then subtracting the number of books left over from the result, . Choice C is incorrect and results
from adding the number of books left over to the total number of books, , then dividing the result by the number
of books given to each child, . Choice D is incorrect and results from dividing the total number of books by the
number of books given to each child, , then adding the number of books left over, .',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '038d87d7',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A neighborhood consists of a -hectare park and a -hectare residential area. The total number of trees in the
neighborhood is . The equation  represents this situation. Which of the following is the best
interpretation of x in this context?
A. The average number of trees per hectare in the park
B. The average number of trees per hectare in the residential area
C. The total number of trees in the park
D. The total number of trees in the residential area',
    'A',
    '{"type":"multiple_choice","choices":{"A":"The average number of trees per hectare in the park","B":"The average number of trees per hectare in the residential area","C":"The total number of trees in the park","D":"The total number of trees in the residential area"}}',
    'Choice A is correct. It''s given that a neighborhood consists of a -hectare park and a -hectare residential area and that the
total number of trees in the neighborhood is . It''s also given that the equation  represents this
situation. Since the total number of trees for a given area can be determined by taking the number of hectares times the
average number of trees per hectare, this must mean that the terms  and  correspond to the number of trees in the
park and in the residential area, respectively. Since  corresponds to the number of trees in the park, and  is the size of the
park, in hectares,  must represent the average number of trees per hectare in the park.
Choice B is incorrect and may result from conceptual errors.
Choice C is incorrect and may result from conceptual errors.
Choice D is incorrect and may result from conceptual errors.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '39617468',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The given equation relates the total number of maple trees, , and the total number of birch trees, , planted in a -acre
forest preserve. If  maple trees were planted in the forest preserve, how many birch trees were planted in the forest
preserve?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. It’s given that the equation  relates the total number of maple trees, , and the total
number of birch trees, , planted in a -acre forest preserve. It’s also given that  maple trees were planted in the forest
preserve. Substituting  for  in the given equation yields . Subtracting  from both sides of this
equation yields . Therefore,  birch trees were planted in the forest preserve.
Choice A is incorrect. This is the number of acres in the forest preserve, not the number of birch trees planted in the forest
preserve.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect. This is the number of maple trees planted in the forest preserve, not the number of birch trees planted
in the forest preserve.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '429fb7c0',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'What value of  is the solution to the equation ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . Applying the distributive property to the right-hand side of the given equation yields
, or . Subtracting  from both sides of this equation yields
. Subtracting  from both sides of this equation yields . Dividing both sides of
this equation by  yields . Therefore, the value of  is approximately . Note that -.3267, -.3266, -0.326,
and -0.327 are examples of ways to enter a correct answer.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '90bd9ef8',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The average annual energy cost for a certain home is $4,334. The homeowner
plans to spend $25,000 to install a geothermal heating system. The homeowner
estimates that the average annual energy cost will then be $2,712. Which of the
following inequalities can be solved to find t, the number of years after installation
at which the total amount of energy cost savings will exceed the installation cost?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The savings each year from installing the geothermal heating system will be the average annual energy
cost for the home before the geothermal heating system installation minus the average annual energy cost after the
geothermal heating system installation, which is  dollars. In t years, the savings will be
dollars. Therefore, the inequality that can be solved to find the number of years after installation at which the total amount of
energy cost savings will exceed (be greater than) the installation cost, $25,000, is .
Choice A is incorrect. It gives the number of years after installation at which the total amount of energy cost savings will be
less than the installation cost. Choice C is incorrect and may result from subtracting the average annual energy cost for the
home from the onetime cost
of the geothermal heating system installation. To find the predicted total savings, the predicted average cost should be
subtracted from the average annual energy cost before the installation, and the result should be multiplied by the number of
years, t. Choice D is incorrect and may result from misunderstanding the context. The ratio  compares the average
energy cost before installation and the average energy cost after installation; it does not represent the savings.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '5ad9eff0',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The width of a rectangular dance floor is w feet. The length of the floor is 6 feet
longer than its width. Which of the following expresses the perimeter, in feet, of the
dance floor in terms of w ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. It is given that the width of the dance floor is w feet. The length is 6 feet longer than the width; therefore,
the length of the dance floor is . So the perimeter is .
Choice A is incorrect because it is the sum of one length and one width, which is only half the perimeter. Choice C is
incorrect and may result from using the formula for the area instead of the formula for the perimeter and making a
calculation error. Choice D is incorrect because this is the area, not the perimeter, of the dance floor.',
    '',
    0
) ON DUPLICATE KEY UPDATE
    question_text = VALUES(question_text),
    correct_answer = VALUES(correct_answer),
    answer_choices = VALUES(answer_choices),
    explanation = VALUES(explanation),
    answer_analysis = VALUES(answer_analysis);