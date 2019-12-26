jQuery( document ).ready( function( $ ) {
	// Split string
	function cf7_split( val ) {
		return val.split( /,\s*/ );
	}
	// Add extract last
	function cf7_extractLast( term ) {
		return cf7_split( term ).pop();
	}
	// Input keydown.
	$( '#cf7_additional_shortcode' )
		// don't navigate away from the field on tab when selecting an item
		.on( "keydown", function( event ) {
			if ( event.keyCode === $.ui.keyCode.TAB &&
				$( this ).autocomplete( 'instance' ).menu.active ) {
				event.preventDefault();
		}
	} )
	.autocomplete( {
		minLength: 0,
		source: function( request, response ) {
		// delegate back to autocomplete, but extract the last term
		response( $.ui.autocomplete.filter(
			JSON.parse( CF7_Option.source ), cf7_extractLast( request.term ) ) );
		},
		focus: function() {
			// prevent value inserted on focus
			return false;
		},
		select: function( event, ui ) {
			var terms = cf7_split( this.value );
			// remove the current input
			terms.pop();
			// add the selected item
			terms.push( ui.item.value );
			// add placeholder to get the comma-and-space at the end
			terms.push( '' );
			terms = $.grep( terms, function( el, index ) {
				return index == $.inArray( el, terms );
			} );
			this.value = terms.join( ', ' );
			return false;
		}
	} );
  } );
