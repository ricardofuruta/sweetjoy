// var set_stars = function(baker_id, stars) {
//   for(i=1; i <= 5; i++){
//     if(i <= stars){
//       $(‘#’ + baker_id + ‘_’ + i).addClass(“on”);
//     } else {
//       $(‘#’ + baker_id + ‘_’ + i).removeClass(“on”);
//     }
//   }
// }

// $(function() {
//   $(‘.rating_star’).click(function() {
//     var star = $(this);
//     var baker_id = star.attr(“data-baker-id”);
//     var stars = star.attr(“data-stars”);

//     $(‘#’ + baker_id + ‘_stars’).val(stars);

//     $.ajax({
//       type: “post”,
//       url: $(‘#’ + baker_id).attr(‘action’),
//       data: $(‘#’ + baker_id).serialize()
//     })
//   });

//   $(‘.star_rating_baker’).each(function() {
//     var baker_id = $(this).attr(‘id’);
//     set_stars(baker_id, $(‘#’ + baker_id + ‘_stars’).val());
//   });
// });
