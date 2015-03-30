
console.log($('.tab-list'));


$('.tab-list a').on('click', function() {
  var link = $(this).attr('href');
  console.log(link);
  // $(link)
});


$('.tab-list').each(function(){
  console.log($(this));
  var $this = $(this);
  var $tab = $this.find('li.active');
  var $link = $tab.find('a');
  var $panel = $($link.attr('href'));

  $this.on('click', '.tab-control', function(e){
    e.preventDefault();
    var $link = $(this);
    var id = this.hash;
    console.log($link);
    console.log(id);
    if (id && !$link.is('.active')) {
      $panel.removeClass('active');
      $tab.removeClass('active');

      $panel = $(id).addClass('active');
      $tab = $link.parent().addClass('active');   
    }
  });
});