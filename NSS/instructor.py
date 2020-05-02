from .student import Student
from .nss_person import NSSPerson

class Instructor(NSSPerson):
    def __init__(self, first_name, last_name, slack_handle, cohort):
        super().__init__(first_name, last_name, slack_handle, cohort)
        self.speciality = ""
    
    def add_exercise(self, student, exercise):
        student.current_exercises.append(exercise)
        
