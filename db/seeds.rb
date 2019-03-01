# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.new(
  email: 'admin@admin',
  password: '123456',
  role: 1
)
admin.skip_confirmation!
admin.save

# Course.create!(name: 'Разработчик Ruby on Rails')
# Group.create(name: 'RoR-1', course_id: 1, start: '12/02/2018', end: '05/02/2019')
# Template.create!(title: 'на оказание услуг по обучению')
# sections = [
# [1, 'Предмет договора'],
# [2, 'Права и обязанности Сторон'],
# [3, 'Стоимость обучения и порядок оплаты'],
# [4, 'Ответственность сторон'],
# [5, 'Заключительные положения'],
# [6, 'Подписи и реквизиты сторон']
# ]

# sections.each_with_index do |section, index|
#   index = Section.create!(
#     number: section[0],
#     title: section[1],
#     template_id: 1
#     )
# end

# clauses = [
#   ['1.1', 'Образовательный центр обязуется оказать Услуги по обучению Студента по дисциплине «<Course>» (далее – «Дисциплина»), а Студент обязуется принять и оплатить услуги Образовательного центра (далее – «Услуги») на условиях, определенных Сторонами в настоящем Договоре.', 1],
#   ['1.2', 'Срок обучения: <period>.', 1],
#   ['1.3', 'Место проведения обучения: г. Алматы, пр.Жибек-Жолы 135, блок 3 8 этаж.', 1],
#   ['2.1', 'Образовательный центр обязан:', 2],
#   ['2.1.1', 'провести обучение Студента согласно программе обучения, являющейся Приложением к Договору, в соответствии с внутренними правилами, требованиями, и расписанием, действующем в Образовательном центре;', 2],
#   ['2.1.2', 'для выполнения своих обязательств, привлекать преподавателей, квалификация и практический опыт, которых соответствуют требованиям Образовательного центра;', 2],
#   ['2.1.3', 'в период действия Договора, обеспечить беспрепятственный доступ Студентов в помещения Образовательного центра и предоставить право пользования учебно-материальной базой;', 2],
#   ['2.1.4', 'в случае полного и успешного прохождения учебной программы, Образовательный центр обязан выдать Студенту свидетельство, подтверждающее успешное окончание Курса с оценкой, определяющей уровень освоения программы обучения;', 2],
#   ['2.1.5', 'вернуть предоплату за обучение по требованию Студента, в полном размере, в случае расторжения Договора по инициативе Студента, в течение одного месяца с момента заключения Договора.', 2],
#   ['2.2', 'Образовательный центр вправе:', 2],
#   ['2.2.1', 'оценивать успеваемость Студента в соответствии с внутренними правилами Образовательного центра и мнения преподавателей;', 2],
#   ['2.2.2', 'корректировать программу обучения, с целью улучшения ее усвоения Студентами. При этом, Стороны договорились, что такие изменения не будут являться существенными изменения условий настоящего Договора;', 2],
#   ['2.2.3', 'расторгнуть настоящий Договор на условиях и в порядке, определенном в Договоре;', 2],
#   ['2.2.4', 'самостоятельно определять внутренний распорядок, правила и график работы Образовательного центра, заблаговременно известив об изменениях Студента, посредством средств обмена электронными сообщениями, используемых Образовательным центром;', 2],
#   ['2.2.5', 'требовать от Студента надлежащего исполнения своих обязательств по Договору.', 2],
#   ['2.3', 'Студент обязан:', 2],
#   ['2.3.1.', 'изучить в полном объеме теоретическую и практическую части Курса по выбранной им дисциплине, определенной в п. 1.1. Договора;', 2],
#   ['2.3.2', 'выполнять все домашние задания и надлежащим образом посещать занятия, проводимые в помещении Образовательного центра и посредством интернета (вебинары);', 2],
#   ['2.3.3', 'не опаздывать на занятия и не пропускать их без уважительной причины;', 2],
#   ['2.3.4', 'соблюдать внутренний распорядок и правила, установленные Образовательным центром;', 2],
#   ['2.3.5', 'бережно относиться к имуществу Образовательного центра, а в случае причинения ущерба – возместить его по первому требованию Образовательного центра;', 2],
#   ['2.3.6', 'своевременно и в полном объеме оплачивать Услуги в порядке и на условиях, определенных в настоящем Договоре;', 2],
#   ['2.3.7', 'принять оказанные Образовательным центром Услуги, путем подписания Акта выполненных работ, либо предоставить мотивированный отказ от его подписания в течение трех рабочих дней с даты его предоставления Образовательным центром.', 2],
#   ['2.4', 'Студент вправе:', 2],
#   ['2.4.1', 'в пределах графика работы Образовательного центра, обращаться к специалистам Образовательного центра (в том числе преподавателям) за разъяснениями и для получения индивидуальных консультаций по пройденному учебному материалу в рамках программы обучения;', 2],
#   ['2.4.2', 'получать полную и достоверную информацию об оценке своей успеваемости и критериях ее оценки;', 2],
#   ['2.4.3', 'обратиться к руководству Образовательного центра с предложениями, пожеланиями и/или замечаниями по поводу Услуг, оказываемых Образовательным центром;', 2],
#   ['2.4.4', 'расторгнуть договор по любой причине в течение одного месяца с даты заключения Договора и требовать полного возврата предоплаты за обучение.', 2],
#   ['3.1', 'Стоимость обучения составляет 100 000 (сто тысяч) тенге за каждый учебный месяц обучения.', 3],
#   ['3.2', 'Образовательный центр вправе предоставить скидку в размере и на условиях, определяемых Образовательным центром в соответствии с его внутренними актами.', 3],
#   ['3.3', 'Оплата Услуг производится Студентом в начале каждого учебного месяца, но не позднее 7 (семи) рабочих дней после даты проведения промежуточной контрольной работы, проводимой в конце каждого учебного месяца.', 3],
#   ['3.4', 'В случае, если Студент уклоняется от подписания Акта выполненных работ и не предоставил мотивированный отказ от его подписания, в установленный п. 2.3.7. Договора срок, то такие Услуги считаются оказанными Образовательным центром в полном объеме и с надлежащим качеством.', 3],
#   ['4.1', 'Стороны освобождаются от ответственности за частичное или полное неисполнение обязательств по настоящему Договору, если такое неисполнение вызвано обстоятельствами непреодолимой силы (форс-мажор) и если наступление таких обстоятельств подтверждены уполномоченным органом. О любом из таких обстоятельств Сторона, в отношении которой такие обстоятельства наступили, должна письменно уведомить другую Сторону не позднее 10 (Десяти) рабочих дней с  того момента, когда ей стало об этом известно. В противном случае неуведомление является основанием для признания таких обстоятельств не наступившими. Если невозможность полного или частичного исполнения обязательств Сторонами будет существовать свыше 30 (тридцати) календарных дней, то Стороны имеют право расторгнуть Договор.', 4],
#   ['4.2', 'В случае возникновения разногласий и споров при исполнении Сторонами настоящего Договора Стороны будут стремиться урегулировать их путем переговоров  и переписки. До предъявления иска, вытекающего из настоящего Договора, обязательно предъявление претензии в письменной форме. Сторона, получившая претензию, обязана рассмотреть ее и в письменной форме уведомить об удовлетворении или о мотивированном отказе от удовлетворения претензии в течение трех рабочих дней со дня ее получения.', 4],
#   ['4.3', 'В случае невозможности разрешения споров путем переговоров Стороны передают их на рассмотрение в судебные органы, в соответствии с действующим законодательством РК.', 4],
#   ['5.1', 'Настоящий Договор вступает в силу с даты его подписания и действует до полного исполнения Сторонами своих обязательств.', 5],
#   ['5.2', 'Договор может быть расторгнут по инициативе Студента путем направления соответствующего уведомления (заявления) в адрес Образовательного центра не менее чем за 10 (десять) календарных дней до предполагаемой даты его расторжения.', 5],
#   ['5.3', 'Договор может быть расторгнут по инициативе Образовательного центра в случаях:', 5],
#   ['5.3.1', 'невыполнения  Студентом обязательств по оплате оказанных ему Услуг;', 5],
#   ['5.3.2', 'посещения занятий в состоянии алкогольного или иного опьянения;', 5],
#   ['5.3.3', 'отказа Студента от подписания соответствующего Дополнительного соглашения к Договору, определяющего стоимость обучения;', 5],
#   ['5.3.4', 'в иных случаях, предусмотренных действующим законодательством РК.', 5],
# ]

