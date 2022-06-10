# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
person_1 = Employee.create(first_name: "Alfred", last_name: "Brown")
person_2 = Employee.create(first_name: "Tim", last_name: "Cannady")
person_3 = Employee.create(first_name: "Jeff", last_name: "Auston")



shift_1 = Shift.create(
        day: 0,
        start_at: "12pm",
        end_at: "5pm",
        duration: 5,
        role: "Server",
        color: "red",
        employee_id: person_1.id
)
shift_2 = Shift.create(
        day: 1,
        start_at: "9am",
        end_at: "12pm",
        duration: 3,
        role: "Host",
        color: "green",
        employee_id: person_1.id
)
shift_2 = Shift.create(
        day: 3,
        start_at: "9am",
        end_at: "4pm",
        duration: 7,
        role: "Server",
        color: "red",
        employee_id: person_1.id
)
shift_3 = Shift.create(
        day: 5,
        start_at: "9am",
        end_at: "2pm",
        duration: 5,
        role: "Host",
        color: "green",
        employee_id: person_1.id
)
shift_4 = Shift.create(
        day: 0,
        start_at: "11am",
        end_at: "6pm",
        duration: 7,
        role: "Chef",
        color: "orange",
        employee_id: person_2.id
)
shift_5 = Shift.create(
        day: 1,
        start_at: "9am",
        end_at: "3pm",
        duration: 6,
        role: "Dishwasher",
        color: "purple",
        employee_id: person_2.id
)
shift_6 = Shift.create(
        day: 2,
        start_at: "9am",
        end_at: "1pm",
        duration: 4,
        role: "Chef",
        color: "orange",
        employee_id: person_2.id
)
shift_6 = Shift.create(
        day: 5,
        start_at: "9pm",
        end_at: "4am",
        duration: 7,
        role: "Dishwasher",
        color: "purple",
        employee_id: person_2.id
)
shift_7 = Shift.create(
        day: 1,
        start_at: "11am",
        end_at: "6pm",
        duration: 7,
        role: "Chef",
        color: "orange",
        employee_id: person_3.id
)
shift_8 = Shift.create(
        day: 2,
        start_at: "9am",
        end_at: "3pm",
        duration: 6,
        role: "Dishwasher",
        color: "purple",
        employee_id: person_3.id
)
shift_9 = Shift.create(
        day: 4,
        start_at: "9am",
        end_at: "1pm",
        duration: 5,
        role: "Chef",
        color: "orange",
        employee_id: person_3.id
)
shift_10 = Shift.create(
        day: 6,
        start_at: "9am",
        end_at: "4pm",
        duration: 7,
        role: "Dishwasher",
        color: "purple",
        employee_id: person_3.id
)
