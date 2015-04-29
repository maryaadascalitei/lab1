$(document).ready(function(){
  Rating();
});


var Rating = function(){
  $('.star').raty({
    readOnly: true,
    score: $(this).data("average-rating"),
    path: '/assets'
  });

  $('.user_star').raty({
    score: $(this).data("user_rating"),
    path: '/assets',
    click: function(score, evt) {
      $.ajax({
        url: '/ratings/',
        type: 'PATCH',
        data: { score: score }
      }).done(function (data){});
    }
  });
};