$('.nav-tabs').each(function(){
  var $this = $(this);
  var $tab = $this.find('li.active');
  var $link = $tab.find('a');
  var $panel = $($link.attr('href');

  $this.on('click', function(e){
    e.preventDefault();
    var $link = $this;
    var id = $this.hash;
    if (id && !$link.is('.active')) {
      $tab.removeClass('.active');
      $panel.removeClass('.active');
      $tab = $link.parent().addClass('active');
      $panel = $(id).addClass('active')
    }
  });
});