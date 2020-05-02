from NSS import Cohort, Student, Exercise, Instructor


easy_exercise = Exercise("Celebrity Tribute", "HTML")
medium_exercise = Exercise("WTN", "Javascript")
hard_exercise = Exercise("Nutshell", "Javascript")
mega_hard_exercise = Exercise("Capstone", "Javascript/React")

cohort_36 = Cohort(36)
cohort_37 = Cohort(37)
cohort_38 = Cohort(38)

cooper = Student("Cooper", "Nichols", "@Coop", 38)
michael = Student("Michael", "Clark", "@MC", 38)
katie = Student("Katie", "Wohl", "@Katsbe", 36)
matt =  Student("Matthew", "Kroeger", "@Mimmik", 36)

andy = Instructor("Andy", "Collins", "TGWG", 38)
kristen = Instructor("Kristen", "@Norris", "LoveHanson", 38)
bryan = Instructor ("Bryan", "Nilsen", "@BryFive", 38)
jisie = Instructor ("Jisie", "David", "@Queen", 36)

cohort_38.add_instructor(andy, bryan, kristen)
cohort_36.add_instructor(jisie)


cohort_38.add_student(cooper)
cohort_38.add_student(michael)
cohort_36.add_student(katie)
cohort_36.add_student(matt)



andy.add_exercise(cooper, easy_exercise)
andy.add_exercise(cooper, hard_exercise)
bryan.add_exercise(michael, hard_exercise)
bryan.add_exercise(michael, medium_exercise)
jisie.add_exercise(katie, hard_exercise)
jisie.add_exercise(katie, mega_hard_exercise)
jisie.add_exercise(matt, mega_hard_exercise)
jisie.add_exercise(matt, hard_exercise)







andy.add_exercise(cooper, easy_exercise)




