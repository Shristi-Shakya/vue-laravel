<table border='1'>
	
	<tr>
		<td>Title</td>
		<td>Description</td>
	</tr>
	@foreach($blog as $value)
		<tr>
			<td>{{ $value->title }}</td>
			<td>{!! $value->description !!}</td>
		</tr>
	@endforeach
</table>