# clauses.each_with_index do |clause, index|
#   index = Clause.create!(
#     number: clause[0],
#     body: clause[1],
#     section_id: clause[2]
#     )
# end

# student_1 = Student.create!(
#   first_name: 'Александр',
#   last_name: 'Пушкин',
#   middle_name: 'Сергеевич',
#   iin: 123654789632,
#   tel_1: '87775556666',
#   tel_2: '87779996622',
#   email: 'student@student',
#   telegram: 'ivanov222',
#   gender: 1,
#   id_card: '3698521478',
#   date_of_issue: '12/01/2015',
#   issued_by: 'МВД РК',
#   group_id: 1)

# student_2 = Student.create!(
#   first_name: 'Михаил',
#   last_name: 'Лермонтов',
#   middle_name: 'Юрьевич',
#   iin: 123654789632,
#   tel_1: '87775556666',
#   tel_2: '87779996622',
#   email: 'lermontov@gmail',
#   telegram: 'ivanov222',
#   gender: 1,
#   id_card: '3698521478',
#   date_of_issue: '12/01/2015',
#   issued_by: 'МЮ РК',
#   group_id: 1)

# 1.times do |i|
#   i = Teacher.create!(
#   first_name: 'Уэлс',
#   last_name: 'Герберт',
#   middle_name: 'Андреевич',
#   tel_1: '87775878787',
#   tel_2: '87775454548',
#   email: 'gerberd@gmail',
#   telegram: 'gerberd1112232')

#   i.picture.attach(
#     io:File.open("app/assets/images/#{i.id}.jpeg"),
#     filename: "{i.id}.jpeg")
# end

# Theme.create!(number: 1, title: 'Знакомство с HTML', course_id: 1)
# Requisite.create!(
#   owner: "ТОО Образовательный центр \"Аттрактор скул Алматы\"",
#   address: "Казахстан, город Алматы, Алмалинский район, проспект Жибек Жолы, дом 135",
#   bin: 171240019162,
#   bank: "АО «Kaspi Bank»",
#   iik: "KZ88722S000001417077",
#   bik: "CASPKZKA",
#   email: "almaty@it-attractor.com",
#   web: "http://attractor-school.com/almaty",
#   tel_1: '+7 (707) 186 00 11',
#   tel_2: '+7 (707) 186 12 77',
#   tel_3: '+7 (707) 186 00 33',
#   function: 'Директор',
#   function_2: 'Директора',
#   fio: 'Гудов А.О.',
#   fio_2: 'Гудова Александра Олеговича',
#   based: 'Устава'
#   )

# Lesson.create!(theme_id: 1, date: '12/02/2019', group_id: 1)
# Homework.create!(date: '17/02/2019', student_id: 2, lesson_id: 1)
