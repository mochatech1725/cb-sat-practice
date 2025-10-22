-- Auto-generated SQL for SAT Questions

-- Supports both Multiple Choice and Free Response questions


INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a5663025',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A system of equations consists of a quadratic equation and a linear equation. The
equations in this system are graphed in the xy-plane above. How many solutions
does this system have?
A. 0
B. 1
C. 2
D. 3',
    'C',
    '{"type":"multiple_choice","choices":{"A":"0","B":"1","C":"2","D":"3"}}',
    'Choice C is correct. The solutions to a system of two equations correspond to points where the graphs of the equations
intersect. The given graphs intersect at 2 points; therefore, the system has 2 solutions.
Choice A is incorrect because the graphs intersect. Choice B is incorrect because the graphs intersect more than once.
Choice D is incorrect. It’s not possible for the graph of a quadratic equation and the graph of a linear equation to intersect
more than twice.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '3c95093c',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which of the following inequalities is equivalent
to the inequality above?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Both sides of the given inequality can be divided by 3 to yield .
Choices A, C, and D are incorrect because they are not equivalent to (do not have the same solution set as) the given
inequality. For example, the ordered pair  is a solution to the given inequality, but it is not a solution to any of the
inequalities in choices A, C, or D.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd0a7871e',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If  is a solution to the system of equations above, which of the
following could be the value of x ?
A. –1
B. 0
C. 2
D. 3',
    'A',
    '{"type":"multiple_choice","choices":{"A":"–1","B":"0","C":"2","D":"3"}}',
    'Choice A is correct. It is given that y = x + 1 and y = x + x. Setting the values for y equal to each other yields x + 1 = x + x.
Subtracting x from each side of this equation yields x = 1. Therefore, x can equal 1 or –1. Of these, only –1 is given as a
choice.
Choice B is incorrect. If x = 0, then x + 1 = 1, but x + x = 0 + 0 = 0 ≠  1. Choice C is incorrect. If x = 2, then x + 1 = 3, but x + x
= 2 + 2 = 6 ≠  3. Choice D is incorrect. If x = 3, then x + 1 = 4, but x + x = 3 + 3 = 12 ≠  4.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'dd4ab4c4',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following is a factor of
the polynomial above?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The first and last terms of the polynomial are both squares such that  and .
The second term is twice the product of the square root of the first and last terms: . Therefore, the
polynomial is the square of a binomial such that , and  is a factor.
Choice A is incorrect and may be the result of incorrectly factoring the polynomial. Choice C is incorrect and may be the
result of dividing the second and third terms of the polynomial by their greatest common factor. Choice D is incorrect and
may be the result of not factoring the coefficients.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b8caaf84',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If  and , which of the following is
equivalent to  ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. It’s given that  and . Substituting the values for p and v into the expression
yields . Multiplying the terms  yields .
Using the distributive property to rewrite  yields . Therefore, the entire expression can be represented as
. Combining like terms yields .
Choice A is incorrect and may result from subtracting, instead of adding, the term . Choice C is incorrect. This is the
result of multiplying the terms . Choice D is incorrect and may result from distributing 2, instead of , to the
term .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '7f81d0c3',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'What values satisfy the
equation above?
A.  and
B.  and
C.  and
D.  and',
    'C',
    '{"type":"multiple_choice","choices":{"A":"and","B":"and","C":"and","D":"and"}}',
    'Choice C is correct. Using the quadratic formula to solve the given expression yields
. Therefore,  and  satisfy the given equation.
Choices A and B are incorrect and may result from incorrectly factoring or incorrectly applying the quadratic formula. Choice
D is incorrect and may result from a sign error.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '332cd67b',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'How many distinct real solutions are there to the given equation?
A. Exactly one
B. Exactly two
C. Infinitely many
D. Zero',
    'B',
    '{"type":"multiple_choice","choices":{"A":"Exactly one","B":"Exactly two","C":"Infinitely many","D":"Zero"}}',
    'Choice B is correct. The number of solutions to a quadratic equation of the form , where , , and  are
constants, can be determined by the value of the discriminant, . If the value of the discriminant is positive, then the
quadratic equation has exactly two distinct real solutions. If the value of the discriminant is equal to zero, then the quadratic
equation has exactly one real solution. If the value of the discriminant is negative, then the quadratic equation has zero real
solutions. In the given equation, , , , and . Substituting  for ,  for , and
for  in  yields , or . Since the value of the discriminant is positive, the given equation has
exactly two distinct real solutions.
Choice A is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '128c75e2',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The function  is defined by , where . What is the product of  and ?',
    '609',
    '{"type":"free_response"}',
    'The correct answer is . It’s given that the function  is defined by , where . Substituting  for
in function  yields . This function can be rewritten as , or
. Since , it follows that . Substituting  for  in
yields , or . Similarly, substituting  for  in function  yields .
This function can be rewritten as , or . Since , it again follows that
. Substituting  for  in  yields , or . Therefore,
and . Thus, the product of  and  is , or .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e312081b',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which of the following is equivalent to
the given expression?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Using the associative and commutative properties of addition, the given expression
can be rewritten as . Adding these like terms results in .
Choice A is incorrect and may result from adding . Choice C is incorrect and may result from adding
. Choice D is incorrect and may result from adding .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '91e7ea5e',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The quadratic function h is defined as shown. In the xy-plane, the graph of
intersects the x-axis at the points and , where t is a constant.
What is the value of t ?
A. 1
B. 2
C. 4
D. 8',
    'D',
    '{"type":"multiple_choice","choices":{"A":"1","B":"2","C":"4","D":"8"}}',
    'Choice D is correct. It’s given that the graph of  intersects the x-axis at  and , where t is a constant. Since
this graph intersects the x-axis when  or when , it follows that  and . If , then
. Adding 32 to both sides of this equation yields . Dividing both sides of this equation by 2
yields . Taking the square root of both sides of this equation yields . Adding 4 to both sides of this
equation yields . Therefore, the value of t is 8.
Choices A, B, and C are incorrect and may result from calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '3a9d60b2',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'What is the positive solution to the given equation?',
    '9',
    '{"type":"free_response"}',
    'The correct answer is . The given equation can be rewritten as . Dividing each side of this equation by
yields . By the definition of absolute value, if , then  or . Subtracting  from
each side of the equation  yields . Dividing each side of this equation by  yields . Similarly,
subtracting  from each side of the equation  yields . Dividing each side of this equation by
yields . Therefore, since the two solutions to the given equation are  and , the positive solution to the given
equation is .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'ebed7dc6',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'An auditorium has seats for  people. Tickets to attend a show at the auditorium currently cost . For each
increase to the ticket price,  fewer tickets will be sold. This situation can be modeled by the equation
, where  represents the increase in ticket price, in dollars, and  represents the revenue, in
dollars, from ticket sales. If this equation is graphed in the xy-plane, at what value of  is the maximum of the graph?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. It’s given that the situation can be modeled by the equation , where
represents the increase in ticket price, in dollars, and  represents the revenue, in dollars, from ticket sales. Since the
coefficient of the  term is negative, the graph of this equation in the xy-plane opens downward and reaches its maximum
value at its vertex. If a quadratic equation in the form , where , , and  are constants, is graphed in the
xy-plane, the x-coordinate of the vertex is equal to . For the equation , ,
, and . It follows that the x-coordinate of the vertex is , or . Therefore, if the given equation is
graphed in the xy-plane, the maximum of the graph occurs at an x-value of .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'fc3d783a',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the -plane, a line with equation  intersects a parabola at exactly one point. If the parabola has equation
, where  is a positive constant, what is the value of ?',
    '6',
    '{"type":"free_response"}',
    'The correct answer is . It’s given that a line with equation  intersects a parabola with equation ,
where  is a positive constant, at exactly one point in the xy-plane. It follows that the system of equations consisting of
and  has exactly one solution. Dividing both sides of the equation of the line by  yields
. Substituting  for  in the equation of the parabola yields . Adding  and subtracting
from both sides of this equation yields . A quadratic equation in the form of ,
where , , and  are constants, has exactly one solution when the discriminant, , is equal to zero. Substituting  for
and  for  in the expression  and setting this expression equal to  yields , or
. Adding  to each side of this equation yields . Taking the square root of each side of this equation
yields . It’s given that  is positive, so the value of  is .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a9084ca4',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The given function  models the number of advertisements a company sent to its clients each year, where  represents the
number of years since , and . If  is graphed in the xy-plane, which of the following is the best
interpretation of the y-intercept of the graph in this context?
A. The minimum estimated number of advertisements the company sent to its clients during the  years was .
B. The minimum estimated number of advertisements the company sent to its clients during the  years was .
C. The estimated number of advertisements the company sent to its clients in  was .
D. The estimated number of advertisements the company sent to its clients in  was .',
    'D',
    '{"type":"multiple_choice","choices":{"A":"The minimum estimated number of advertisements the company sent to its clients during the  years was .","B":"The minimum estimated number of advertisements the company sent to its clients during the  years was .","C":"The estimated number of advertisements the company sent to its clients in  was .","D":"The estimated number of advertisements the company sent to its clients in  was ."}}',
    'Choice D is correct. The y-intercept of a graph in the xy-plane is the point where . For the given function , the y-
intercept of the graph of  in the xy-plane can be found by substituting  for  in the equation ,
which gives . This is equivalent to , or . Therefore, the y-intercept of the graph of
is . It’s given that the function  models the number of advertisements a company sent to its clients
each year. Therefore,  represents the estimated number of advertisements the company sent to its clients each year. It''s
also given that  represents the number of years since . Therefore,  represents  years since , or .
Thus, the best interpretation of the y-intercept of the graph of  is that the estimated number of advertisements the
company sent to its clients in  was .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '4661e2a9',
    'SAT',
    'Math',
    'Advanced Math',
    'Hard',
    'Nonlinear equations in one variable and systems of equations in two',
    'Which ordered pair is a solution to the
system of equations above?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The solution to the given system of equations can be found by solving the first equation for x, which
gives , and substituting that value of x into the second equation which gives . Rewriting this
equation by adding like terms and expanding  gives . Subtracting  from both sides of this
equation gives . Adding to 2 to both sides of this equation gives . Therefore, it follows that .
Substituting  for y in the first equation yields . Adding  to both sides of this equation yields .
Therefore, the ordered pair  is a solution to the given system of equations.
Choice B is incorrect. Substituting  for x and  for y in the first equation yields , or ,
which isn’t a true statement. Choice C is incorrect. Substituting  for x and  for y in the second equation yields
, or , which isn’t a true statement. Choice D is incorrect. Substituting
for x and  for y in the second equation yields , or , which isn’t a
true statement.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6abec9a8',
    'SAT',
    'Math',
    'Advanced Math',
    'Easy',
    'Nonlinear functions',
    'What is the -intercept of the graph shown?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The y-intercept of a graph in the xy-plane is the point  on the graph where . At , the
corresponding value of  is . Therefore, the y-intercept of the graph shown is .
Choice A is incorrect and may result from conceptual errors.
Choice C is incorrect. This is the y-intercept of a graph in the xy-plane that intersects the y-axis at , not .
Choice D is incorrect. This is the y-intercept of a graph in the xy-plane that intersects the y-axis at , not .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'ad2ec615',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following is equivalent to the
expression  ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The term x can be factored as . Factoring –6 as  yields values that add to –1, the
coefficient of x in the expression.
Choices A, C, and D are incorrect and may result from finding factors of –6 that don’t add to the coefficient of x in the
original expression.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '42c71eb5',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following is equivalent to
the expression above?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The given expression can be rewritten as . Applying the distributive
property, the expression  can be rewritten as , or .
Adding like terms yields . Substituting  for   in the given expression yields
. By the rules of exponents, the expression  is equivalent to . Applying the
distributive property, this expression can be rewritten as , or . Adding
like terms gives . Substituting  for  in the rewritten expression yields
, and adding like terms yields .
Choices B, C, and D are incorrect. Choices C and D may result from rewriting the expression  as , instead
of as . Choices B and C may result from rewriting the expression  as , instead of .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '371cbf6b',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The equation above is true for all x, where a and b are
constants. What is the value of ab ?
A. 18
B. 20
C. 24
D. 40',
    'C',
    '{"type":"multiple_choice","choices":{"A":"18","B":"20","C":"24","D":"40"}}',
    'Choice C is correct. If the equation is true for all x, then the expressions on both sides of the equation will be equivalent.
Multiplying the polynomials on the left-hand side of the equation gives . On the right-
hand side of the equation, the only -term is . Since the expressions on both sides of the equation are equivalent, it
follows that , which can be rewritten as . Therefore, , which
gives .
Choice A is incorrect. If , then the coefficient of  on the left-hand side of the equation would be ,
which doesn’t equal the coefficient of , , on the right-hand side. Choice B is incorrect. If , then the coefficient
of  on the left-hand side of the equation would be , which doesn’t equal the coefficient of , , on the
right-hand side. Choice D is incorrect. If , then the coefficient of  on the left-hand side of the equation would be
, which doesn’t equal the coefficient of , , on the right-hand side.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a05bd3a4',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following expressions is
equivalent to  ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. The expression can be written as a difference of squares x – y, which can be factored as (x + y)(x – y).
Here, y = 5, so , and the expression therefore factors as .
Choices A and B are incorrect and may result from misunderstanding how to factor a difference of squares. Choice D is
incorrect; (x + 5)(x – 1) can be rewritten as x + 4x – 5, which is not equivalent to the original expression.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'c3b116d7',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Which of the following expressions is(are) a factor of ?
I.
II.
A. I only
B. II only
C. I and II
D. Neither I nor II',
    'B',
    '{"type":"multiple_choice","choices":{"A":"I only","B":"II only","C":"I and II","D":"Neither I nor II"}}',
    'Choice B is correct. The given expression can be factored by first finding two values whose sum is  and whose product is
, or . Those two values are  and . It follows that the given expression can be rewritten as
. Since the first two terms of this expression have a common factor of  and the last two terms of
this expression have a common factor of , this expression can be rewritten as . Since the two
terms of this expression have a common factor of , it can be rewritten as . Therefore, expression
II, , is a factor of , but expression I, , is not a factor of .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '40c09d66',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'If  for all positive values of x,
what is the value of ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . The value of  can be found by first rewriting the left-hand side of the given equation as .
Using the properties of exponents, this expression can be rewritten as . This expression can be rewritten by
subtracting the fractions in the exponent, which yields . Thus,  is . Note that 7/6, 1.166, and 1.167 are examples of
ways to enter a correct answer.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b8f13a3a',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Function  is defined by , where  and  are constants. In the xy-plane, the graph of  has a
y-intercept at . The product of  and  is . What is the value of ?',
    '20',
    '{"type":"free_response"}',
    'The correct answer is . It’s given that . Substituting  for  in the equation
yields . It’s given that the y-intercept of the graph of  is . Substituting  for
and  for  in the equation  yields , which is equivalent to
, or . Adding  to both sides of this equation yields . It’s given that the
product of  and  is , or . Substituting  for  in this equation yields . Dividing both sides of
this equation by  yields .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '1d3c5c95',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'An entomologist recommended a program to reduce a certain invasive beetle population in an area. The given function
estimates this beetle species'' population  years after , where . Which of the following is the best interpretation
of  in this context?
A. The estimated initial beetle population for this species and area in
B. The estimated beetle population for this species and area  years after
C. The estimated percent decrease in the beetle population for this species and area each year after
D. The estimated percent decrease in the beetle population for this species and area every  years after',
    'A',
    '{"type":"multiple_choice","choices":{"A":"The estimated initial beetle population for this species and area in","B":"The estimated beetle population for this species and area  years after","C":"The estimated percent decrease in the beetle population for this species and area each year after","D":"The estimated percent decrease in the beetle population for this species and area every  years after"}}',
    'Choice A is correct. For an exponential function in the form , where  and  are positive constants and ,
the initial value of , or the value of  when , is  and the value of  decreases by  each time
increases by . Therefore, the initial value of the function , or the value of  when , is
. Therefore, the best interpretation of  in this context is the estimated initial beetle population for this species
and area in .
Choice B is incorrect. The estimated beetle population for this species and area  years after  is , or
approximately , not .
Choice C is incorrect. The estimated percent decrease in the beetle population for this species and area each year after
is , or , not .
Choice D is incorrect. The estimated percent decrease in the beetle population for this species and area every  years after
is , or approximately , not .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f65288e8',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'If x is a solution to the given equation, which of the
following is a possible value of  ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The given equation can be rewritten as . Multiplying both sides of this equation by
yields . Dividing both sides of this equation by 4 yields . Taking the square root of both sides of
this equation yields  or . Therefore, a possible value of  is .
Choices B, C, and D are incorrect and may result from computational or conceptual errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '788bfd56',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The function  is defined by . What is the value of ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The value of  is the value of  when . It''s given that the function  is defined by
. Substituting  for  in this equation yields . Since the positive square root of
is , it follows that this equation can be rewritten as , or . Therefore, the value of  is
.
Choice A is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect. This is the value of , not .
Choice D is incorrect. This is the value of , not .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f89af023',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A rectangular volleyball court has an area of 162 square meters. If the length of the
court is twice the width, what is the width of the court, in meters?
A. 9
B. 18
C. 27
D. 54',
    'A',
    '{"type":"multiple_choice","choices":{"A":"9","B":"18","C":"27","D":"54"}}',
    'Choice A is correct. It’s given that the volleyball court is rectangular and has an area of 162 square meters. The formula for
the area of a rectangle is , where A is the area,  is the length, and w is the width of the rectangle. It’s also given
that the length of the volleyball court is twice the width, thus . Substituting the given value into the formula for the
area of a rectangle and using the relationship between length and width for this rectangle yields . This
equation can be rewritten as . Dividing both sides of this equation by 2 yields . Taking the square root of
both sides of this equation yields . Since the width of a rectangle is a positive number, the width of the volleyball
court is 9 meters.
Choice B is incorrect because this is the length of the rectangle. Choice C is incorrect because this is the result of using 162
as the perimeter rather than the area. Choice D is incorrect because this is the result of calculating w in the equation
instead of .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e53add44',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The function S above models the annual salary, in dollars, of an employee n years
after starting a job, where a is a constant. If the employee’s salary increases by 4%
each year, what is the value of a ?
A. 0.04
B. 0.4
C. 1.04
D. 1.4',
    'C',
    '{"type":"multiple_choice","choices":{"A":"0.04","B":"0.4","C":"1.04","D":"1.4"}}',
    'Choice C is correct. A model for a quantity S that increases by a certain percentage per time period n is an exponential
