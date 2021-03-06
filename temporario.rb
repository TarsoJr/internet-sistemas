h1 align="center"  = t('listing_all_classrooms')
br
.center
= link_to t('new_classroom'), new_classroom_path, class: "btn btn-success"
br
br
- @courses.each do |course|
  .row
    .col-xs-8.col-xs-offset-2
      .well.well-lg
        .classroom-title
          h4
          table.table
            tbody
              tr 
                th = link_to course.name, course_path(course.id)
                th = RegisterStatus.t(course.status)
        .classroom-body

          table.table

            thead
              tr
                th = t('students_enrolled')
                th = t('register_number')

            tbody
            - todas_as_classes_de_id = Classroom.where("cast(course_id as text) LIKE ?", course.id.to_s)
            - ids_alunos = Array.new
            - todas_as_classes_de_id.each do |alunos|
              - ids_alunos << alunos.student_id
            - ids_alunos.each do |id|

              tr class="#{cycle('list_line_odd', 'list_line_even')}"
                td = link_to Student.find(id).name, student_path(id)
                td = Student.find(id).register_number 


          .classroom-actions

            = link_to t("edit"), edit_course_path(course), class: "btn btn-xs btn-warning"
            = link_to t("delete"), course_path(course), method: :delete, \
              data: { confirm: "Are you sure you want to delete the classroom?"},          \
              class: "btn btn-xs btn-danger"   
