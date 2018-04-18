<div class="container">
	<?php if(count($results > 0)): ?>
		
			<div class="row">
				<div class="col-lg-12">
					<h4>
						Business
						<?= anchor('admin/novo', 'Add Business', ['class'=>'btn btn-success btn-sm', 'style'=> 'float:right;']);?>
					</h4><br>
					<table class="table table-bordered table-striped" id="dataTable">		
						<thead>         
				            <tr>
				                <th>Name</th>
				            </tr>
       					</thead>				
						<tbody>
							{results}
								<tr>
									<td>{titulo}</td>
								</tr>
							{/results}
						</tbody>
					</table>
				</div>
			</div>
	<?php endif;?>
</div>