function in the form , where I is the initial value at time  for r% annual increase. It’s given that the
annual increase in an employee’s salary is 4%, so . The initial value can be found by substituting 0 for n in the given
function, which yields . Therefore, . Substituting these values for r and I into the form of the
exponential function  yields , or . Therefore, the
value of a in the given function is 1.04.
Choices A, B, and D are incorrect and may result from incorrectly representing the annual increase in the exponential
function.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f2f3fa00',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'During a 5-second time interval, the average acceleration a, in meters per second
squared, of an object with an initial velocity of 12 meters per second is defined by
the equation , where v is the final velocity of the object in
meters per second. If the equation is rewritten in the form v = xa + y, where x and y
are constants, what is the value of x ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 5. The given equation can be rewritten in the form , like so:
It follows that the value of x is 5 and the value of y is 12.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '9654add7',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The revenue , in dollars, that a company receives from sales of a product is
given by the function f above, where x is the unit price, in dollars, of the product.
The graph of  in the xy-plane intersects the x-axis at 0 and a. What does a
represent?
A. The revenue, in dollars, when the unit price of the product is $0
B. The unit price, in dollars, of the product that will result in maximum revenue
C. The unit price, in dollars, of the product that will result in a revenue of $0
D. The maximum revenue, in dollars, that the company can make',
    'C',
    '{"type":"multiple_choice","choices":{"A":"The revenue, in dollars, when the unit price of the product is $0","B":"The unit price, in dollars, of the product that will result in maximum revenue","C":"The unit price, in dollars, of the product that will result in a revenue of $0","D":"The maximum revenue, in dollars, that the company can make"}}',
    'Choice C is correct. By definition, the y-value when a function intersects the x-axis is 0. It’s given that the graph of the
function intersects the x-axis at 0 and a, that x is the unit price, in dollars, of a product, and that , where , is the
revenue, in dollars, that a company receives from the sales of the product. Since the value of a occurs when , a is the
unit price, in dollars, of the product that will result in a revenue of $0.
Choice A is incorrect. The revenue, in dollars, when the unit price of the product is $0 is represented by , when .
Choice B is incorrect. The unit price, in dollars, of the product that will result in maximum revenue is represented by the x-
coordinate of the maximum of f. Choice D is incorrect. The maximum revenue, in dollars, that the company can make is
represented by the y-coordinate of the maximum of f.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '34847f8a',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The equation above is true for all , where r and t are positive
constants. What is the value of rt ?
A.
B. 15
C. 20
D. 60',
    'C',
    '{"type":"multiple_choice","choices":{"B":"15","C":"20","D":"60"}}',
    'Choice C is correct. To express the sum of the two rational expressions on the left-hand side of the equation as the single
rational expression on the right-hand side of the equation, the expressions on the left-hand side must have the same
denominator. Multiplying the first expression by  results in , and multiplying the second expression by
results in , so the given equation can be rewritten as
, or . Since the two
rational expressions on the left-hand side of the equation have the same denominator as the rational expression on the right-
hand side of the equation, it follows that . Combining like terms on the left-hand side yields
, so it follows that  and . Therefore, the value of  is .
Choice A is incorrect and may result from an error when determining the sign of either r or t. Choice B is incorrect and may
result from not distributing the 2 and 3 to their respective terms in .
Choice D is incorrect and may result from a calculation error.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'cc776a04',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following is an equivalent form of
?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. The first expression  can be rewritten as  . Applying the
distributive property to this product yields  . This difference can be rewritten
as  . Distributing the factor of  through the second expression
yields  . Regrouping like terms, the expression becomes
. Combining like terms yields  .
Choices A, B, and D are incorrect and likely result from errors made when applying the distributive property or combining the
resulting like terms.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '263f9937',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Growth of a Culture of Bacteria
Day
Number of bacteria per
milliliter at end of day
1
2
3
A culture of bacteria is growing at an exponential rate, as shown in the table above.
At this rate, on which day would the number of bacteria per milliliter reach
?
A. Day 5
B. Day 9
C. Day 11
D. Day 12',
    'D',
    '{"type":"multiple_choice","choices":{"A":"Day 5","B":"Day 9","C":"Day 11","D":"Day 12"}}',
    'Choice D is correct. The number of bacteria per milliliter is doubling each day. For example, from day 1 to day 2, the number
of bacteria increased from 2.5 × 10 to 5.0 × 10. At the end of day 3 there are 10 bacteria per milliliter. At the end of day 4,
there will be 10 × 2 bacteria per milliliter. At the end of day 5, there will be (10× 2) × 2, or 10 × (2) bacteria per milliliter,
and so on. At the end of day d, the number of bacteria will be 10× (2). If the number of bacteria per milliliter will reach
5.12 × 10 at the end of day d, then the equation  must hold. Since 5.12 × 10 can be rewritten
as 512 × 10,  the equation is equivalent to . Rewriting 512 as 2 gives d – 3 = 9, so d = 12. The number of
bacteria per milliliter would reach 5.12 × 10 at the end of day 12.
Choices A, B, and C are incorrect. Given the growth rate of the bacteria, the number of bacteria will not reach 5.12 × 10 per
milliliter by the end of any of these days.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '926c246b',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The equation above estimates the global data traffic D, in terabytes, for the year
that is t years after 2010. What is the best interpretation of the number 5,640 in
this context?
A. The estimated amount of increase of data traffic, in terabytes, each year
B. The estimated percent increase in the data traffic, in terabytes, each year
C. The estimated data traffic, in terabytes, for the year that is t years after 2010
D. The estimated data traffic, in terabytes, in 2010',
    'D',
    '{"type":"multiple_choice","choices":{"A":"The estimated amount of increase of data traffic, in terabytes, each year","B":"The estimated percent increase in the data traffic, in terabytes, each year","C":"The estimated data traffic, in terabytes, for the year that is t years after 2010","D":"The estimated data traffic, in terabytes, in 2010"}}',
    'Choice D is correct. Since t represents the number of years after 2010, the estimated data traffic, in terabytes, in 2010 can be
calculated using the given equation when . Substituting 0 for t in the given equation yields , or
. Thus, 5,640 represents the estimated data traffic, in terabytes, in 2010.
Choice A is incorrect. Since the equation is exponential, the amount of increase of data traffic each year isn’t constant.
Choice B is incorrect. According to the equation, the percent increase in data traffic each year is 90%. Choice C is incorrect.
The estimated data traffic, in terabytes, for the year that is t years after 2010 is represented by D, not the number 5,640.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '137cc6fd',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'For what value of  is the given expression equivalent to , where ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . An expression of the form , where  is an integer greater than  and , is equivalent to
. Therefore, the given expression, where , is equivalent to . Applying properties of exponents,
this expression can be rewritten as , or , which can be rewritten as , or .
It''s given that the expression  is equivalent to , where . It follows that  is equivalent
to . Therefore, . Dividing both sides of this equation by  yields , or . Thus, the value
of  for which the given expression is equivalent to , where , is . Note that 4/225, .0177, .0178, 0.017, and
0.018 are examples of ways to enter a correct answer.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6ce95fc8',
    'SAT',
    'Math',
    'Advanced Math',
    'Hard',
    'Nonlinear equations in one variable and systems of equations in two',
    'Which of the following is a solution to
the equation above?
A. 2
B.
C.
D.',
    'D',
    '{"type":"multiple_choice","choices":{"A":"2"}}',
    'Choice D is correct. A quadratic equation in the form , where a, b, and c are constants, can be solved
using the quadratic formula: . Subtracting  from both sides of the given equation yields
. Applying the quadratic formula, where , , and , yields
. This can be rewritten as . Since , or , the
equation can be rewritten as . Dividing 2 from both the numerator and denominator yields  or
. Of these two solutions, only  is present among the choices. Thus, the correct choice is D.
Choice A is incorrect and may result from a computational or conceptual error. Choice B is incorrect and may result from
using  instead of  as the quadratic formula. Choice C is incorrect and may
result from rewriting  as  instead of .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '4dd4efcf',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the given quadratic function,  and  are constants. The graph of  in the xy-plane is a parabola that opens
upward and has a vertex at the point , where  and  are constants. If  and , which of the
following must be true?
I.
II.
A. I only
B. II only
C. I and II
D. Neither I nor II',
    'D',
    '{"type":"multiple_choice","choices":{"A":"I only","B":"II only","C":"I and II","D":"Neither I nor II"}}',
    'Choice D is correct. It''s given that the graph of  in the xy-plane is a parabola with vertex . If ,
then for the graph of , the point with an x-coordinate of  and the point with an x-coordinate of  have the same
y-coordinate. In the xy-plane, a parabola is a symmetric graph such that when two points have the same y-coordinate, these
points are equidistant from the vertex, and the x-coordinate of the vertex is halfway between the x-coordinates of these two
points. Therefore, for the graph of , the points with x-coordinates  and  are equidistant from the vertex, ,
and  is halfway between  and . The value that is halfway between  and  is , or . Therefore, . The
equation defining  can also be written in vertex form, . Substituting  for  in this equation yields
, or . This equation is equivalent to , or
. Since , it follows that  and . Dividing both sides
of the equation  by  yields , or . Since , it''s not true that . Therefore, statement II isn''t true.
Substituting  for  in the equation  yields , or . Subtracting  from both sides of this
equation yields . If , then , or . Since  could be any value less than , it''s not necessarily
true that . Therefore, statement I isn''t necessarily true. Thus, neither I nor II must be true.
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f5aa5040',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the xy-plane, a line with equation  for some constant  intersects a parabola at exactly one point. If the parabola
has equation , what is the value of ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . The given linear equation is . Dividing both sides of this equation by  yields .
Substituting  for  in the equation of the parabola yields . Adding  and  to both sides of this
equation yields . Since it’s given that the line and the parabola intersect at exactly one point, the
equation  must have exactly one solution. An equation of the form , where , ,
and  are constants, has exactly one solution when the discriminant, , is equal to . In the equation
, where , , and , the discriminant is . Setting the discriminant
equal to  yields , or . Adding  to both sides of this equation yields . Dividing
both sides of this equation by  yields . Note that 81/4 and 20.25 are examples of ways to enter a correct answer.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '252a3b3a',
    'SAT',
    'Math',
    'Advanced Math',
    'Medium',
    'Nonlinear functions',
    'Which of the following could be the equation of the graph shown in the xy-plane?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Each of the given choices is an equation of the form , where , , , and
are positive constants. In the xy-plane, the graph of an equation of this form has x-intercepts at , , and
. The graph shown has x-intercepts at , , and . Therefore,  and . Of the given
choices, only choices A and B have  and . For an equation in the form , if all
values of  that are less than  or greater than  correspond to negative y-values, then the sum of all the exponents of the
factors on the right-hand side of the equation is even. In the graph shown, all values of  less than  or greater than
correspond to negative y-values. Therefore, the sum of all the exponents of the factors on the right-hand side of the
equation  must be even. For choice A, the sum of these exponents is , or , which
msup
is odd. For choice B, the sum of these exponents is , or , which is even. Therefore,
could be the equation of the graph shown.
Choice A is incorrect. For the graph of this equation, all values of  less than  correspond to positive, not negative, y-
values.
Choice C is incorrect. The graph of this equation has x-intercepts at , , and , rather than x-intercepts at
, , and .
Choice D is incorrect. The graph of this equation has x-intercepts at , , and , rather than x-intercepts at
, , and .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '58443765',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which ordered pair  is a solution to the given system of equations?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The second equation in the given system is . Substituting  for  in the first
equation of the given system yields . Subtracting  from both sides of this equation yields .
Subtracting  from both sides of this equation yields . Factoring out a common factor of  from the left-
hand side of this equation yields . It follows that  or . Dividing both sides of the equation
by  yields . Substituting  for  in the equation  yields , or . Therefore, a
solution to the given system of equations is the ordered pair .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '70482e20',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which expression is equivalent to ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The given expression can be rewritten as . Since the two terms of this expression are
both constant multiples of , they are like terms and can, therefore, be combined through addition. Adding like terms in the
expression  yields .
Choice A is incorrect. This is equivalent to , not .
Choice C is incorrect. This is equivalent to , not .
Choice D is incorrect. This is equivalent to , not .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b39d74a0',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'xy
00
11
28
327
The table shown includes some values of x and their corresponding values of y.
Which of the following graphs in the xy-plane could represent the relationship
between x and y ?
A.
B.
C.
Assessment
SAT
Test
Math
Domain
Advanced Math
Skill
Nonlinear functions
Difficulty
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Each pair of values shown in the table gives the ordered pair of coordinates for a point that lies on the
graph that represents the relationship between x and y in the xy-plane: , , , and . Only the graph in
choice B passes through the points listed in the table that are visible in the given choices.
Choices A, C, and D are incorrect. None of these graphs passes through the point .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'ea6d05bb',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The expression  is equivalent to the expression , where , , and  are constants. What
is the value of ?',
    '-419',
    '{"type":"free_response"}',
    'The correct answer is . It''s given that the expression  is equivalent to the expression
, where , , and  are constants. Applying the distributive property to the given expression,
, yields , which can be rewritten as
. Combining like terms yields . Since this expression is equivalent to
, it follows that the value of  is .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '722de804',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'What is the sum of the solutions to the given equation?',
    '94',
    '{"type":"free_response"}',
    'The correct answer is . Taking the square root of each side of the given equation yields  or .
Adding  to both sides of the equation  yields . Adding  to both sides of the equation
yields . Therefore, the sum of the solutions to the given equation is , or .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0536ad4f',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which expression is equivalent to ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Combining like terms inside the parentheses of the given expression, , yields
. Combining like terms in this resulting expression yields .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '433184f1',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Which expression is equivalent to ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The expression  can be rewritten as . To add the two terms of this
expression, the terms can be rewritten with a common denominator. Since , the expression  can be rewritten
as . Since , the expression  can be rewritten as . Therefore, the expression
can be rewritten as , which is equivalent to . Applying the
distributive property to each term of the numerator yields , or  . Adding like terms in the
numerator yields .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '1d3fee25',
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
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. Using the distributive property to multiply 3 and  gives , which can be rewritten as
.
Choice A is incorrect and may result from rewriting the given expression as . Choice B is incorrect and may
result from incorrectly rewriting the expression as . Choice D is incorrect and may result from incorrectly
rewriting the expression as .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '4ca30186',
    'SAT',
    'Math',
    'Advanced Math',
    'Easy',
    'Nonlinear equations in one variable and systems of equations in two',
    'The graph of a system of a linear equation and a nonlinear equation is shown. What is the solution  to this system?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. The solution to the system of two equations corresponds to the point where the graphs of the equations
intersect. The graphs of the linear equation and the nonlinear equation shown intersect at the point . Thus, the solution
to the system is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '911383f2',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'What is the product of the solutions to
the given equation?
A. 8
B. 3
C.
D.',
    'D',
    '{"type":"multiple_choice","choices":{"A":"8","B":"3"}}',
    'Choice D is correct. By the zero-product property, if , then , , or . Solving
each of these equations for  yields , , or . The product of these solutions is .
Choice A is incorrect and may result from sign errors made when solving the given equation. Choice B is incorrect and may
result from finding the sum, not the product, of the solutions. Choice C is incorrect and may result from finding the sum, not
the product, of the solutions in addition to making sign errors when solving the given equation.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd8789a4c',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the expression above, b and c are positive integers. If the expression is
equivalent to  and , which of the following could be the value of c ?
A. 4
B. 6
C. 8
D. 10',
    'A',
    '{"type":"multiple_choice","choices":{"A":"4","B":"6","C":"8","D":"10"}}',
    'Choice A is correct. If the given expression is equivalent to , then , where x isn’t equal to b. Multiplying
both sides of this equation by  yields . Since the right-hand side of this equation is in factored
form for the difference of squares, the value of c must be a perfect square. Only choice A gives a perfect square for the value
of c.
Choices B, C, and D are incorrect. None of these values of c produces a difference of squares. For example, when 6 is
substituted for c in the given expression, the result is . The expression  can’t be factored with integer values,
and therefore  isn’t equivalent to .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '49efde89',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The expression  is equivalent to  for some
constant a. What is the value of a ?
A. 2
B. 3
C. 4
D. 7',
    'D',
    '{"type":"multiple_choice","choices":{"A":"2","B":"3","C":"4","D":"7"}}',
    'Choice D is correct. It’s given that  is equivalent to  for some constant a. Distributing the x over each term
in the parentheses gives , which is in the same form as the first given expression, . The coefficient of the
second term in  is 7. Therefore, the value of a is 7.
Choice A is incorrect. If the value of a were 2, then  would be equivalent to , which isn’t equivalent to
. Choice B is incorrect. If the value of a were 3, then  would be equivalent to , which isn’t
equivalent to . Choice C is incorrect. If the value of a were 4, then  would be equivalent to , which
isn’t equivalent to .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e9349667',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'If  and  are the two solutions to the system of equations
above, what is the value of  ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The system of equations can be solved using the substitution method. Solving the second equation for y
gives y = –x – 1. Substituting the expression –x – 1 for y into the first equation gives –x – 1 = x + 2x + 1. Adding x + 1 to
both sides of the equation yields x + 3x + 2 = 0. The left-hand side of the equation can be factored by finding two numbers
whose sum is 3 and whose product is 2, which gives (x + 2)(x + 1) = 0. Setting each factor equal to 0 yields x + 2 = 0 and x +
1 = 0, and solving for x yields x = –2 or x = –1. These values of x can be substituted for x in the equation y = –x – 1 to find the
corresponding y-values: y = –(–2) – 1 = 2 – 1 = 1 and y = –(–1) – 1 = 1 – 1 = 0. It follows that (–2, 1) and (–1, 0) are the
solutions to the given system of equations. Therefore, (x, y) = (–2, 1), (x, y) = (–1, 0), and y + y = 1 + 0 = 1.
Choice A is incorrect. The solutions to the system of equations are (x, y) = (–2, 1) and (x, y) = (–1, 0). Therefore, –3 is the
sum of the x-coordinates of the solutions, not the sum of the y-coordinates of the solutions. Choices B and C are incorrect
and may be the result of computation or substitution errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f880f910',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The area of a triangle is  square centimeters. The length of the base of the triangle is  centimeters greater than the
height of the triangle. What is the height, in centimeters, of the triangle?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The area, , of a triangle is given by the formula , where  represents the length of the base of
the triangle and  represents its height. It’s given that the area of a triangle is  square centimeters and that the length of
the base of this triangle is  centimeters greater than the height of the triangle. Let  represent the height, in centimeters,
of the triangle. It follows that the length of the base of the triangle can be expressed as . Substituting  for ,  for
, and  for  in the formula  yields , or . Multiplying both sides
of this equation by  yields . Applying the distributive property on the right-hand side of this equation
yields . Subtracting  from both sides of this equation yields . In factored form,
this equation is equivalent to . Applying the zero product property, it follows that  or
. Subtracting  from both sides of the equation  yields . Adding  to both sides of the
equation  yields . Since  represents the height of the triangle, it must be positive. Therefore, the height,
in centimeters, of the triangle is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '5377d9cf',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'If ,
what is  ?
A. –5
B. –2
C. 2
D. 5',
    'A',
    '{"type":"multiple_choice","choices":{"A":"–5","B":"–2","C":"2","D":"5"}}',
    'Choice A is correct. Substituting –1 for x in the equation that defines f gives . Simplifying the
