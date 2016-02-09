// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on('page:change', function(event) {
  page_ready();
});

function page_ready(){
  $('#student_id').on('change',function(){
    get_courses($(this).val());
  });
};

function get_courses(p_student_id) {
  $('#course_id').empty();
  if (p_student_id > 0) {
    $.ajax({
     type: "POST",
     url: "/courses/get_all_free_by_student",
     data: { student_id: p_student_id },
     dataType: 'json',
     success: function(courses) {
       $(courses).each(function(index,course) {
         $('#course_id').append('<option value="' + course.id + '">' + course.name + '</option>');
       });
     }
   })
 };
};
