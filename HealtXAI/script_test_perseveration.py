from utils.util_functions import *
import os

output_dir = "test_creati_cingo"
os.makedirs(output_dir, exist_ok=True)

query_activities_actions = """SELECT aty.activity_id, aty.description AS activity_description, tt.task_id, tt.description AS task_description FROM activity_types AS aty
JOIN task_types AS tt ON tt.activity_id = aty.activity_id"""


query_patients = '''SELECT patient_id FROM patients'''