expressions in the numerator and denominator yields , which is equal to  or –5.
Choices B, C, and D are incorrect and may result from misapplying the order of operations when substituting –1 for x.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a0b4103e',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The expression  can be rewritten as , where k is a
positive constant. What is the value of k ?
A. 2
B. 6
C.
D.',
    'D',
    '{"type":"multiple_choice","choices":{"A":"2","B":"6"}}',
    'Choice D is correct. Factoring out the coefficient , the given expression can be rewritten as . The expression
can be approached as a difference of squares and rewritten as . Therefore, k must be .
Choice A is incorrect. If k were 2, then the expression given would be rewritten as , which is equivalent to
, not .
Choice B is incorrect. This may result from incorrectly factoring the expression and finding  as the factored
form of the expression. Choice C is incorrect. This may result from incorrectly distributing the  and rewriting the
expression as .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd675744f',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following is the graph in the xy-
plane of the given equation?
A.
B.
C.
D.
Assessment
SAT
Test
Math
Domain
Advanced Math
Skill
Nonlinear functions
Difficulty',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The y-intercept of the graph of an equation is the point , where b is the value of y when . For
the given equation,  when . It follows that the y-intercept of the graph of the given equation is . Additionally,
for the given equation, the value of y doubles for each increase of 1 in the value of x. Therefore, the graph contains the points
, , , and . Only the graph shown in choice D passes through these points.
Choices A and B are incorrect because these are graphs of decreasing, not increasing, exponential functions. Choice C is
incorrect because the value of y increases by a growth factor greater than 2 for each increase of 1 in the value of x.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '78d5f91a',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'For the function f defined above, what is
the value of ?
A.
B.
C. 7
D. 11',
    'C',
    '{"type":"multiple_choice","choices":{"C":"7","D":"11"}}',
    'Choice C is correct. Substituting  for x in the given function f gives , which
simplifies to . This further simplifies to , or .
Choice A is incorrect and may result from correctly substituting  for x in the function but incorrectly simplifying the
resulting expression to , or . Choice B is incorrect and may result from arithmetic errors.
Choice D is incorrect and may result from correctly substituting  for x in the function but incorrectly simplifying the
expression to , or 11.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '22fd3e1f',
    'SAT',
    'Math',
    'Advanced Math',
    'Hard',
    'Equivalent expressions',
    'Which of the following expressions is
equivalent to , for  ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Since  and , the fraction can be written as
. It is given that , so the common factor  is not equal to 0. Therefore, the fraction can be further
simplified to .
Choice A is incorrect. The expression  is not equivalent to  because at ,  as a value of 1 and
has a value of 0.
Choice B is incorrect and results from omitting the factor x in the factorization of . Choice C is incorrect and may result
from incorrectly factoring  as  instead of .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '71014fb1',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'How many distinct real solutions does the given equation have?
A. Exactly one
B. Exactly two
C. Infinitely many
D. Zero',
    'D',
    '{"type":"multiple_choice","choices":{"A":"Exactly one","B":"Exactly two","C":"Infinitely many","D":"Zero"}}',
    'Choice D is correct. Any quantity that is positive or negative in value has a positive value when squared. Therefore, the left-
hand side of the given equation is either positive or zero for any value of . Since the right-hand side of the given equation is
negative, there is no value of  for which the given equation is true. Thus, the number of distinct real solutions for the given
equation is zero.
Choices A, B, and C are incorrect and may result from conceptual errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '68607eca',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'On April , there were  views of an advertisement posted on a website. Every  days after April , the number of views of
the advertisement had increased by  of the number of views  days earlier. The function  gives the predicted number
of views  days after April . Which equation defines ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. It’s given that on April , there were  views of the advertisement. It’s also given that every  days
after April , the number of views of the advertisement had increased by  of the number of views  days earlier. This
situation can be represented by an exponential function of the form , where  is the number of views
on April  and every  days after April , the number of views had increased by  of the number of views  days earlier. It
follows that , , and . Substituting  for ,  for , and  for  in the equation
yields , or .
Choice A is incorrect. This function gives the predicted number of views for an advertisement for which every  days, the
number of views was , rather than increased by , of the number of views  days earlier.
Choice B is incorrect. This function gives the predicted number of views for an advertisement for which every  days, the
number of views was  of the number of views  days earlier, rather than an advertisement for which every  days, the
number of views had increased by  of the number of views  days earlier.
Choice D is incorrect. This function gives the predicted number of views for an advertisement for which every  days, rather
than every  days, the number of views had increased by  of the number of views  days earlier, rather than  days
earlier.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'c4cd5bcc',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the xy-plane, the y-coordinate of the y-intercept of the graph of the function f is c.
Which of the following must be equal to c ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. A y-intercept is the point in the xy-plane where the graph of the function crosses the y-axis, which is
where . It’s given that the y-coordinate of the y-intercept of the graph of function f is c. It follows that the coordinate
pair representing the y-intercept must be . Therefore, c must equal .
Choices B, C, and D are incorrect because , , and would represent the y-value of the coordinate where ,
, and , respectively.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '2c88af4d',
    'SAT',
    'Math',
    'Advanced Math',
    'Hard',
    'Equivalent expressions',
    'The expression , where  and , is
equivalent to which of the following?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. For  and ,  and  are equivalent to  and , respectively. Also,  and  are
equivalent to  and , respectively. Therefore, the given expression can be rewritten as .
Choices A, B, and C are incorrect because these choices are not equivalent to the given expression for  and .
For example, for  and , the value of the given expression is ; the values of the choices, however, are ,
, and 1, respectively.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '3d12b1e0',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the given equation,  is a constant. The equation has exactly one solution. What is the value of ?',
    '-1',
    '{"type":"free_response"}',
    'The correct answer is . A quadratic equation in the form , where , , and  are constants, has exactly
one solution when its discriminant, , is equal to . In the given equation, ,  and
. Substituting  for  and  for  in  yields , or . Since the given
equation has exactly one solution, . Subtracting  from both sides of this equation yields .
Dividing both sides of this equation by  yields . Therefore, the value of  is .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '203774bc',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The product of two positive integers is . If the first integer is  greater than twice the second integer, what is the smaller
of the two integers?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Let  be the first integer and let  be the second integer. If the first integer is  greater than twice the
second integer, then . If the product of the two integers is , then . Substituting  for  in
this equation results in . Distributing the  to both terms in the parentheses results in .
Subtracting  from both sides of this equation results in . The left-hand side of this equation can
be factored by finding two values whose product is , or , and whose sum is . The two values whose
product is  and whose sum is  are  and . Thus, the equation  can be rewritten as
, which is equivalent to , or . By the
zero product property, it follows that  and . Subtracting  from both sides of the equation
yields . Dividing both sides of this equation by  yields . Since  is a positive integer, the
value of  is not . Adding  to both sides of the equation  yields . Substituting  for  in the
equation  yields . Dividing both sides of this equation by  results in . Therefore, the two
integers are  and , so the smaller of the two integers is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect. This is the larger of the two integers.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'df71424b',
    'SAT',
    'Math',
    'Advanced Math',
    'Hard',
    'Nonlinear functions',
    '‒10‒8‒6‒4‒2246810
x
‒10
‒8
‒6
‒4
‒2
2
4
y
O
The graph of  is shown, where , and , , and  are constants. For how many values of  does
?
A. Three
B. Two
C. One
D. Zero',
    'D',
    '{"type":"multiple_choice","choices":{"A":"Three","B":"Two","C":"One","D":"Zero"}}',
    'Choice D is correct. Each point  on the graph of  in the xy-plane gives a value of  and its corresponding
value of , or . For any value of  for which , there is a corresponding point on the graph of  with a y-
coordinate of . A point with a y-coordinate of  is a point where the graph intersects the x-axis. It''s given that
, where , , and  are constants. In the xy-plane, the graph of an equation of this form will lie entirely either
above or below the horizontal line defined by . The part of the graph of  shown lies entirely below the
horizontal line defined by , and thus the entire graph of  must lie below the line defined by . It
follows that the graph of  will never intersect the x-axis. Therefore, there are zero values of x for which .
Choice A is incorrect and may result from conceptual errors.
Choice B is incorrect and may result from conceptual errors.
Choice C is incorrect and may result from conceptual errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '60fdb4d4',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which expression is equivalent to
?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The given expression  can be rewritten as .
Combining like terms yields .
Choices B, C, and D are incorrect and may be the result of errors when applying the distributive property.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '9afe2370',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The population P of a certain city y years after the last census is modeled by the equation below, where r is a constant
and  is the population when .
If during this time the population of the city decreases by a fixed percent each year,
which of the following must be true?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The term (1 + r) represents a percent change. Since the population is decreasing, the percent change
must be between 0% and 100%. When the percent change is expressed as a decimal rather than as a percent, the percentage
change must be between 0 and 1. Because (1 + r) represents percent change, this can be expressed as 0 < 1 + r < 1.
Subtracting 1 from all three terms of this compound inequality results in –1 < r < 0.
Choice A is incorrect. If r < –1, then after 1 year, the population P would be a negative value, which is not possible. Choices C
and D are incorrect. For any value of r > 0, 1 + r > 1, and the exponential function models growth for positive values of the
exponent. This contradicts the given information that the population is decreasing.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6d04c89d',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The expression  is equivalent to , where b is a constant and . What is the value of b?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. Since the given expressions are equivalent and the numerator of the second expression is  of the
numerator of the first expression, the denominator of the second expression must also be  of the denominator of the first
expression. By the distributive property,   is equivalent to , or . Therefore, the value of  is
.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '66bce0c1',
    'SAT',
    'Math',
    'Advanced Math',
    'Hard',
    'Nonlinear equations in one variable and systems of equations in two',
    'What is the solution set of the
equation above?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Subtracting 4 from both sides of  isolates the radical expression on the left side of
the equation as follows: . Squaring both sides of  yields . This
equation can be rewritten as a quadratic equation in standard form: . One way to solve this quadratic
equation is to factor the expression  by identifying two numbers with a sum of  and a product of . These
numbers are  and 1. So the quadratic equation can be factored as . It follows that 5 and  are the
solutions to the quadratic equation. However, the solutions must be verified by checking whether 5 and satisfy the
original equation, . When , the original equation gives , or ,
which is false. Therefore,  does not satisfy the original equation. When , the original equation gives
, or , which is true. Therefore,  is the only solution to the original equation, and so the
solution set is .
Choices A, C, and D are incorrect because each of these sets contains at least one value that results in a false statement
when substituted into the given equation. For instance, in choice D, when 0 is substituted for x into the given equation, the
result is , or . This is not a true statement, so 0 is not a solution to the given equation.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '97e50fa2',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The graph of the function f, defined by , is shown in the
xy-plane above. If the function g (not shown) is defined by , what is
one possible value of a such that  ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is either 2 or 8. Substituting  in the definitions for f and g gives  and
, respectively. If , then . Subtracting 10 from both sides of this
equation gives . Multiplying both sides by  gives . Expanding  gives
. Combining the like terms on one side of the equation gives . One way to solve this
equation is to factor  by identifying two numbers with a sum of  and a product of 16. These numbers are
and , so the quadratic equation can be factored as . Therefore, the possible values of a are either 2
or 8. Note that 2 and 8 are examples of ways to enter a correct answer.
Alternate approach: Graphically, the condition  implies the graphs of the functions  and
intersect at . The graph  is given, and the graph of  may be sketched as a line with y-intercept 10 and
a slope of  (taking care to note the different scales on each axis). These two graphs intersect at  and .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a31417d1',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'From 2005 through 2014, the number of music CDs sold in the United States
declined each year by approximately 15% of the number sold the preceding year. In
2005, approximately 600 million CDs were sold in the United States. Of the
following, which best models C, the number of millions of CDs sold in the United
States, t years after 2005?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. A model for a quantity C that decreases by a certain percentage per time period t is an exponential
equation in the form , where I is the initial value at time  for r% annual decline. It’s given that C is the
number of millions of CDs sold in the United States and that t is the number of years after 2005. It’s also given that 600
million CDs were sold at time , so . This number declines by 15% per year, so . Substituting these values
into the equation produces , or .
Choice A is incorrect and may result from errors made when representing the percent decline. Choices C and D are incorrect.
These equations model exponential increases in CD sales, not exponential decreases.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a4f61d75',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the equation above, a is a constant and . If the equation has two integer
solutions, what is a possible value of a ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is either 7, 8, or 13. Since the given equation has two integer solutions, the expression on the left-hand
side of this equation can be factored as , where c and d are also integers. The product of c and d must equal
the constant term of the original quadratic expression, which is 12. Additionally, the sum of c and d must be a negative
number since it’s given that , but the sign preceding a in the given equation is negative. The possible pairs of values for
c and d that satisfy both of these conditions are  and ,  and , and  and . Since the value of  is the
sum of c and d, the possible values of  are , , and . It follows
that the possible values of a are 7, 8, and 13. Note that 7, 8, and 13 are examples of ways to enter a correct answer.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '75a32330',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which graph represents the given system of equations?
A.
Assessment
SAT
Test
Math
Domain
Advanced Math
Skill
Nonlinear equations
in one variable and
systems of
equations in two
variables
Difficulty
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The graph of a quadratic equation in the form  has its vertex at . The first equation in
the given system of equations is , so the graph of this quadratic equation has its vertex at . The graph
of a linear equation of the form  has a slope of  and a y-intercept at . The second equation in the given
system of equations is , so the graph of this linear equation has a slope of  and a y-intercept at . Of
the choices, only choice A has the graph of a quadratic equation with its vertex at  and the graph of a linear equation
with a slope of  and a y-intercept at .
Choice B is incorrect. This graph represents a system in which the second equation is , not .
Choice C is incorrect. This graph represents a system in which the first equation is , not .
Choice D is incorrect. This graph represents a system in which the first equation is , not , and
the second equation is , not .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '802549ac',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following is a solution to
the given equation?
A. 1
B. 0
C.
D.',
    'A',
    '{"type":"multiple_choice","choices":{"A":"1","B":"0"}}',
    'Choice A is correct. Applying the distributive property on the left- and right-hand sides of the given equation yields
, or . Subtracting  from and adding  to both
sides of this equation yields . Subtracting 6 from both sides of this equation and then dividing both sides by 10
yields .
Choices B, C, and D are incorrect. Substituting 0, , or  for x in the given equation will result in a false statement. If
, the given equation becomes ; if , the given equation becomes ; and if , the given
equation becomes . Therefore, the values 0, , and  aren’t solutions to the given equation.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd139cf4b',
    'SAT',
    'Math',
    'Advanced Math',
    'Hard',
    'Nonlinear functions',
    'The function  is defined by the given equation. The function  is defined by . Which expression represents
the maximum value of ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. It’s given that function  is defined by  and that . Substituting
for  in  yields , or . The maximum value of
can be found by completing the square to rewrite the equation defining  in the form , where the
maximum value of the function is , which occurs when , and  is a negative constant. The equation
is equivalent to , which can be rewritten as
, or . This equation is in the form
, where , , and . Thus, the maximum value of  is .
Alternate approach: Since the function  is a quadratic function, the maximum value of  occurs at the value of  that’s
halfway between the two zeros of the function. The zeros of function  can be found by substituting  for  in the
equation defining , which yields . This equation can be rewritten as . By the zero product
property, it follows that  or . Subtracting  from each side of the equation  yields
. Dividing each side of this equation by  yields . Therefore, the zeros of function  are  and . The
value that’s halfway between  and  can be found by calculating the average of  and , which is , or . It follows
that the maximum of function  occurs when . Substituting  for  in the equation defining function  yields
, which is equivalent to . Multiplying  by  in this equation to
get a common denominator yields , or , which is equivalent to
. Thus, the maximum value of  is . Since the equation defining  is , the
maximum value of  is  greater than the maximum value of . It follows that the maximum value of  is
.
Choice A is incorrect and may result from conceptual or calculation errors.
msup
msup
msup
msup
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'c81b6c57',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the expression  , p is a constant. This expression
is equivalent to the expression . What is the value of p ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Using the distributive property, the first given expression can be rewritten as 6x + 3px + 24 – 16px – 64x
+ 24, and then rewritten as 6x + (3p – 16p – 64)x + 24. Since the expression 6x + (3p – 16p – 64)x + 24 is equivalent to 6x
– 155x + 24, the coefficients of the x terms from each expression are equivalent to each other; thus 3p – 16p – 64 = –155.
Combining like terms gives –13p  – 64 = –155. Adding 64 to both sides of the equation gives –13p = –71. Dividing both
sides of the equation by –13 yields p = 7.
Choice A is incorrect. If p = –3, then the first expression would be equivalent to 6x – 25x + 24. Choice C is incorrect. If p =
13, then the first expression would be equivalent to 6x – 233x + 24. Choice D is incorrect. If p = 155, then the first
expression would be equivalent to 6x – 2,079x + 24.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a1bf1c4e',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following is equivalent to
the expression above?
A. (x + 3) + 5
B. (x + 3) – 5
C. (x – 3) + 5
D. (x – 3) – 5',
    'B',
    '{"type":"multiple_choice","choices":{"A":"(x + 3) + 5","B":"(x + 3) – 5","C":"(x – 3) + 5","D":"(x – 3) – 5"}}',
    'Choice B is correct. The given quadratic expression is in standard form, and each answer choice is in vertex form.
