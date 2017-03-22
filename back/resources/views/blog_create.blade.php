<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		.hidden{display:none;}
	</style>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<!-- <script src="{{ URL('public/backend/plugins/jQuery/jQuery-2.1.4.min.js') }}" type="text/javascript"></script> -->
	<script src="//cloud.tinymce.com/stable/tinymce.min.js?apiKey=xdbl4exhyeel2f9ddjk2fjwbxsyn4vs4n6u1xpqvz84diyaq"></script>
	<!-- <script src="{{ URL('public/backend/plugins/tinymce/js/tinymce/tinymce.min.js?apiKey=xdbl4exhyeel2f9ddjk2fjwbxsyn4vs4n6u1xpqvz84diyaq') }}" type="text/javascript"></script> -->
</head>
<body>
	<form action="{{ route('blog.store') }}" method="post">
		{{ csrf_field() }}
	
		<input type="text" name="title">
		<textarea name="description" id="textarea1">Easy (and free!) You should check out our premium features.</textarea>
 		<input name="image" type="file" id="upload" class="hidden" onchange="">


		<textarea name="description2" id='textarea2'>Easy (and free!) You should check out our premium features.</textarea>
		

 		<button type="submit">Save</button>
	</form>	

	
	
	<script>
		tinymce.init({
			selector: '#textarea1',
			height: 200,
			theme: 'modern',
			// paste_data_images: true,
			plugins: [
			'advlist autolink lists link image charmap print preview hr anchor pagebreak',
			'searchreplace wordcount visualblocks visualchars code fullscreen',
			'insertdatetime media nonbreaking save table contextmenu directionality',
			'emoticons template paste textcolor colorpicker textpattern imagetools codesample toc'
			],
			toolbar1: 'undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
			// image_class_list: [
			//     {title: 'None', value: ''},
			//     {title: 'Dog', value: 'dog'},
			//     {title: 'Cat', value: 'cat'}
			// ],
			// image_prepend_url: "http://www.tinymce.com/images/",
			toolbar2: 'print preview media | forecolor backcolor emoticons | codesample',
			// image_advtab: true,
			file_picker_callback: function(callback, value, meta) {
			    if (meta.filetype == 'image') {
			        $('#upload').trigger('click');
			        $('#upload').on('change', function() {
			          var file = this.files[0];
			          var reader = new FileReader();
			          reader.onload = function(e) {
			            callback(e.target.result, {
			              alt: ''
			            });
			          };
			          reader.readAsDataURL(file);
			        });
		      	}
		    },
			// file_browser_callback_types: 'file image media',
			// file_browser_callback: function(field_name, url, media, win) {
			//     win.document.getElementById(field_name).value = 'asdf';
			// },
			templates: [
			{ title: 'Test template 1', content: 'Test 1' },
			{ title: 'Test template 2', content: 'Test 2' }
			],
			content_css: [
			'//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
			'//www.tinymce.com/css/codepen.min.css'
			]
		});
	</script>


	<script type="text/javascript">
		
		tinymce.init({
		    selector: "#textarea2",
		    theme: "modern",
		    width: 800,
		    height: 300,
		    plugins: [
			'advlist autolink lists link image charmap print preview hr anchor pagebreak',
			'searchreplace wordcount visualblocks visualchars code fullscreen',
			'insertdatetime media nonbreaking save table contextmenu directionality',
			'emoticons template paste textcolor colorpicker textpattern imagetools codesample toc responsivefilemanager'
			],
			toolbar1: 'undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
			// image_class_list: [
			//     {title: 'None', value: ''},
			//     {title: 'Dog', value: 'dog'},
			//     {title: 'Cat', value: 'cat'}
			// ],
			// image_prepend_url: "http://www.tinymce.com/images/",
			toolbar2: '| responsivefilemanager | print preview media | forecolor backcolor emoticons | codesample',


		   //  plugins: [
		   //       "advlist autolink link image lists charmap print preview hr anchor pagebreak",
		   //       "searchreplace wordcount visualblocks visualchars insertdatetime media nonbreaking spellchecker",
		   //       "table contextmenu directionality emoticons paste textcolor codesample toc responsivefilemanager "
		   // ],
		 //   	convert_urls:true,
			// relative_urls:false,
			// remove_script_host:false,
		 //    document_base_url: "{{ url('').'/' }}",
		 relative_urls : true,
document_base_url : "http://www.example.com/path1/",
		    filemanager_title:"filemanager",
		    filemanager_crossdomain: true,
		    external_filemanager_path:"{{ URL('public/backend/plugins/filemanager').'/' }}",
		    external_plugins: { "filemanager" : "{{ URL('public/backend/plugins/filemanager/plugin.min.js') }}"},
		  
		   image_advtab: true,
		   // toolbar1: "undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | styleselect",
		   // toolbar2: "| responsivefilemanager | image | media | link unlink anchor | print preview | codesample"
		 });
	</script>
</body>
</html>