from .student import Student

class Instructor:
    def __init__(self, first_name, last_name, slack_handle, cohort):
        self.first_name = first_name
        self.last_name = last_name
        self.slack_handle = slack_handle
        self.cohort = cohort
        self.speciality = ""
    
    def add_exercise(self, student, exercise):
        student.current_exercises.append(exercise)
        