Completing the square converts the expression from standard form to vertex form. The first step is to rewrite the expression
as follows: . The first three terms of the revised expression can be rewritten as a perfect
square as follows: . Combining the constant terms gives .
Choice A is incorrect. Squaring the binomial and simplifying the expression in choice A gives . Combining like
terms gives , not . Choice C is incorrect. Squaring the binomial and simplifying the expression in
choice C gives . Combining like terms gives , not . Choice D is incorrect. Squaring
the binomial and simplifying the expression in choice D gives . Combining like terms gives , not
.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '5355c0ef',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The given expression can be rewritten as , where  is a constant. What is the value of ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . It''s given that the expression  can be rewritten as .
Applying the distributive property to the expression  yields . Therefore,
can be rewritten as . It follows that in the expressions
and , the coefficients of  are equivalent, the coefficients of  are equivalent,
and the constant terms are equivalent. Therefore, , , and . Solving any of these equations
for  yields the value of . Dividing both sides of the equation  by  yields . Therefore, the value of  is
. Note that .09 and 9/100 are examples of ways to enter a correct answer.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '8462b105',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The function  gives the product of a number, , and a number that is  more than . Which equation defines ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. It’s given that the function  gives the product of a number, , and a number that is  more than . A
number that is  more than  can be represented by the expression . Therefore,  can be defined by the equation
, or .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'ce579859',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'A model estimates that at the end of each year from  to , the number of squirrels in a population was  more
than the number of squirrels in the population at the end of the previous year. The model estimates that at the end of ,
there were  squirrels in the population. Which of the following equations represents this model, where  is the estimated
number of squirrels in the population  years after the end of  and ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Since the model estimates that the number of squirrels in the population increased by a fixed
percentage, , each year, the model can be represented by an exponential equation of the form ,
where  is the estimated number of squirrels in the population at the end of , and the model estimates that at the end
of each year, the number is  more than the number at the end of the previous year. Since the model estimates that at the
end of each year, the number was  more than the number at the end of the previous year, . Substituting
for  in the equation  yields , which is equivalent to , or .
It’s given that the estimated number of squirrels at the end of  was . This means that when , .
Substituting  for  and  for  in the equation  yields , or . Dividing each side of
this equation by  yields . Substituting  for  in the equation  yields .
Choice A is incorrect. This equation represents a model where at the end of each year, the estimated number of squirrels
was  of, not  more than, the estimated number at the end of the previous year.
Choice C is incorrect. This equation represents a model where at the end of each year, the estimated number of squirrels
was  of, not  more than, the estimated number at the end of the previous year, and the estimated number of
squirrels at the end of , not the end of , was .
Choice D is incorrect. This equation represents a model where the estimated number of squirrels at the end of , not the
end of , was .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '88a0c425',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the given equation,  is a constant. The equation has exactly one solution. What is the value of ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. It''s given that the equation , where  is a constant, has exactly one solution. A
quadratic equation of the form  has exactly one solution if and only if its discriminant, , is equal
to zero. It follows that for the given equation,  and . Substituting  for  and  for  in  yields
, or . Since the discriminant must equal zero, it follows that . Subtracting  from
both sides of this equation yields . Dividing each side of this equation by  yields . Therefore, the value
of  is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'cfff8f8e',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'At the time of posting a video, a social media channel had  subscribers. Each day for five days after the video was posted,
the number of subscribers doubled from the number the previous day. Which equation gives the total number of subscribers,
, to the channel  days after the video was posted?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. It''s given that each day for five days after a social media channel posted a video, the number of
subscribers doubled from the number the previous day. Since the number of subscribers doubled each day, the relationship
between  and  can be represented by an exponential equation of the form , where  is the number of subscribers
at the time of posting the video and the number of subscribers to the channel increases by a factor of  each day. It''s given
that at the time of posting the video, the channel had  subscribers. Therefore, . It''s also given that the number of
subscribers doubled, or increased by a factor of , from the number the previous day. Therefore, . Substituting  for
and  for  in the equation  yields .
Choice A is incorrect. This equation gives the total number of subscribers to a channel for which the initial number of
subscribers was  and the number increased each day by  times the number from the previous day.
Choice C is incorrect. This equation gives the total number of subscribers to a channel for which the number of subscribers
each day was half the number from the previous day, rather than double the number.
Choice D is incorrect and may result from conceptual errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '50e40f08',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If the given function  is graphed in the xy-plane, where , what is the x-coordinate of an x-intercept of the graph?',
    '',
    '{"type":"free_response"}',
    'The correct answer is either  or . The x-intercepts of a graph in the xy-plane are the points where . Thus, for an x-
intercept of the graph of , . Substituting  for  in the equation  yields
. By the zero product property,  and . Subtracting  from both sides of the
equation  yields . Adding  to both sides of the equation  yields . Therefore, the x-
coordinates of the x-intercepts of the graph of  are  and . Note that -6 and 4 are examples of ways to enter a
correct answer.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '11ccf3e1',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The given equation relates the numbers , , and . Which equation correctly expresses  in terms of  and ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. Subtracting  from each side of the given equation results in . Dividing each side of
this equation by  results in .
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '7bd10ef3',
    'SAT',
    'Math',
    'Advanced Math',
    'Hard',
    'Nonlinear equations in one variable and systems of equations in two',
    'In the equation above, t is a constant. If the equation has no real solutions, which
of the following could be the value of t ?
A.
B.
C. 1
D. 3',
    'A',
    '{"type":"multiple_choice","choices":{"C":"1","D":"3"}}',
    'Choice A is correct. The number of solutions to any quadratic equation in the form , where a, b, and c are
constants, can be found by evaluating the expression , which is called the discriminant. If the value of  is a
positive number, then there will be exactly two real solutions to the equation. If the value of  is zero, then there will
be exactly one real solution to the equation. Finally, if the value of  is negative, then there will be no real solutions to
the equation.
The given equation  is a quadratic equation in one variable, where t is a constant. Subtracting t from both sides
of the equation gives . In this form, , , and . The values of t for which the equation has
no real solutions are the same values of t for which the discriminant of this equation is a negative value. The discriminant is
equal to ; therefore, . Simplifying the left side of the inequality gives .
Subtracting 16 from both sides of the inequality and then dividing both sides by 8 gives . Of the values given in the
options,  is the only value that is less than . Therefore, choice A must be the correct answer.
Choices B, C, and D are incorrect and may result from a misconception about how to use the discriminant to determine the
number of solutions of a quadratic equation in one variable.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '13e5a5d5',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'What is the positive solution to the given equation?',
    '9',
    '{"type":"free_response"}',
    'The correct answer is . Dividing both sides of the given equation by  yields . By the definition of absolute value, if
, then  or . Therefore, the two solutions to the equation  are  and . It follows that the
positive solution to the given equation is .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b5c43226',
    'SAT',
    'Math',
    'Advanced Math',
    'Easy',
    'Nonlinear functions',
    'What is the y-intercept of the graph shown?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The y-intercept of a graph in the xy-plane is the point at which the graph crosses the y-axis. The graph
shown crosses the y-axis at the point . Therefore, the y-intercept of the graph shown is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6e02cd78',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the xy-plane, what is the y-coordinate of the point of intersection of the
graphs of  and  ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 1. The point of intersection of the graphs of the given equations is the solution to the system of the
two equations. Since  and , it follows that , or . Applying the
distributive property to the left-hand side of this equation yields . Subtracting  from and adding 3 to
both sides of this equation yields . Factoring the left-hand side of this equation yields . By
the zero product property, if , it follows that . Adding 2 to both sides of  yields .
Substituting 2 for x in either of the given equations yields . For example, substituting 2 for x in the second given
equation yields , or . Therefore, the point of intersection of the graphs of the given equations is . The
y-coordinate of this point is 1.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '18e35375',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The function  is defined by the given equation. For what value of  does  reach its minimum?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It''s given that , which can be rewritten as . Since the
coefficient of the -term is positive, the graph of  in the xy-plane opens upward and reaches its minimum value at
its vertex. The x-coordinate of the vertex is the value of  such that  reaches its minimum. For an equation in the form
, where , , and  are constants, the x-coordinate of the vertex is . For the equation
, , , and . It follows that the x-coordinate of the vertex is , or .
Therefore,  reaches its minimum when the value of  is .
Alternate approach: The value of  for the vertex of a parabola is the x-value of the midpoint between the two x-intercepts of
the parabola. Since it’s given that , it follows that the two x-intercepts of the graph of
in the xy-plane occur when  and , or at the points  and . The midpoint between two points,
and , is . Therefore, the midpoint between  and  is , or
. It follows that  reaches its minimum when the value of  is .
Choice A is incorrect. This is the y-coordinate of the y-intercept of the graph of  in the xy-plane.
Choice B is incorrect. This is one of the x-coordinates of the x-intercepts of the graph of  in the xy-plane.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '341ba5db',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'What is the minimum value of the given function?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. For a quadratic function defined by an equation of the form , where , , and
are constants and , the minimum value of the function is . In the given function, , , and .
Therefore, the minimum value of the given function is .
Choice A is incorrect. This is the value of  for which the given function reaches its minimum value, not the minimum value
of the function.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '463eec13',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If , which of the following expressions is
equivalent to  ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Taking the square root of an exponential expression halves the exponent, so ,
which further reduces to . This can be rewritten as .
Choice A is incorrect and may result from neglecting the denominator of the given expression and from incorrectly
calculating the square root of 16. Choice B is incorrect and may result from rewriting  as  rather than . Choice C is
incorrect and may result from taking the square root of the variables in the numerator twice instead of once.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '35e05e19',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'A park ranger hung squirrel houses each in the shape of a right rectangular prism for fox squirrels. Each house has a height
of  inches. The length of each house''s base is  inches, which is  inch more than the width of the house''s base. Which
function  gives the volume of each house, in cubic inches, in terms of the length of the house''s base?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The volume of a prism is equal to the area of its base times its height. It''s given that the length of each
house''s base is  inches and that this length is  inch more than the width, in inches, of the house''s base. It follows that the
width, in inches, of the house''s base is . The area of a rectangle is the product of its length and its width. Therefore, the
area of the base of the house is  square inches. It''s given that the height of each house is  inches. Therefore, the
function  that gives the volume of each house, in cubic inches, in terms of the length of the house''s base  is
, or .
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '3de7a7d7',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which of the following is a solution to the
equation  ?
A. 1
B. 2
C. 3
D. 4',
    'B',
    '{"type":"multiple_choice","choices":{"A":"1","B":"2","C":"3","D":"4"}}',
    'Choice B is correct. Subtracting x from both sides of the given equation yields x – 4 = 0. Adding 4 to both sides of the
equation gives x = 4. Taking the square root of both sides of the equation gives x = 2 or x = –2. Therefore, x = 2 is one
solution to the original equation.
Alternative approach: Subtracting x from both sides of the given equation yields x – 4 = 0. Factoring this equation gives x
– 4 = (x + 2)(x – 2) = 0, such that x = 2 or x = –2. Therefore, x = 2 is one solution to the original equation.
Choices A, C, and D are incorrect and may be the result of computation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'dd3b1e1a',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'For the given function , the graph of  in the xy-plane passes through the point , where  is a constant. What
is the value of ?',
    '17',
    '{"type":"free_response"}',
    'The correct answer is . It''s given that the graph of  in the xy-plane passes through the point , where  is a
constant. It follows that  equals . Substituting  for  in the given function yields , or
. Therefore, the value of  is .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a255ae72',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If  and , which of the
following is equal to  ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. It’s given that  and . Using the distributive property, the expression  can
be rewritten as . Substituting  and  for  and , respectively, in this expression yields
. Expanding this expression yields
. Combining like terms, this expression can be rewritten as
.
Choices A, C, and D are incorrect and may result from an error in using the distributive property, substituting, or combining
like terms.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '652054da',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'An oceanographer uses the equation  to model the speed s, in knots, of an
ocean wave, where p represents the period of the wave, in seconds. Which of the
following represents the period of the wave in terms of the speed of the wave?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It’s given that p represents the period of the ocean wave, so the equation  can be solved for p to
represent the period of the wave in terms of the speed of the wave. Multiplying both sides of the equation by the reciprocal
of  will isolate p. This yields , which simplifies to . Therefore, .
Choices B, C, and D are incorrect and may result from errors made when rearranging the equation to solve for p.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a520ba07',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following expressions is equivalent
to the expression above?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. One of the properties of radicals is . Thus, the given expression can be rewritten as
. Simplifying by taking the cube root of each part gives x⋅ y, or xy.
Choices A, C, and D are incorrect and may be the result of incorrect application of the properties of exponents and radicals.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd4950429',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A rectangle has a length of  units and a width of  units. If the rectangle has an area of  square units, what is the
value of ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The area of a rectangle is equal to its length multiplied by its width. Multiplying the given length,  units,
by the given width,  units, yields  square units. If the rectangle has an area of  square units, it follows
that , or . Subtracting  from both sides of this equation yields .
Factoring the left-hand side of this equation yields . Applying the zero product property to this
equation yields two solutions:  and . Since  is the rectangle’s length, in units, which must be positive, the
value of  is .
Choice A is incorrect. This is the width, in units, of the rectangle, not the value of .
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect. This is the area, in square units, of the rectangle, not the value of .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'fcdf87b7',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If the ordered pair  satisfies the system of equations above,
what is one possible value of x ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is either 0 or 3. For an ordered pair to satisfy a system of equations, both the x- and y-values of the
ordered pair must satisfy each equation in the system. Both expressions on the right-hand side of the given equations are
equal to y, therefore it follows that both expressions on the right-hand side of the equations are equal to each other:
. This equation can be rewritten as , and then through factoring, the equation becomes
. Because the product of the two factors is equal to 0, it can be concluded that either  or , or
rather,  or . Note that 0 and 3 are examples of ways to enter a correct answer.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b80d10d7',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'What is the solution to the
equation above?
A. 0
B. 2
C. 3
D. 5',
    'B',
    '{"type":"multiple_choice","choices":{"A":"0","B":"2","C":"3","D":"5"}}',
    'Choice B is correct. Since  is equivalent to 1, the right-hand side of the given equation can be rewritten as
, or . Since the left- and right-hand sides of the equation  have the same
denominator, it follows that . Applying the distributive property of multiplication to the expression
yields , or . Therefore, . Subtracting x and 2 from both sides of this equation yields .
Choices A, C, and D are incorrect. If , then . This can be rewritten as , which is a false
statement. Therefore, 0 isn’t a solution to the given equation. Substituting 3 and 5 into the given equation yields similarly
false statements.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '4b6f0a3f',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'What is the sum of the solutions to the given equation?',
    '5',
    '{"type":"free_response"}',
    'The correct answer is . The given quadratic equation can be rewritten in factored form as . Based on
the zero product property, it follows that  or . Adding  to both sides of the equation  yields
. Subtracting  from both sides of the equation  yields . Therefore, the solutions to the given
equation are  and . It follows that the sum of the solutions to the given equation is , or .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '5bf0f84a',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The function above models the height h, in feet, of an object above ground
t seconds after being launched straight up in the air. What does the number 72
represent in the function?
A. The initial height, in feet, of the object
B. The maximum height, in feet, of the object
C. The initial speed, in feet per second, of the object
D. The maximum speed, in feet per second, of the object',
    'A',
    '{"type":"multiple_choice","choices":{"A":"The initial height, in feet, of the object","B":"The maximum height, in feet, of the object","C":"The initial speed, in feet per second, of the object","D":"The maximum speed, in feet per second, of the object"}}',
    'Choice A is correct. The variable t represents the seconds after the object is launched. Since , this means that the
height, in feet, at 0 seconds, or the initial height, is 72 feet.
Choices B, C, and D are incorrect and may be the result of misinterpreting the function in context.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '1697ffcf',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the xy-plane, the graph of  intersects the graph of  at the
points  and . What is the value of a ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 5. The intersection points of the graphs of  and  can be found by solving the
system consisting of these two equations. To solve the system, substitute x for y in the first equation. This gives
. Subtracting x from both sides of the equation gives . Factoring  out of each term on the
left-hand side of the equation gives . Therefore, the possible values for x are 0 and 5. Since , the two
intersection points are  and . Therefore, .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd46da42c',
    'SAT',
    'Math',
    'Advanced Math',
    'Easy',
    'Nonlinear functions',
    'The function f is defined as shown. Which of the following graphs in the xy-
plane could be the graph of  ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. For the quadratic function , the vertex of the graph is , and because the  term is
positive, the vertex is the minimum of the function. Choice D is the only option that meets these conditions.
Choices A, B, and C are incorrect. The vertex of each of these graphs doesn’t correspond to the minimum of the given
function.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '87a3de81',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If a is a solution of the equation above and
, what is the value of a ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 3. The solution to the given equation can be found by factoring the quadratic expression. The factors
can be determined by finding two numbers with a sum of 1 and a product of . The two numbers that meet these
constraints are 4 and . Therefore, the given equation can be rewritten as . It follows that the solutions
to the equation are  or . Since it is given that , a must equal 3.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '290cdc2c',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which expression is equivalent to , where ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. An expression in the form , where  and , is equivalent to . It follows that , where
, is equivalent to .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e1391dd6',
    'SAT',
    'Math',
    'Advanced Math',
    'Medium',
    'Nonlinear functions',
    'According to Moore’s law, the number of transistors included on microprocessors
doubles every 2 years. In 1985, a microprocessor was introduced that had 275,000
transistors. Based on this information, in which of the following years does
Moore’s law estimate the number of transistors to reach 1.1 million?
A. 1987
B. 1989
C. 1991
D. 1994',
    '',
    '{"type":"multiple_choice","choices":{"A":"1987","B":"1989","C":"1991","D":"1994"}}',
    'Choice B is correct. Let x be the number of years after 1985. It follows that  represents the number of 2-year periods that
