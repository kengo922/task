# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Department.create(name:'数学部')
Department.create(name:'社会学部')
Department.create(name:'外国学部')

Subject.create(name:'幾何学')
Subject.create(name:'数学')
Subject.create(name:'日本史')
Subject.create(name:'世界史')
Subject.create(name:'英語')
Subject.create(name:'日本語')

Day.create(name: '月曜日')
Day.create(name: '火曜日')
Day.create(name: '水曜日')
Day.create(name: '木曜日')
Day.create(name: '金曜日')
Day.create(name: '土曜日')

Limit.create(name: '1時限目')
Limit.create(name: '2時限目')
Limit.create(name: '3時限目')
Limit.create(name: '4時限目')
Limit.create(name: '5時限目')
Limit.create(name: '6時限目')

Teacher.create(name:'吉村匡史', department_id:1, subject_id:1, day_id: 3, limit_id:2)
Teacher.create(name:'吉村匡史', department_id:1, subject_id:2, day_id: 1, limit_id:3)
Teacher.create(name:'平野涼', department_id:2, subject_id:3, day_id: 5, limit_id:2)
Teacher.create(name:'平野涼', department_id:2, subject_id:4, day_id: 4, limit_id:4)
Teacher.create(name:'山田太郎', department_id:3, subject_id:5, day_id: 3, limit_id:5)
Teacher.create(name:'山田太郎', department_id:3, subject_id:6, day_id: 1, limit_id:6)
# TeacherSubject.create(teacher_id:1, subject_id:1)
# TeacherSubject.create(teacher_id:1, subject_id:2)
# TeacherSubject.create(teacher_id:2, subject_id:3)
# TeacherSubject.create(teacher_id:2, subject_id:4)
# TeacherSubject.create(teacher_id:3, subject_id:5)
# TeacherSubject.create(teacher_id:3, subject_id:6)
# TeacherSubject.create(teacher_id:4, subject_id:7)
# TeacherSubject.create(teacher_id:4, subject_id:8)
