function ready() {
	Newspaper.setLayout();
}

window.Newspaper = {};

Newspaper.setLayout = function() {
	var $container = $('#container');
	// initialize
	$container.imagesLoaded(function() {
		$container.masonry({
		  columnWidth: '.half-width',
		  itemSelector: '.item'
		});
	});
}

$(document).ready(ready);
$(document).on('page:load', ready);

	