will occur within an x-year period. According to Moore’s law, every 2 years, the number of transistors included on
microprocessors is estimated to double. Therefore, x years after 1985, the number of transistors will double  times. Since
the number of transistors included on a microprocessor was 275,000, or .275 million, in 1985, the estimated number of
transistors, in millions, included x years after 1985 can be modeled as . The year in which the number of
transistors is estimated to be 1.1 million is represented by the value of x when . Dividing both sides of this
equation by .275 yields , which can be rewritten as . Since the exponential equation has equal bases on
each side, it follows that the exponents must also be equal: . Multiplying both sides of the equation  by 2
yields . Therefore, according to Moore’s law, 4 years after 1985, or in 1989, the number of transistors included on
microprocessors is estimated to reach 1.1 million.
Alternate approach: According to Moore’s law, 2 years after 1985 (in 1987), the number of transistors included on a
microprocessor is estimated to be , or 550,000, and 2 years after 1987 (in 1989), the number of transistors
included on microprocessors is estimated to be , or 1,100,000. Therefore, the year that Moore’s law estimates
the number of transistors on microprocessors to reach 1.1 million is 1989.
Choices A, C, and D are incorrect. According to Moore’s law, the number of transistors included on microprocessors is
estimated to reach 550,000 in 1987, 2.2 million in 1991, and about 6.2 million in 1994.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0980fcdd',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A solution to the given system of equations is . Which of the
following is a possible value of xy ?
A. 0
B. 6
C. 12
D. 36',
    'A',
    '{"type":"multiple_choice","choices":{"A":"0","B":"6","C":"12","D":"36"}}',
    'Choice A is correct. Solutions to the given system of equations are ordered pairs  that satisfy both equations in the
system. Adding the left-hand and right-hand sides of the equations in the system yields , or
. Subtracting y from both sides of this equation yields . Taking the square root of both sides of this
equation yields  and . Therefore, there are two solutions to this system of equations, one with an x-coordinate
of 6 and the other with an x-coordinate of . Substituting 6 for x in the second equation yields , or ;
therefore, one solution is . Similarly, substituting  for x in the second equation yields , or ;
therefore, the other solution is . It follows then that if  is a solution to the system, then possible values of
are  and . Only 0 is among the given choices.
Choice B is incorrect. This is the x-coordinate of one of the solutions, . Choice C is incorrect and may result from
conceptual or computational errors. Choice D is incorrect. This is the square of the x-coordinate of one of the solutions,
.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '635f54ee',
    'SAT',
    'Math',
    'Advanced Math',
    'Hard',
    'Nonlinear functions',
    'The surface area of a cube is , where a is a positive constant. Which of the
following gives the perimeter of one face of the cube?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. A cube has 6 faces of equal area, so if the total surface area of a cube is , then the area of one
face is . Likewise, the area of one face of a cube is the square of one of its edges; therefore, if the area of one face is
, then the length of one edge of the cube is . Since the perimeter of one face of a cube is four times the length of
one edge, the perimeter is .
Choice A is incorrect because if the perimeter of one face of the cube is , then the total surface area of the cube is
, which is not . Choice C is incorrect because if the perimeter of one face of the cube is 4a, then
the total surface area of the cube is , which is not . Choice D is incorrect because if the perimeter of
one face of the cube is 6a, then the total surface area of the cube is , which is not .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'ebe4bde0',
    'SAT',
    'Math',
    'Advanced Math',
    'Easy',
    'Nonlinear functions',
    'The quadratic function graphed above models a particular measure of plant
diversity as a function of the elevation in a region of Switzerland. According to the
model, which of the following is closest to the elevation, in meters, at which plant
diversity is greatest?
A. 13,500
B. 3,000
C. 1,250
D. 250',
    'C',
    '{"type":"multiple_choice","choices":{"A":"13,500","B":"3,000","C":"1,250","D":"250"}}',
    'Choice C is correct. Each point  on the graph represents the elevation x, in meters, and the corresponding measure of
plant diversity y in a region of Switzerland. Therefore, the point on the graph with the greatest y-coordinate represents the
location that has the greatest measure of plant diversity in the region. The greatest y-coordinate of any point on the graph is
approximately 13,500. The x-coordinate of that point is approximately 1,250. Therefore, the closest elevation at which the
plant diversity is the greatest is 1,250 meters.
Choice A is incorrect. This value is closest to the greatest y-coordinate of any point on the graph and therefore represents
the greatest measure of plant diversity, not the elevation where the greatest measure of plant diversity occurs. Choice B is
incorrect. At an elevation of 3,000 meters the measure of plant diversity is approximately 4,000. Because there are points on
the graph with greater y-coordinates, 4,000 can’t be the greatest measure of plant diversity, and 3,000 meters isn’t the
elevation at which the greatest measure of plant diversity occurs. Choice D is incorrect. At an elevation of 250 meters, the
measure of plant diversity is approximately 11,000. Because there are points on the graph with greater y-coordinates, 11,000
can’t be the greatest measure of plant diversity and 250 meters isn’t the elevation at which the greatest measure of plant
diversity occurs.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'c7a187a7',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If the given function  is graphed in the xy-plane, where , what is an x-intercept of the graph?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It''s given that . The x-intercepts of a graph in the xy-plane are the points where . Thus, for
an x-intercept of the graph of function , . Substituting  for  in the equation  yields
. Factoring the right-hand side of this equation yields . By the zero product
property,  and . Subtracting  from both sides of the equation  yields .
Adding  to both sides of the equation  yields . Therefore, the x-intercepts of the graph of
are  and . Of these two x-intercepts, only  is given as a choice.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'ad038c19',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Which of the following is
equivalent to  ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The expression  can be rewritten as . Using the distributive property, the
expression yields . Combining like terms gives .
Choices A, B, and C are incorrect and may result from errors using the distributive property on the given expression or
combining like terms.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6e06a0a7',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which of the following expressions is
equivalent to  ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Expanding the given expression using the distributive property yields . Combining like
terms yields , or , which is equivalent to .
Choices A and B are incorrect and may result from incorrectly combining like terms. Choice C is incorrect and may result
from distributing  only to a, and not to 3, in the given expression.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '5910bfff',
    'SAT',
    'Math',
    'Advanced Math',
    'Hard',
    'Nonlinear equations in one variable and systems of equations in two',
    'The formula above can be used to approximate the dew point D, in degrees
Fahrenheit, given the temperature T, in degrees Fahrenheit, and the relative
humidity of H percent, where . Which of the following expresses the relative
humidity in terms of the temperature and the dew point?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It’s given that . Solving this formula for H expresses the relative humidity in
terms of the temperature and the dew point. Subtracting T from both sides of this equation yields .
Multiplying both sides by  yields . Subtracting 100 from both sides yields
. Multiplying both sides by  results in the formula .
Choices B, C, and D are incorrect and may result from errors made when rewriting the given formula.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd84a514a',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The function  gives a company’s predicted annual revenue, in dollars,  years after the company
started selling jewelry online, where . What is the best interpretation of the statement “ is approximately
equal to ” in this context?
A.  years after the company started selling jewelry online, its predicted annual revenue is approximately  dollars.
B.  years after the company started selling jewelry online, its predicted annual revenue will have increased by a total of
approximately  dollars.
C. When the company’s predicted annual revenue is approximately  dollars, it is  times the predicted annual
revenue for the previous year.
D. When the company’s predicted annual revenue is approximately  dollars, it is  greater than the predicted
annual revenue for the previous year.',
    'A',
    '{"type":"multiple_choice","choices":{"A":"years after the company started selling jewelry online, its predicted annual revenue is approximately  dollars.","B":"years after the company started selling jewelry online, its predicted annual revenue will have increased by a total of","C":"When the company’s predicted annual revenue is approximately  dollars, it is  times the predicted annual","D":"When the company’s predicted annual revenue is approximately  dollars, it is  greater than the predicted"}}',
    'Choice A is correct. It’s given that the function  gives a company’s predicted annual revenue, in dollars,  years after the
company started selling jewelry online. Since the value of  is the value of  when , it follows that “ is
approximately equal to ” means that  is approximately equal to  when . Therefore, the best
interpretation of the given statement is that  years after the company started selling jewelry online, its predicted annual
revenue is approximately  dollars.
Choice B is incorrect. The function  gives the predicted annual revenue, not the predicted increase in annual revenue.
Choice C is incorrect and may result from conceptual errors.
Choice D is incorrect. In the given function,  represents the number of years after the company started selling jewelry
online, not the percent increase in revenue from the previous year.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '100030d9',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A rubber ball bounces upward one-half the height that it falls each time it hits the
ground. If the ball was originally dropped from a distance of 20.0 feet above the
ground, what was its maximum height above the ground, in feet, between the third
and fourth time it hit the ground?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 2.5. After hitting the ground once, the ball bounces to  feet. After hitting the ground a
second time, the ball bounces to  feet. After hitting the ground for the third time, the ball bounces to
feet. Note that 2.5 and 5/2 are examples of ways to enter a correct answer.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '364a2d25',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If one solution to the system of equations above is ,
what is one possible value of x ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is either 8 or 9. The first equation can be rewritten as . Substituting  for y in the second
equation gives . By applying the distributive property, this can be rewritten as . Subtracting 72
from both sides of the equation yields . Factoring the left-hand side of this equation yields
. Applying the Zero Product Property, it follows that  and . Solving each equation for x
yields  and  respectively. Note that 8 and 9 are examples of ways to enter a correct answer.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b76a2815',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The power P produced by a machine is represented by the equation above, where
W is the work performed during an amount of time t. Which of the following
correctly expresses W in terms of P and t ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. Multiplying both sides of the equation by t yields , or , which expresses W in
terms of P and t. This is equivalent to W = Pt.
Choices B, C, and D are incorrect. Each of the expressions given in these answer choices gives W in terms of P and t but
doesn’t maintain the given relationship between W, P, and t. These expressions may result from performing different
operations with t on each side of the equation. In choice B, W has been multiplied by t, and P has been divided by t. In choice
C, W has been multiplied by t, and the quotient of P divided by t has been reciprocated. In choice D, W has been multiplied by
t, and P has been added to t. However, in order to maintain the relationship between the variables in the given equation, the
same operation must be performed with t on each side of the equation.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'c77ef2fb',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Blood volume,, in a human can be determined using the equation ,
where  is the plasma volume and H is the hematocrit (the fraction of blood
volume that is red blood cells). Which of the following correctly expresses the
hematocrit in terms of the blood volume and the plasma volume?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The hematocrit can be expressed in terms of the blood volume and the plasma volume by solving the
given equation  for H. Multiplying both sides of this equation by  yields . Dividing both
sides by  yields . Subtracting 1 from both sides yields . Dividing both sides by  yields
.
Choices B, C, and D are incorrect and may result from errors made when manipulating the equation.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a391ed22',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The expression above is equivalent to , where a, b, and c
are constants. What is the value of b?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . The expression  can be written in the form , where a, b, and c
are constants, by multiplying out the expression using the distributive property of multiplication over addition. The result is
. This expression can be rewritten by multiplying as indicated to give
, which can be simplified to , or . This is in the form
, where the value of b is . Note that 5/2 and 2.5 are examples of ways to enter a correct answer.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f237ccfc',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The sum of  and  can be written in the form ,
where a, b, and c are constants. What is the value of  ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 32. The sum of the given expressions is . Combining like terms
yields . Based on the form of the given equation, , , and . Therefore, .
Alternate approach: Because  is the value of  when , it is possible to first make that substitution
into each polynomial before adding them. When , the first polynomial is equal to and the second
polynomial is equal to . The sum of 30 and 2 is 32.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '281a4f3b',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'A certain college had 3,000 students enrolled in 2015. The college predicts that
after 2015, the number of students enrolled each year will be 2% less than the
number of students enrolled the year before. Which of the following functions
models the relationship between the number of students enrolled, , and the
number of years after 2015, x ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Because the change in the number of students decreases by the same percentage each year, the
relationship between the number of students and the number of years can be modeled with a decreasing exponential
function in the form , where  is the number of students, a is the number of students in 2015, r is the rate
of decrease each year, and x is the number of years since 2015. It’s given that 3,000 students were enrolled in 2015 and that
the rate of decrease is predicted to be 2%, or 0.02. Substituting these values into the decreasing exponential function yields
, which is equivalent to .
Choices A, B, and C are incorrect and may result from conceptual errors when translating the given information into a
decreasing exponential function.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '59d1f4b5',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The equation above models the number of members, M, of a gym t years after the
gym opens. Of the following, which equation models the number of members of
the gym q quarter years after the gym opens?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. In 1 year, there are 4 quarter years, so the number of quarter years, q, is 4 times the number of years, t ;
that is, . This is equivalent to , and substituting this into the expression for M in terms of t gives
.
Choices B and D are incorrect and may be the result of incorrectly using  instead of . (Choices B and D are
nearly the same since  is equivalent to , which is approximately .) Choice C is incorrect and may be
the result of incorrectly using  and unnecessarily dividing 0.02 by 4.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '84dd43f8',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'For the function , , and for each increase in  by , the value of  decreases by . What is the value of
?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . It’s given that  and that for each increase in  by , the value of  decreases by
. Because the output of the function decreases by a constant percentage for each -unit increase in the value of , this
relationship can be represented by an exponential function of the form , where  represents the initial value of
the function and  represents the rate of decay,
expressed as a decimal. Because , the value of  must be . Because the value of  decreases by  for
each -unit increase in , the value of  must be , or . Therefore, the function  can be defined by
. Substituting  for  in this function yields , which is equivalent to ,
or . Either  or  may be entered as the correct answer.
Alternate approach: It’s given that  and that for each increase in  by , the value of  decreases by .
Therefore, when , the value of  is , or , of , which can be expressed as . Since
, the value of  is . Similarly, when , the value of  is  of , which can be
expressed as . Since , the value of  is . Either  or  may be entered
as the correct answer.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '294db8ec',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which of the following is
equivalent to ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The expression  has two terms,  and 4. The greatest common factor of these two terms is 2.
Factoring 2 from each of these terms yields , or .
Choices A and B are incorrect because 4 is not a factor of the term . Choice C is incorrect and may result from factoring
2 from  but not from 4.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '30281058',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the xy-plane, the graph of  intersects line p at  and , where a
and b are constants. What is the slope of line p ?
A. 6
B. 2
C.
D.',
    'A',
    '{"type":"multiple_choice","choices":{"A":"6","B":"2"}}',
    'Choice A is correct. It’s given that the graph of  and line p intersect at  and . Therefore, the value of y
when  is the value of a, and the value of y when  is the value of b. Substituting 1 for x in the given equation yields
, or . Similarly, substituting 5 for x in the given equation yields , or . Therefore, the
intersection points are  and . The slope of line p is the ratio of the change in y to the change in x between these
two points: , or 6.
Choices B, C, and D are incorrect and may result from conceptual or calculation errors in determining the values of a, b, or
the slope of line p.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '18c7c3e0',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which expression is equivalent to ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Since each term in the given expression has a common factor of , it can be rewritten as ,
or . Therefore, the expression  is equivalent to .
Alternate approach: Since the two terms of the given expression are both constant multiples of , they are like terms and
can, therefore, be combined through subtraction. Subtracting like terms in the expression  yields .
Choice A is incorrect. This expression is equivalent to , not .
Choice C is incorrect. This expression is equivalent to , not .
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '9ed9f54d',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which of the following is equivalent to
?
A.
B.
C. 5x
D. 5x',
    'A',
    '{"type":"multiple_choice","choices":{"C":"5x","D":"5x"}}',
    'Choice A is correct. Since  is a common term in the original expression, like terms can be added:
. Distributing the constant term 5 yields .
Choice B is incorrect and may result from not distributing the negative signs in the expressions within the parentheses.
Choice C is incorrect and may result from not distributing the negative signs in the expressions within the parentheses and
from incorrectly eliminating the -term. Choice D is incorrect and may result from incorrectly eliminating the x-term.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd0e8e8f5',
    'SAT',
    'Math',
    'Advanced Math',
    'Easy',
    'Nonlinear equations in one variable and systems of equations in two',
    'The graph of a system of a linear and a quadratic equation is shown. What is the solution  to this system?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The solution to the system corresponds to the point where the graphs of the equations intersect. The
graphs of the linear equation and the quadratic equation shown intersect at the point . Therefore,  is the solution
to this system.
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '58dcc59f',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'A landscaper is designing a rectangular garden. The length of the garden is to be 5
feet longer than the width. If the area of the garden will be 104 square feet, what
will be the length, in feet, of the garden?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 13. Let w represent the width of the rectangular garden, in feet. Since the length of the garden will be 5
feet longer than the width of the garden, the length of the garden will be  feet. Thus the area of the garden will be
. It is also given that the area of the garden will be 104 square feet. Therefore, , which is equivalent
to . Factoring this equation results in . Therefore,  and . Because
width cannot be negative, the width of the garden must be 8 feet. This means the length of the garden must be
feet.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'dd8ac009',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Time (years)Total amount (dollars)
Sara opened a savings account at a bank. The table shows the exponential relationship between the time , in years, since
Sara opened the account and the total amount , in dollars, in the account. If Sara made no additional deposits or
withdrawals, which of the following equations best represents the relationship between  and ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. It’s given that the relationship between  and  is exponential. The table shows that the value of
increases as the value of  increases. Therefore, the relationship between  and  can be represented by an increasing
exponential equation of the form , where  and  are positive constants. The table shows that when ,
. Substituting  for  and  for  in the equation  yields , which is equivalent to
, or . Substituting  for  in the equation  yields . The table also
shows that when , . Substituting  for  and  for  in the equation  yields
, or . Dividing both sides of this equation by  yields .
Subtracting  from both sides of this equation yields . Substituting  for  in the equation
yields . Therefore, of the choices, choice B best represents the relationship between  and .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '26eb61c1',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which expression is equivalent to ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. Since each term of the given expression has a common factor of , it may be rewritten as
, or .
Choice A is incorrect. This expression is equivalent to , not .
Choice B is incorrect. This expression is equivalent to , not .
Choice D is incorrect. This expression is equivalent to , not .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '8f82ad81',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which expression is equivalent to ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The expression  can be rewritten as , which is equivalent to .
Choice B is incorrect. This expression is equivalent to , not .
Choice C is incorrect. This expression is equivalent to , not .
Choice D is incorrect. This expression is equivalent to , not .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '895628b5',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which ordered pair  is the solution to the given system of equations?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. The second equation in the given system of equations is . Substituting  for  in
the first equation of the given system yields . Factoring  out of the left-hand side of this
equation yields . An expression with a factor of the form  is equal to zero when .
Each side of this equation has a factor of , so each side of the equation is equal to zero when . Substituting
for  into the equation  yields , or , which is true.
Substituting  for  into the second equation in the given system of equations yields , or . Therefore,
the solution to the system of equations is the ordered pair .
Choice A is incorrect and may result from switching the order of the solutions for  and .
Choice B is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '29ed5d39',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The given equation relates the numbers  and , where  is not equal to  and . Which equation correctly expresses
in terms of ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. To express  in terms of , the given equation must be solved for . Subtracting  from both sides of the
given equation yields . Since  is not equal to , multiplying both sides of this equation by  yields
. It''s given that , which means  is not equal to . Therefore, dividing both sides of
by  yields , or .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6676f055',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'An engineer wanted to identify the best angle for a cooling fan in an engine in order
to get the greatest airflow. The engineer discovered that the function above models
the airflow , in cubic feet per minute, as a function of the angle of the fan , in
degrees. According to the model, what angle, in degrees, gives the greatest
airflow?
A. –0.28
B. 0.28
C. 27
D. 880',
    'C',
    '{"type":"multiple_choice","choices":{"A":"–0.28","B":"0.28","C":"27","D":"880"}}',
    'Choice C is correct. The function f is quadratic, so it will have either a maximum or a minimum at the vertex of the graph.
