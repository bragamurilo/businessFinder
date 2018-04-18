<div class="container">
	<?php if(count($results) > 0){ ?>
		{results}
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">{titulo}</h5>
							<p class="card-text">in {titulo_categoria}</p>
							<?= anchor('{slug}', 'mais informações', ['class'=>'btn btn-primary btn-sm']); ?>
						</div>
					</div>
				</div>
			</div>
		{/results}
	<?php }else{ ?>
		<div class="row">
			<div class="col-lg-12">
			 	<div class="alert alert-danger alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    	<span aria-hidden="true">&times;</span>
                    </button>No records found!
                </div>
			</div>
		</div>

	<?php }?>
</div>