Since the coefficient of the quadratic term (–0.28) is negative, the vertex will be at a maximum. The equation f() = –0.28(
– 27) + 880 is given in vertex form, so the vertex is at  = 27. Therefore, an angle of 27 degrees gives the greatest airflow.
Choices A and B are incorrect and may be the result of misidentifying which value in a quadratic equation in vertex form
represents the vertex. Choice D is incorrect. This choice identifies the maximum value of f() rather than the value of  for
which f() is maximized.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '5e63b9cf',
    'SAT',
    'Math',
    'Advanced Math',
    'Easy',
    'Nonlinear functions',
    '12345678910
x
1
2
3
4
5
6
7
8
9
10
y
O
The graph shows a marble''s height above the ground , in inches,  seconds after it started moving on an elevated track of a
marble run. Which of the following is the best interpretation of the -intercept of the graph?
A. The marble''s height was  inches above the ground  seconds after it started moving.
B. The marble''s height was  inches above the ground when it started moving.
C. The marble''s minimum height was  inches above the ground.
D. The marble''s minimum height was  inches above the ground.',
    'B',
    '{"type":"multiple_choice","choices":{"A":"The marble''s height was  inches above the ground  seconds after it started moving.","B":"The marble''s height was  inches above the ground when it started moving.","C":"The marble''s minimum height was  inches above the ground.","D":"The marble''s minimum height was  inches above the ground."}}',
    'Choice B is correct. The y-intercept of a graph is the point at which the graph intersects the y-axis. The graph shown
intersects the y-axis at the point . Therefore, the y-intercept of the graph is . It’s given that  is the height of the
marble above the ground, in inches, and  is the number of seconds after the marble started moving. It follows that the
marble''s height was  inches above the ground  seconds after it started moving. Therefore, the best interpretation of the y-
intercept of the graph is that the marble’s height was  inches above the ground when it started moving.
Choice A is incorrect and may result from conceptual errors.
Choice C is incorrect and may result from conceptual errors.
Choice D is incorrect and may result from conceptual errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '568aaf27',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'If  is a solution to the system of equations above, which of the
following is a possible value of x?
A. 0
B. 1
C. 2
D. 3',
    'D',
    '{"type":"multiple_choice","choices":{"A":"0","B":"1","C":"2","D":"3"}}',
    'Choice D is correct. Substituting  from the second equation for y in the first equation yields . Subtracting 12
from both sides of this equation and rewriting the equation results in . Factoring the left-hand side of this
equation yields . Using the zero product property to solve for x, it follows that  and .
Solving each equation for x yields  and , respectively. Thus, two possible values of x are 3 and . Of the
choices given, 3 is the only possible value of x.
Choices A, B, and C are incorrect. Substituting 0 for x in the first equation gives , or ; then, substituting 12
for y and 0 for x in the second equation gives , or , which is false. Similarly, substituting 1 or 2 for x in the first
equation yields  or , respectively; then, substituting 11 or 10 for y in the second equation yields a false
statement.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '70753f99',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The function f is defined by . The graph of f in the xy-plane is
a parabola. Which of the following intervals contains the x-coordinate of the vertex
of the graph of f ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The graph of a quadratic function in the xy-plane is a parabola. The axis of symmetry of the parabola
passes through the vertex of the parabola. Therefore, the vertex of the parabola and the midpoint of the segment between
the two x-intercepts of the graph have the same x-coordinate. Since , the x-coordinate of the vertex is
. Of the shown intervals, only the interval in choice B contains –2. Choices A, C, and D are incorrect and
may result from either calculation errors or misidentification of the graph’s x-intercepts.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '668f1863',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Function  is a quadratic function where  and . The graph of  in the xy-plane has a vertex
at . What is the value of ?',
    '-12',
    '{"type":"free_response"}',
    'The correct answer is . It’s given that function  is a quadratic function where  and . It follows
that the graph of  in the xy-plane passes through the points  and . When the graph of a quadratic
function contains two points  and , the x-coordinate of the vertex of the graph is the average of  and
. Therefore, the x-coordinate of the vertex of the graph of  is , or . It''s given that the graph of
in the xy-plane has a vertex at . It follows that the value of  is .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'bba18ecb',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'When the quadratic function  is graphed in the xy-plane, where , its vertex is . One of the x-intercepts of
this graph is . What is the other x-intercept of the graph?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Since the line of symmetry for the graph of a quadratic function contains the vertex of the graph, the x-
coordinate of the vertex of the graph of  is the x-coordinate of the midpoint of its two x-intercepts. The midpoint of
two points with x-coordinates  and  has x-coordinate , where . It′s given that the vertex is  and
one of the x-intercepts is . Substituting  for  and  for  in the equation  yields
. Multiplying each side of this equation by  yields . Adding  to each side of this
equation yields . Therefore, the other x-intercept is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '20722644',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The function  is defined by . What is the value of ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. It''s given that . Substituting  for  in this equation yields . This is
equivalent to , or .
Choice A is incorrect. This is the value of , not .
Choice B is incorrect. This is the value of , not .
Choice D is incorrect. This is the value of , not .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '630897df',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The speed of sound in dry air, v, can be modeled by the formula
, where T is the temperature in degrees Celsius and v is
measured in meters per second. Which of the following correctly expresses T in
terms of v ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. To express T in terms of v, subtract 331.3 from both sides of the equation, which gives v – 331.3 =
0.606T. Dividing both sides of the equation by 0.606 gives .
Choices A, B, and C are incorrect and are the result of incorrect steps while solving for T.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd71f6dbf',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The height, in feet, of an object x seconds after it is thrown straight up in the air can
be modeled by the function . Based on the model, which
of the following statements best interprets the equation  ?
A. The height of the object 1.4 seconds after being thrown straight up in the air is 1.64 feet.
B. The height of the object 1.64 seconds after being thrown straight up in the air is 1.4 feet.
C. The height of the object 1.64 seconds after being thrown straight up in the air is approximately 1.4 times as great as its
initial height.
D. The speed of the object 1.4 seconds after being thrown straight up in the air is approximately 1.64 feet per second.',
    'A',
    '{"type":"multiple_choice","choices":{"A":"The height of the object 1.4 seconds after being thrown straight up in the air is 1.64 feet.","B":"The height of the object 1.64 seconds after being thrown straight up in the air is 1.4 feet.","C":"The height of the object 1.64 seconds after being thrown straight up in the air is approximately 1.4 times as great as its","D":"The speed of the object 1.4 seconds after being thrown straight up in the air is approximately 1.64 feet per second."}}',
    'Choice A is correct. The value 1.4 is the value of x, which represents the number of seconds after the object was thrown
straight up in the air. When the function h is evaluated for x = 1.4, the function has a value of 1.64, which is the height, in feet,
of the object.
Choices B and C are incorrect and may result from misidentifying seconds as feet and feet as seconds. Additionally, choice
C may result from incorrectly including the initial height of the object as the input x. Choice D is incorrect and may result
from misidentifying height as speed.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0121a235',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'xp(x)
The table above gives selected values of a polynomial function p. Based on the
values in the table, which of the following must be a factor of p ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. According to the table, when x is  or 2, . Therefore, two x-intercepts of the graph of p are
and . Since  and  are x-intercepts, it follows that  and  are factors of the polynomial
equation. This is because when , the value of  is 0. Similarly, when , the value of  is 0. Therefore, the
product  is a factor of the polynomial function p.
Choice A is incorrect. The factor  corresponds to an x-intercept of , which isn’t present in the table. Choice B is
incorrect. The factor  corresponds to an x-intercept of , which isn’t present in the table. Choice C is incorrect.
The factors  and  correspond to x-intercepts  and , respectively, which aren’t present in the table.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '7dbd46d9',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The graphs of the equations in the given system of equations intersect at the point  in the -plane. What is a possible
value of ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It''s given that the graphs of the equations in the given system of equations intersect at the point .
Therefore, this intersection point is a solution to the given system. The solution can be found by isolating  in each equation.
The given equation  can be rewritten to isolate  by subtracting  from both sides of the equation, which
gives . The given equation  can be rewritten to isolate  by subtracting  from both sides
of the equation, which gives . With each equation solved for , the value of  from one equation can be
substituted into the other, which gives . Adding  and  to both sides of this equation results in
. Dividing both sides of this equation by  results in . This equation can be
rewritten by factoring the left-hand side, which yields . By the zero-product property, if
, then , or . It follows that , or . Since only  is
given as a choice, a possible value of  is .
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b8c4a1cd',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The given equation relates the distinct positive numbers , , and . Which equation correctly expresses  in terms of  and
?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. To express  in terms of  and , the given equation must be solved for . Dividing each side of the
given equation by  yields  .
Choice A is incorrect. This is equivalent to .
Choice B is incorrect. This is equivalent to .
Choice C is incorrect. This is equivalent to .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f44a29a8',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'An object’s kinetic energy, in joules, is equal to the product of one-half the object’s
mass, in kilograms, and the square of the object’s speed, in meters per second.
What is the speed, in meters per second, of an object with a mass of 4 kilograms
and kinetic energy of 18 joules?
A. 3
B. 6
C. 9
D. 36',
    'A',
    '{"type":"multiple_choice","choices":{"A":"3","B":"6","C":"9","D":"36"}}',
    'Choice A is correct. It’s given that an object’s kinetic energy, in joules, is equal to the product of one-half the object’s mass, in
kilograms, and the square of the object’s speed, in meters per second. This relationship can be represented by the equation
, where K is the kinetic energy, m is the mass, and v is the speed. Substituting a mass of 4 kilograms for m and a
kinetic energy of 18 joules for K results in the equation , or . Dividing both sides of this equation by
2 yields . Taking the square root of both sides yields  and . Since speed can’t be expressed as a negative
number, the speed of the object is 3 meters per second.
Choice B is incorrect and may result from computation errors. Choice C is incorrect. This is the value of  rather than v.
Choice D is incorrect. This is the value of  rather than v.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '75915e3c',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'For the function f defined above, what
is the value of ?
A. 9
B. 12
C. 18
D. 36',
    'C',
    '{"type":"multiple_choice","choices":{"A":"9","B":"12","C":"18","D":"36"}}',
    'Choice C is correct. The value of  is found by evaluating the expression  when . Substituting 2 for x in the
given equation yields . Simplifying  in the equation results in . Evaluating the right-hand side of
the equation yields . Therefore, the value of  is 18.
Choice A is incorrect and may result from evaluating the expression as . Choice B is incorrect and may result from
evaluating the expression as . Choice D is incorrect and may result from evaluating the expression as .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b03adde3',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'If , what is t
in terms of u ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Multiplying both sides of the given equation by  yields . Dividing both sides of this
equation by  yields . Adding 2 to both sides of this equation yields , which can be rewritten
as . Since the fractions on the right-hand side of this equation have a common denominator, adding
the fractions yields . Applying the distributive property to the numerator on the right-hand side of this
equation yields , which is equivalent to .
Choices A, B, and C are incorrect and may result from various misconceptions or miscalculations.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '3918e8bc',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'An object is kicked from a platform. The equation  represents this situation, where  is the height of
the object above the ground, in meters,  seconds after it is kicked. Which number represents the height, in meters, from
which the object was kicked?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It’s given that the equation  represents this situation, where  is the height, in
meters, of the object  seconds after it is kicked. It follows that the height, in meters, from which the object was kicked is the
value of  when . Substituting  for  in the equation  yields , or
. Therefore, the object was kicked from a height of  meters.
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b73ee6cf',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The population of a town is currently 50,000, and the population is estimated to
increase each year by 3% from the previous year. Which of the following equations
can be used to estimate the number of years, t, it will take for the population of the
town to reach 60,000 ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Stating that the population will increase each year by 3% from the previous year is equivalent to saying
that the population each year will be 103% of the population the year before. Since the initial population is 50,000, the
population after t years is given by 50,000(1.03). It follows that the equation 60,000 = 50,000(1.03) can be used to estimate
the number of years it will take for the population to reach 60,000.
Choice A is incorrect. This equation models how long it will take the population to decrease from 60,000 to 50,000, which is
impossible given the growth factor. Choice B is incorrect and may result from misinterpreting a 3% growth as growth by a
factor of 3. Additionally, this equation attempts to model how long it will take the population to decrease from 60,000 to
50,000. Choice C is incorrect and may result from misunderstanding how to model percent growth by multiplying the initial
amount by a factor greater than 1.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6acdcece',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The given equation relates the positive numbers , , and . Which equation correctly expresses  in terms of  and ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Multiplying both sides of the given equation by  yields . Distributing on the left-hand
side of this equation yields , or . Therefore, the equation  correctly expresses
in terms of  and .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '1fe10d97',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The given function  models the population of Lowell  years after a census. Which of the following functions best models
the population of Lowell  months after the census?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. It’s given that the function  models the population of Lowell  years after a census. Since there are
months in a year,  months after the census is equivalent to  years after the census. Substituting  for  in the
equation  yields . Therefore, the function  that best models the
population of Lowell  months after the census is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '09e5e4d3',
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
    'Choice C is correct. Multiplying both sides of the given equation by  yields . Therefore, the value of  is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'fb96a5b3',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which of the following expressions is
equivalent to  ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Applying the distributive property to the given expression yields , or .
Adding the like terms  and 2 results in the expression .
Choice A is incorrect and may result from multiplying  by 2 without multiplying  by 2 when applying the distributive
property. Choices C and D are incorrect and may result from computational or conceptual errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f5e8ccf1',
    'SAT',
    'Math',
    'Advanced Math',
    'Medium',
    'Nonlinear functions',
    'The function f is defined above. Which of the following is NOT an x-intercept of
the graph of the function in the xy-plane?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The graph of the function f in the xy-plane has x-intercepts at the points , where .
Substituting 0 for  in the given equation yields . By the zero product property, if
, then , , or . Solving each of these linear equations for x, it follows
that , , and , respectively. This means that the graph of the function f in the xy-plane has three x-
intercepts: , , and . Therefore,  isn’t an x-intercept of the graph of the function f.
Alternate approach: Substitution may be used. Since by definition an x-intercept of any graph is a point in the form
where k is a constant, and since all points in the options are in this form, it need only be checked whether the points in the
options lie on the graph of the function f. Substituting  for x and 0 for  in the given equation yields
, or . Therefore, the point  doesn’t lie on the graph of the
function f and can’t be an x-intercept of the graph.
Choices A, C, and D are incorrect because each of these points is an x-intercept of the graph of the function f in the xy-plane.
By definition, an x-intercept is a point on the graph of the form , where k is a constant. Substituting  for x and 0 for
in the given equation yields , or . Since this is a true statement, the point
lies on the graph of the function f and is an x-intercept of the graph. Performing similar substitution using the points
and  also yields the true statement , illustrating that these points also lie on the graph of the function f and
are x-intercepts of the graph.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '50418728',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The graph of the polynomial function , where , is shown. The y-intercept of the graph is . What is the value
of ?',
    '-3',
    '{"type":"free_response"}',
    'The correct answer is . The y-intercept of the graph of a function in the xy-plane is the point where the graph crosses the
y-axis. The graph of the polynomial function shown crosses the y-axis at the point . It''s given that the y-intercept of
the graph is . Thus, the value of  is .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '79ba511a',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The function  is defined by . What is the value of ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. The value of  is the value of  when . Substituting  for  in the given function yields
, or , which is equivalent to . Therefore, the value of  is .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect. This is the value of  when , rather than .
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '98f735f2',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The total revenue from sales of a product can be calculated using the formula
, where T is the total revenue, P is the price of the product, and Q is the
quantity of the product sold. Which of the following equations gives the quantity of
product sold in terms of P and T ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Solving the given equation for Q gives the quantity of the product sold in terms of P and T. Dividing both
sides of the given equation by P yields , or . Therefore,  gives the quantity of product sold in terms
of P and T.
Choice A is incorrect and may result from an error when dividing both sides of the given equation by P. Choice C is incorrect
and may result from multiplying, rather than dividing, both sides of the given equation by P. Choice D is incorrect and may
result from subtracting P from both sides of the equation rather than dividing both sides by P.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '50338a48',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which expression is equivalent to ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. Since each term of the given expression has a common factor of , it may be rewritten as .
Therefore, the expression  is equivalent to .
Choice B is incorrect. This expression is equivalent to , not .
Choice C is incorrect. This expression is equivalent to , not .
Choice D is incorrect. This expression is equivalent to , not .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e117d3b8',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'If a and c are positive numbers, which of the following is
equivalent to ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. Using the property that  for positive numbers x and y, with x = (a + c) and y = a + c, it
follows that . By rewriting (a + c) as ((a + c)), it is possible to simplify the square root
expression as follows: .
Choice A is incorrect and may be the result of . Choice B is incorrect and may be the result of
incorrectly rewriting (a + c) as a + c. Choice D is incorrect and may be the result of incorrectly applying properties of
exponents.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6011a3f8',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'In the given equation,  is a constant. For which of the following values of  will the equation have more than one real
solution?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. A quadratic equation of the form , where , , and  are constants, has either no real
solutions, exactly one real solution, or exactly two real solutions. That is, for the given equation to have more than one real
solution, it must have exactly two real solutions. When the value of the discriminant, or , is greater than 0, the given
equation has exactly two real solutions. In the given equation, ,  and . Therefore, the
given equation has exactly two real solutions when , or . Adding  to both sides
of this inequality yields . Taking the square root of both sides of  yields two possible inequalities:
or . Of the choices, only choice A satisfies  or .
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd45572cc',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The graph of  is shown in the xy-plane. The value of  is an integer. What is the value of ?',
    '3',
    '{"type":"free_response"}',
    'The correct answer is . The value of  is the value of  on the graph of  in the xy-plane that corresponds with
. It''s given that the value of  is an integer. For the graph of  shown, when , the corresponding
integer value of  is . Therefore, the value of  is .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0b3d25c5',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following is equivalent to
, where ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The given expression can also be written as . The trinomial  can be
rewritten in factored form as . Thus, the entire expression can be rewritten as . Simplifying the
exponents yields .
Choices A, B, and C are incorrect and may result from errors made when simplifying the exponents in the expression
.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '9f2ecade',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The function h is defined above, where a, b, and c are integer constants. If the zeros
of the function are  6, and 7, what is the value of c ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 210. Since , 6, and 7 are zeros of the function, the function can be rewritten as
. Expanding the function yields . Thus, , , and
. Therefore, the value of c is 210.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '6d9e01a2',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The given equation defines the function . For what value of  does  reach its minimum?',
    '',
    '{"type":"free_response"}',
    'The correct answer is . The given equation can be rewritten in the form , where , , and  are
constants. When ,  is the value of  for which  reaches its minimum. The given equation can be rewritten as
, which is equivalent to . This equation can
be rewritten as , or , which is equivalent to
. Therefore, , so the value of  for which  reaches its minimum is . Note that
25/4 and 6.25 are examples of ways to enter a correct answer.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'eb268057',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which of the following values of x
satisfies the given equation?
A.
B. 4
C. 32
D. 128',
    'A',
    '{"type":"multiple_choice","choices":{"B":"4","C":"32","D":"128"}}',
    'Choice A is correct. Solving for x by taking the square root of both sides of the given equation yields  or . Of the
choices given,  satisfies the given equation.
Choice B is incorrect and may result from a calculation error when solving for x. Choice C is incorrect and may result from
dividing 64 by 2 instead of taking the square root. Choice D is incorrect and may result from multiplying 64 by 2 instead of
taking the square root.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '8838a672',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following expressions is equivalent
to the expression above?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Using the distributive property, the given expression can be rewritten as .
Combining like terms, this expression can be rewritten as , which is equivalent to
.
Choices A, C, and D are incorrect and may result from an error when applying the distributive property or an error when
combining like terms.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'fc3dfa26',
    'SAT',
    'Math',
    'Advanced Math',
    'Hard',
    'Nonlinear equations in one variable and systems of equations in two',
    'What value of x satisfies the
equation above?
A.
B.
C.
D. 3',
    'C',
    '{"type":"multiple_choice","choices":{"D":"3"}}',
    'Choice C is correct. Each fraction in the given equation can be expressed with the common denominator . Multiplying
by  yields , and multiplying  by  yields . Therefore, the given equation can be
written as . Multiplying each fraction by the denominator results in the equation
, or . This equation can be solved by setting a quadratic expression equal to 0,
then solving for x. Subtracting  from both sides of this equation yields . The expression
can be factored, resulting in the equation . By the zero product property,  or . To solve
for x in , 1 can be added to both sides of the equation, resulting in . Dividing both sides of this equation by
2 results in . Solving for x in  yields . However, this value of x would result in the second fraction of
the original equation having a denominator of 0. Therefore,  is an extraneous solution. Thus, the only value of x that
satisfies the given equation is .
Choice A is incorrect and may result from solving  but not realizing that this solution is extraneous because it
would result in a denominator of 0 in the second fraction. Choice B is incorrect and may result from a sign error when solving
for x. Choice D is incorrect and may result from a calculation error.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b47419f4',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following is equivalent to
the expression above?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. By distributing the minus sign through the expression , the given expression can be rewritten
as , which is equivalent to . Combining like terms gives , or
.
Choice B is incorrect and may be the result of failing to distribute the minus sign appropriately through the second term and
simplifying the expression . Choice C is incorrect and may be the result of multiplying the expressions
and . Choice D is incorrect and may be the result of multiplying the expressions  and
.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'b7cd6ca6',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The equation  gives the estimated number of employees at a restaurant, where  is the number of years
since the restaurant opened. Which of the following is the best interpretation of the number  in this context?
A. The estimated number of employees when the restaurant opened
B. The increase in the estimated number of employees each year
C. The number of years the restaurant has been open
D. The percent increase in the estimated number of employees each year',
    'A',
    '{"type":"multiple_choice","choices":{"A":"The estimated number of employees when the restaurant opened","B":"The increase in the estimated number of employees each year","C":"The number of years the restaurant has been open","D":"The percent increase in the estimated number of employees each year"}}',
    'Choice A is correct. For an exponential function of the form , where  and  are constants, the initial value of
the function—that is, the value of the function when —is  and the value of the function increases by a factor of  each
time  increases by . Since the function  gives the estimated number of employees at a restaurant and  is
the number of years since the restaurant opened, the best interpretation of the number  in this context is the estimated
number of employees when , or when the restaurant opened.
Choice B is incorrect and may result from conceptual errors.
Choice C is incorrect and may result from conceptual errors.
Choice D is incorrect and may result from conceptual errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '928498f3',
    'SAT',
    'Math',
    'Advanced Math',
    'Medium',
    'Nonlinear equations in one variable and systems of equations in two',
    'What are the solutions to the
given equation?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The quadratic formula, , can be used to find the solutions to an equation in the
form . In the given equation, , , and . Substituting these values into the quadratic
formula gives , or .
Choice B is incorrect and may result from using  as the quadratic formula. Choice C is incorrect and may
result from using as the quadratic formula. Choice D is incorrect and may result from using
as the quadratic formula.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0aaef7aa',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The function  is defined by . What is the value of  when  is equal to ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. It''s given that . Substituting  for  in this equation yields . Dividing each
side of this equation by  yields . Taking the cube root of each side of this equation yields . Therefore, when
is equal to , the value of  is .
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '7348f046',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following is equivalent to
the given expression?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. Distributing the negative sign to the terms in the second parentheses yields . This
expression can be rewritten as . Combining like terms results in .
Choice A is incorrect and may result from not distributing the negative sign to the 7. Choice B is incorrect and may result
from adding  to  instead of subtracting . Choice D is incorrect and may result from adding the product of
and x to the product of 3 and 7.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '2c5c22d0',
    'SAT',
    'Math',
    'Advanced Math',
    'Hard',
    'Nonlinear equations in one variable and systems of equations in two',
    'How many solutions are there to the
system of equations above?
A. There are exactly 4 solutions.
B. There are exactly 2 solutions.
C. There is exactly 1 solution.
D. There are no solutions.',
    'C',
    '{"type":"multiple_choice","choices":{"A":"There are exactly 4 solutions.","B":"There are exactly 2 solutions.","C":"There is exactly 1 solution.","D":"There are no solutions."}}',
    'Choice C is correct. The second equation of the system can be rewritten as . Substituting  for y in the first
equation gives . This equation can be solved as shown below:
Substituting 1 for x in the equation  gives . Therefore,  is the only solution to the system of
equations.
Choice A is incorrect. In the xy-plane, a parabola and a line can intersect at no more than two points. Since the graph of the
first equation is a parabola and the graph of the second equation is a line, the system cannot have more than 2 solutions.
Choice B is incorrect. There is a single ordered pair  that satisfies both equations of the system. Choice D is incorrect
because the ordered pair  satisfies both equations of the system.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '3e9cc0c2',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following is equivalent to
?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Multiplying (1 – p) by each term of the polynomial within the second pair of parentheses gives (1 – p)1 =
1 – p; (1 – p)p = p – p; (1 – p)p = p – p; (1 – p)p = p – p; (1 – p)p = p – p; (1 – p)p = p – p; and (1 – p)p = p –
p. Adding these seven expressions together and combining like terms gives 1 + (p – p) + (p – p) + (p – p) + (p – p) +
(p – p) + (p – p) – p, which can be simplified to 1 – p.
Choices A, C, and D are incorrect and may result from incorrectly identifying the highest power of p in the expressions or
incorrectly combining like terms.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'bef4b1c6',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'What is the positive solution to the given equation?',
    '5',
    '{"type":"free_response"}',
    'The correct answer is . Multiplying both sides of the given equation by  results in . Applying the
distributive property of multiplication to the right-hand side of this equation results in . Subtracting  from
both sides of this equation results in . The right-hand side of this equation can be rewritten by factoring.
The two values that multiply to  and add to  are  and . It follows that the equation  can be
rewritten as . Setting each factor equal to  yields two equations:  and .
Subtracting  from both sides of the equation  results in . Adding  to both sides of the equation
results in . Therefore, the positive solution to the given equation is .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'df0ef054',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which of the following is equivalent to
the expression above?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. Using the distributive property to multiply the terms in the parentheses yields
, which is equivalent to . Combining like terms
results in  .
Choices A and D are incorrect and may result from conceptual errors when multiplying the terms in the given expression.
Choice B is incorrect and may result from adding, instead of multiplying,  and .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f89e1d6f',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'If , which of the following is equivalent to the
expression ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. Factoring –1 from the second, third, and fourth terms gives x– c– 2cd – d= x– (c+ 2cd + d). The
expression c + 2cd + dis the expanded form of a perfect square: c + 2cd + d = (c + d). Therefore, x– (c+ 2cd + d) =
x – (c + d). Since a = c + d, x– (c + d)= x– a. Finally, because x– a is the difference of squares, it can be expanded
as x– a= (x + a)(x – a).
Choices A and B are incorrect and may be the result of making an error in factoring the difference of squares x– a. Choice
D is incorrect and may be the result of incorrectly combining terms.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '876a731c',
    'SAT',
    'Math',
    'Advanced Math',
    'Medium',
    'Nonlinear equations in one variable and systems of equations in two',
    'If (x, y) is a solution of the system of equations above and
x > 0, what is the value of xy ?
A. 1
B. 2
C. 3
D. 9',
    'A',
    '{"type":"multiple_choice","choices":{"A":"1","B":"2","C":"3","D":"9"}}',
    'Choice A is correct. Substituting  for y in the second equation gives . This equation can be solved as
follows:
Apply the distributive property.
Subtract 2x and 6 from both sides of the equation.
Combine like terms.
Factor both terms on the left side of the equation
by 2x.
Thus,  and  are the solutions to the system. Since , only  needs to be considered. The value of y when
is . Therefore, the value of xy is .
Choices B, C, and D are incorrect and likely result from a computational or conceptual error when solving this system of
equations.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd9137a84',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which expression represents the product of  and ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The product of  and  can be represented by the expression
. Applying the distributive property to this expression yields
, or . This expression is equivalent to
, or .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'c7789423',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'What is one possible solution to the given equation?',
    '',
    '{"type":"free_response"}',
    'The correct answer is  or . By the definition of absolute value, if , then  or . Adding
to both sides of the equation  yields . Adding  to both sides of the equation  yields
. Thus, the given equation, , has two possible solutions,  and . Note that 11 and -7 are examples of
ways to enter a correct answer.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '2f958af9',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The formula above expresses the square of the speed v of a wave moving along a
string in terms of tension T, mass m, and length L of the string. What is T in terms
of m, v, and L ?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. To write the formula as T in terms of m, v, and L means to isolate T on one side of the equation. First,
multiply both sides of the equation by m, which gives , which simplifies to mv= LT. Next, divide both sides of
the equation by L, which gives , which simplifies to .
Choices B, C, and D are incorrect and may be the result of incorrectly applying operations to each side of the equation.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '16de54c7',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If the given expression is rewritten in the form , where k
is a constant, what is the value of k ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 4. It’s given that  can be rewritten as ; it follows that
. Expanding the left-hand side of this equation yields
. Subtracting  from both sides of this equation yields . Using properties of equality,
and . Either equation can be solved for k. Dividing both sides of  by  yields
. The equation  can be rewritten as . It follows that . Solving this equation for
k also yields . Therefore, the value of k is 4.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'dba7432e',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'xf(x)
05
1
2
3
The table above gives the values of the function f for some values of x. Which
of the following equations could define f ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Each choice has a function with coefficient 5 and base 2, so the exponents must be analyzed. When the
input value of x increases, the output value of f(x) decreases, so the exponent must be negative. An exponent of –x yields
the values in the table: , , , and .
Choices A and B are incorrect and may result from choosing equations that yield an increasing, rather than decreasing,
output value of f(x) when the input value of x increases. Choice C is incorrect and may result from choosing an equation that
doesn’t yield the values in the table.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '911c415b',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The expression above can be written in the form , where a and b are
constants. What is the value of  ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 6632. Applying the distributive property to the expression yields .
Then adding together  and  and collecting like terms results in . This is written
in the form , where  and . Therefore .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'c3a72da5',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following is equivalent to the sum of
and ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Adding the two expressions yields . Because the pair of terms  and  and
the pair of terms  and  each contain the same variable raised to the same power, they are like terms and can be
combined as  and , respectively. The sum of the given expressions therefore simplifies to .
Choice A is incorrect and may result from adding the coefficients and the exponents in the given expressions. Choice B is
incorrect and may result from adding the exponents as well as the coefficients of the like terms in the given expressions.
Choice C is incorrect and may result from multiplying, rather than adding, the coefficients of the like terms in the given
expressions.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '89fc23af',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'Which of the following expressions is
equivalent to  ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. The numerator of the given expression can be rewritten in terms of the denominator, , as follows:
, which is equivalent to . So the given expression is equivalent to
. Since the given expression is defined for , the expression can
be rewritten as .
Long division can also be used as an alternate approach. Choices A, B, and C are incorrect and may result from errors made
when dividing the two polynomials or making use of structure.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '12e7faf8',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The equation  is true for all , where a and d
are integers. What is the value of  ?
A.
B.
C. 0
D. 1',
    'C',
    '{"type":"multiple_choice","choices":{"C":"0","D":"1"}}',
    'Choice C is correct. Since the expression  can be factored as , the given equation can be rewritten
as . Since ,  is also not equal to 0, so both the numerator and denominator of
can be divided by . This gives . Equating the coefficient of x on each side of the equation
gives . Equating the constant terms gives . The sum is .
Choice A is incorrect and may result from incorrectly simplifying the equation. Choices B and D are incorrect. They are the
values of d and a, respectively, not .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0ad5012e',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The given equation models a company’s scheduled deliveries over  months, where  is the estimated number of scheduled
deliveries  months after the end of May , where . Which statement is the best interpretation of the y-
intercept of the graph of this equation in the xy-plane?
A. At the end of May , the estimated number of scheduled deliveries was .
B. At the end of May , the estimated number of scheduled deliveries was .
C. At the end of June , the estimated number of scheduled deliveries was .
D. At the end of June , the estimated number of scheduled deliveries was .',
    'B',
    '{"type":"multiple_choice","choices":{"A":"At the end of May , the estimated number of scheduled deliveries was .","B":"At the end of May , the estimated number of scheduled deliveries was .","C":"At the end of June , the estimated number of scheduled deliveries was .","D":"At the end of June , the estimated number of scheduled deliveries was ."}}',
    'Choice B is correct. The y-intercept of a graph in the xy-plane is the point where . For the given equation, the y-intercept
of the graph in the xy-plane can be found by substituting  for  in the equation, which yields , or
. Therefore, the y-intercept of the graph is . It’s given that  is the estimated number of scheduled deliveries
months after the end of May . Therefore,  represents  months after the end of May , or the end of May
. Thus, the best interpretation of the y-intercept of the graph of this equation in the xy-plane is that at the end of May
, the estimated number of scheduled deliveries was .
Choice A is incorrect and may result from conceptual errors.
Choice C is incorrect and may result from conceptual errors.
Choice D is incorrect and may result from conceptual errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '84e8cc72',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'A quadratic function models the height, in feet, of an object above the ground in terms of the time, in seconds, after the
object is launched off an elevated surface. The model indicates the object has an initial height of  feet above the ground
and reaches its maximum height of  feet above the ground  seconds after being launched. Based on the model, what
is the height, in feet, of the object above the ground  seconds after being launched?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. It''s given that a quadratic function models the height, in feet, of an object above the ground in terms of
the time, in seconds, after the object is launched off an elevated surface. This quadratic function can be defined by an
equation of the form , where  is the height of the object  seconds after it was launched, and ,
, and  are constants such that the function reaches its maximum value, , when . Since the model indicates the
object reaches its maximum height of  feet above the ground  seconds after being launched,  reaches its
maximum value, , when . Therefore,  and . Substituting  for  and  for  in the function
yields . Since the model indicates the object has an initial height of
feet above the ground, the value of  is  when . Substituting  for  and  for  in the equation
yields , or . Subtracting  from both sides of
this equation yields . Dividing both sides of this equation by  yields . Therefore, the model can be
represented by the equation . Substituting  for  in this equation yields
, or . Therefore, based on the model,  seconds after being launched, the
height of the object above the ground is  feet.
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '97158b3a',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The area A, in square centimeters, of a rectangular painting can be represented by the expression , where  is
the width, in centimeters, of the painting.  Which expression represents the length, in centimeters, of the painting?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. It''s given that the expression  represents the area, in square centimeters, of a rectangular
painting, where  is the width, in centimeters, of the painting. The area of a rectangle can be calculated by multiplying its
length by its width. It follows that the length, in centimeters, of the painting is represented by the expression .
Choice A is incorrect. This expression represents the width, in centimeters, of the painting, not its length, in centimeters.
Choice B is incorrect. This is the difference between the length, in centimeters, and the width, in centimeters, of the painting,
not its length, in centimeters.
Choice D is incorrect. This expression represents the area, in square centimeters, of the painting, not its length, in
centimeters.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '67e866b5',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which expression is equivalent to ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. In the given expression, the first two terms,  and , are like terms. Combining these like terms
yields , or . It follows that the expression  is equivalent to .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '45df91ee',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'If the given function  is graphed in the xy-plane, where , what is the y-intercept of the graph?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The x-coordinate of any y-intercept of a graph is . Substituting  for  in the given equation yields
. Since any nonzero number raised to the  power is , this gives , or . The y-
intercept of the graph is, therefore, the point .
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '1178f2df',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The table shows three values of  and their corresponding values of , where  and  is a quadratic function.
What is the y-coordinate of the y-intercept of the graph of  in the xy-plane?',
    '-2112',
    '{"type":"free_response"}',
    'The correct answer is . It''s given that  is a quadratic function. It follows that  can be defined by an equation of the
form , where , , and  are constants. It''s also given that the table shows three values of  and
their corresponding values of , where . Substituting  for  in this equation yields
. This equation represents a quadratic relationship between  and , where  is either the
maximum or the minimum value of , which occurs when . For quadratic relationships between  and , the maximum
or minimum value of  occurs at the value of  halfway between any two values of  that have the same corresponding
value of . The table shows that x-values of  and  correspond to the same y-value, . Since  is halfway between
and , the maximum or minimum value of  occurs at an x-value of . The table shows that when , . It
follows that  and . Subtracting  from both sides of the equation  yields . Substituting
for  and  for  in the equation  yields , or . The
value of  can be found by substituting any x-value and its corresponding y-value for  and , respectively, in this equation.
Substituting  for  and  for  in this equation yields , or . Subtracting  from
both sides of this equation yields , or . Dividing both sides of this equation by  yields .
Substituting  for ,  for , and  for  in the equation  yields .
The y-intercept of the graph of  in the xy-plane is the point on the graph where . Substituting  for  in the
equation  yields , or . This is equivalent to
, so the y-intercept of the graph of  in the xy-plane is . Thus, the y-coordinate of the y-
intercept of the graph of  in the xy-plane is .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '2683b5db',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In a city, the property tax T, in dollars, is calculated using the formula above, where
P is the value of the property, in dollars. Which of the following expresses the value
of the property in terms of the property tax?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. To express the value of the property in terms of the property tax, the given equation must be solved for P.
Multiplying both sides of the equation by 100 gives . Adding 40,000 to both sides of the equation gives
. Therefore, .
Choice A is incorrect and may result from multiplying 40,000 by 0.01, then subtracting 400 from, instead of adding 400 to,
the left-hand side of the equation. Choice B is incorrect and may result from multiplying 40,000 by 0.01. Choice C is incorrect
and may result from subtracting instead of adding 40,000 from the left-hand side of the equation.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'de39858a',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The function  is defined by , where  and  are positive constants. The graph of  in the -plane
passes through the points (, ) and (, ). What is the value of ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. It’s given that the function  is defined by  and that the graph of  in the xy-
plane passes through the points  and . Substituting  for  and  for  in the equation
yields , or . Subtracting  from both sides of this equation yields .
Substituting  for  and  for  in the equation  yields . Subtracting  from both
sides of this equation yields , which can be rewritten as . Taking the square root of both sides of this
equation yields  and , but because it’s given that  is a positive constant,  must equal . Because the value of
is  and the value of  is , the value of  is , or .
Choice A is incorrect and may result from finding the value of  rather than the value of .
Choice B is incorrect and may result from conceptual or calculation errors.
Choice D is incorrect and may result from correctly finding the value of  as , but multiplying it by the y-value in the first
ordered pair rather than by the value of .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '42f8e4b4',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'One of the factors of  is , where  is a positive constant. What is the smallest possible value of ?',
    '8',
    '{"type":"free_response"}',
    'The correct answer is . Since each term of the given expression, , has a factor of , the expression
can be rewritten as , or . Since the values  and  have a sum of
and a product of , the expression  can be factored as . Therefore, the given
expression can be factored as . It follows that the factors of the given expression are , , , and
. Of these factors, only  and  are of the form , where  is a positive constant. Therefore, the
possible values of  are  and . Thus, the smallest possible value of  is .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '70ebd3d0',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'The function N defined above can be used to model the number of species of
brachiopods at various ocean depths d, where d is in hundreds of meters. Which of
the following does the model predict?
A. For every increase in depth by 1 meter, the number of brachiopod species decreases by 115.
B. For every increase in depth by 1 meter, the number of brachiopod species decreases by 10%.
C. For every increase in depth by 100 meters, the number of brachiopod species decreases by 115.
D. For every increase in depth by 100 meters, the number of brachiopod species decreases by 10%.',
    'D',
    '{"type":"multiple_choice","choices":{"A":"For every increase in depth by 1 meter, the number of brachiopod species decreases by 115.","B":"For every increase in depth by 1 meter, the number of brachiopod species decreases by 10%.","C":"For every increase in depth by 100 meters, the number of brachiopod species decreases by 115.","D":"For every increase in depth by 100 meters, the number of brachiopod species decreases by 10%."}}',
    'Choice D is correct. The function N is exponential, so it follows that  changes by a fixed percentage for each increase in
d by 1. Since d is measured in hundreds of meters, it also follows that the number of brachiopod species changes by a fixed
percentage for each increase in ocean depth by 100 meters. Since the base of the exponent in the model is 0.90, which is
less than 1, the number of brachiopod species decreases as the ocean depth increases. Specifically, the number of
brachiopod species at a depth of  meters is 90% of the number of brachiopod species at a depth of d meters. This
means that for each increase in ocean depth by 100 meters, the number of brachiopod species decreases by 10%.
Choices A and C are incorrect. These describe situations where the number of brachiopod species are decreasing linearly
rather than exponentially. Choice B is incorrect and results from interpreting the decrease in the number of brachiopod
species as 10% for every 1-meter increase in ocean depth rather than for every 100-meter increase in ocean depth.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '58b109d4',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The solution to the given system of equations is . What is the value of ?',
    '-10',
    '{"type":"free_response"}',
    'The correct answer is . Adding  to both sides of the second equation in the given system yields .
Substituting  for  in the first equation in the given system yields . Subtracting  from
both sides of this equation yields . Factoring the left-hand side of this equation yields
, or . Taking the square root of both sides of this equation yields .
Subtracting  from both sides of this equation yields . Therefore, the value of  is .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'd4d513ff',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which expression is equivalent to ?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. Each term in the given expression, , has a common factor of . Therefore, the expression can
be rewritten as , or . Thus, the expression  is equivalent to the given expression.
Choice A is incorrect. This expression is equivalent to , not .
Choice B is incorrect. This expression is equivalent to , not .
Choice D is incorrect. This expression is equivalent to , not .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '974d33dc',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which of the following expressions is equivalent to the sum of
and  ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Grouping like terms, the given expressions can be rewritten as . This can
be rewritten as .
Choice A is incorrect and may result from adding the two sets of unlike terms,  and  as well as  and , and then
adding the respective exponents. Choice B is incorrect and may result from adding the unlike terms  and  as if they were
and  and adding the unlike terms  and  as if they were  and . Choice C is incorrect and may result from
errors when combining like terms.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '5c00c2c1',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'There were no jackrabbits in Australia before 1788 when 24 jackrabbits were
introduced. By 1920 the population of jackrabbits had reached 10 billion. If the
population had grown exponentially, this would correspond to a 16.2% increase, on
average, in the population each year. Which of the following functions best models
the population  of jackrabbits t years after 1788?
A.
B.
C.
D.',
    'C',
    '{"type":"free_response"}',
    'Choice C is correct. This exponential growth model can be written in the form , where  is the population t
years after 1788, A is the initial population, and r is the yearly growth rate, expressed as a decimal. Since there were 24
jackrabbits in Australia in 1788, . Since the number of jackrabbits increased by an average of 16.2% each year,
. Therefore, the equation that best models this situation is .
Choices A, B, and D are incorrect and may result from misinterpreting the form of an exponential growth model.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '5d93c782',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which expression is equivalent to ?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. The given expression may be rewritten as . Since the first two terms of this
expression have a common factor of  and the last two terms of this expression have a common factor of , this
expression may be rewritten as , or . Since each term of this expression
has a common factor of , it may be rewritten as .
Alternate approach: An expression of the form , where  and  are constants, can be factored if there are two
values that add to give  and multiply to give . In the given expression,  and . The values of  and  add to
give  and multiply to give , so the expression can be factored as .
Choice A is incorrect. This expression is equivalent to , not .
Choice C is incorrect. This expression is equivalent to , not .
Choice D is incorrect. This expression is equivalent to , not .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'ee05c84e',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'The function f is defined above. What is
the value of  ?
A. 250
B. 500
C. 750
D. 2,000',
    'C',
    '{"type":"multiple_choice","choices":{"A":"250","B":"500","C":"750","D":"2,000"}}',
    'Choice C is correct. Adding the like terms x and  yields the equation . Substituting 20 for x
yields . The product  is equal to 25, and the difference  is equal to 30.
Substituting these values in the given equation gives , and multiplying 25 by 30 results in .
Choices A, B, and D are incorrect and may result from conceptual or computational errors when finding the value of .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f11ffa93',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'What value of x satisfies the
equation above?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 117. Squaring both sides of the given equation gives , or . Subtracting 4 from
both sides of this equation gives .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '1a722d7d',
    'SAT',
    'Math',
    'Advanced Math',
    'Hard',
    'Nonlinear functions',
    'Let the function p be defined as , where c is a constant. If
, what is the value of  ?
A. 10.00
B. 10.25
C. 10.75
D. 11.00',
    'D',
    '{"type":"multiple_choice","choices":{"A":"10.00","B":"10.25","C":"10.75","D":"11.00"}}',
    'Choice D is correct. The value of p(12) depends on the value of the constant c, so the value of c must first be determined. It
is given that p(c) = 10. Based on the definition of p, it follows that:
This means that  for all values of x. Therefore:
Choice A is incorrect. It is the value of p(8), not p(12). Choices B and C are incorrect. If one of these values were correct, then
x = 12 and the selected value of p(12) could be substituted into the equation to solve for c. However, the values of c that
result from choices B and C each result in p(c) < 10.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f5247e52',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'In the equation above, a and c are positive constants. How many times does the
graph of the equation above intersect the graph of the equation  in the xy-
plane?
A. Zero
B. One
C. Two
D. More than two',
    'C',
    '{"type":"multiple_choice","choices":{"A":"Zero","B":"One","C":"Two","D":"More than two"}}',
    'Choice C is correct. It is given that the constants a and c are both positive; therefore, the graph of the given quadratic
equation is a parabola that opens up with a vertex on the y-axis at a point below the x-axis. The graph of the second equation
provided is a horizontal line that lies above the x-axis. A horizontal line above the x-axis will intersect a parabola that opens
up and has a vertex below the x-axis in exactly two points.
Choices A, B, and D are incorrect and are the result of not understanding the relationships of the graphs of the two equations
given. Choice A is incorrect because the two graphs intersect. Choice B is incorrect because in order for there to be only one
intersection point, the horizontal line would have to intersect the parabola at the vertex, but the vertex is below the x-axis and
the line is above the x-axis. Choice D is incorrect because a line cannot intersect a parabola in more than two points.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '3b4b8831',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'What is the negative solution to the given equation?',
    '-3',
    '{"type":"free_response"}',
    'The correct answer is . Dividing both sides of the given equation by  yields . Taking the square root of both
sides of this equation yields the solutions  and . Therefore, the negative solution to the given equation is .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a7711fe8',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'What is the minimum value of the function f
defined by  ?
A.
B.
C. 2
D. 4',
    'A',
    '{"type":"multiple_choice","choices":{"C":"2","D":"4"}}',
    'Choice A is correct. The given quadratic function f is in vertex form, , where  is the vertex of the
graph of  in the xy-plane. Therefore, the vertex of the graph of  is . In addition, the y-coordinate of
the vertex represents either the minimum or maximum value of a quadratic function, depending on whether the graph of the
function opens upward or downward. Since the leading coefficient of f (the coefficient of the term ) is 1, which is
positive, the graph of  opens upward. It follows that at , the minimum value of the function f is .
Choice B is incorrect and may result from making a sign error and from using the x-coordinate of the vertex. Choice C is
incorrect and may result from using the x-coordinate of the vertex. Choice D is incorrect and may result from making a sign
error.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '4236c5a3',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'If , which of the following is a
possible value of x ?
A. 1
B.
C.
D.',
    'D',
    '{"type":"multiple_choice","choices":{"A":"1"}}',
    'Choice D is correct. If , then taking the square root of each side of the equation gives  or .
Solving these equations for x gives  or . Of these,  is the only solution given as a choice.
Choice A is incorrect and may result from solving the equation  and making a sign error. Choice B is incorrect and
may result from solving the equation . Choice C is incorrect and may result from finding a possible value of .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'c602140f',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'Which of the following is equivalent to
the expression above?
A.
B.
C.
D.',
    'B',
    '{"type":"free_response"}',
    'Choice B is correct. Expanding all terms yields (x – 11y)(2x – 3y) – 12y(–2x + 3y), which is equivalent to 2x – 22xy – 3xy +
33y + 24xy – 36y. Combining like terms gives 2x – xy – 3y.
Choice A is incorrect and may be the result of using the sums of the coefficients of the existing x and y terms as the
coefficients of the x and y terms in the new expressions. Choice C is incorrect and may be the result of incorrectly combining
like terms. Choice D is incorrect and may be the result of using the incorrect sign in front of the 12y term.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'a58232b7',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The functions  and  are defined by the given equations, where . Which of the following equations displays, as a
constant or coefficient, the minimum value of the function it defines, where ?
I.
II.
A. I only
B. II only
C. I and II
D. Neither I nor II',
    'D',
    '{"type":"multiple_choice","choices":{"A":"I only","B":"II only","C":"I and II","D":"Neither I nor II"}}',
    'Choice D is correct. A function defined by an equation in the form , where , , and  are positive constants
and , has a minimum value of . It''s given that function  is defined by , which is
equivalent to . Substituting  for  in this equation yields , or
. Therefore, the minimum value of  is , so  doesn''t display its
minimum value as a constant or coefficient. It''s also given that function  is defined by . Substituting
for  in this equation yields , or . Therefore, the minimum value of  is , so
doesn''t display its minimum value as a constant or coefficient. Therefore, neither I nor II displays, as a
constant or coefficient, the minimum value of the function it defines, where .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'f25a34aa',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The area of a triangle is equal to  square centimeters. The length of the base of the triangle is  centimeters, and
the height of the triangle is  centimeters. What is the value of ?',
    '110',
    '{"type":"free_response"}',
    'The correct answer is . The area of a triangle is equal to one half of the product of the length of the base of the triangle
and the height of the triangle. It''s given that the length of the base of the triangle is  centimeters and the height of
the triangle is  centimeters; therefore, its area is  square centimeters. It''s also given that the
area of the triangle is equal to  square centimeters. Therefore, it follows that .  This equation
can be rewritten as , or . Subtracting  from both sides of this equation
yields . Adding  to both sides of this equation yields . Therefore, the value of  is .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '0354c7de',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which of the following is equivalent to
the given expression?
A.
B.
C.
D.',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. Since 5 is a factor of both terms,  and 15, the given expression can be factored and rewritten as
.
Choice B is incorrect and may result from subtracting 5 from the constant when factoring 5 from the given expression.
Choice C is incorrect and may result from factoring 5 from only the first term, not both terms, of the given expression. Choice
D is incorrect and may result from adding 5 to the constant when factoring 5 from the given expression.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '43926bd9',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'For the exponential function f, the table above shows several values of x and their corresponding values of , where a
is a constant greater than 1. If k is a constant and , what is the value of k ?',
    '',
    '{"type":"free_response"}',
    'The correct answer is 8. The values of  for the exponential function f shown in the table increase by a factor of  for
each increase of 1 in x. This relationship can be represented by the equation , where b is a constant. It’s given
that when , .  Substituting 2 for x and  for  into  yields . Since
, it follows that . Thus, an equation that defines the function f is . It follows that the value
of k such that  can be found by solving the equation , which yields .',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '2d2ab76b',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'General',
    'When the equations above are graphed in the xy-plane, what are the coordinates (x,
y) of the points of intersection of the two graphs?
A.
and
B.
and
C.
and
D.
and',
    'A',
    '{"type":"free_response"}',
    'Choice A is correct. The two equations form a system of equations, and the solutions to the system correspond to the points
of intersection of the graphs. The solutions to the system can be found by substitution. Since the second equation gives y =
3, substituting 3 for y in the first equation gives 3 = x – 1. Adding 1 to both sides of the equation gives 4 = x. Solving by
taking the square root of both sides of the equation gives x = ±2. Since y = 3 for all values of x for the second equation, the
solutions are (2, 3) and (–2, 3). Therefore, the points of intersection of the two graphs are (2, 3) and (–2, 3).
Choices B, C, and D are incorrect and may be the result of calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '7eed640d',
    'SAT',
    'Math',
    'Algebra',
    'Hard',
    'General',
    'The quadratic function above models the height above the ground h, in feet, of a
projectile x seconds after it had been launched vertically. If  is graphed in
the xy-plane, which of the following represents the real-life meaning of the positive
x-intercept of the graph?
A. The initial height of the projectile
B. The maximum height of the projectile
C. The time at which the projectile reaches its maximum height
D. The time at which the projectile hits the ground',
    'D',
    '{"type":"multiple_choice","choices":{"A":"The initial height of the projectile","B":"The maximum height of the projectile","C":"The time at which the projectile reaches its maximum height","D":"The time at which the projectile hits the ground"}}',
    'Choice D is correct. The positive x-intercept of the graph of  is a point  for which . Since  models
the height above the ground, in feet, of the projectile, a y-value of 0 must correspond to the height of the projectile when it is
0 feet above ground or, in other words, when the projectile is on the ground. Since x represents the time since the projectile
was launched, it follows that the positive x-intercept, , represents the time at which the projectile hits the ground.
Choice A is incorrect and may result from misidentifying the y-intercept as a positive x-intercept. Choice B is incorrect and
may result from misidentifying the y-value of the vertex of the graph of the function as an x-intercept. Choice C is incorrect
and may result from misidentifying the x-value of the vertex of the graph of the function as an x-intercept.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;

INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    'e597050f',
    'SAT',
    'Math',
    'Algebra',
    'Easy',
    'General',
    'Which expression is equivalent to ?
A.
B.
C.
D.',
    'D',
    '{"type":"free_response"}',
    'Choice D is correct. Combining like terms in the given expression yields , or .
Choice A is incorrect and may result from conceptual or calculation errors.
Choice B is incorrect and may result from conceptual or calculation errors.
Choice C is incorrect and may result from conceptual or calculation errors.',
    '',
    0
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;