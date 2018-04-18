<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Business Finder</title>

	<!-- Bootstrap -->
	<link rel="stylesheet" href="<?=base_url()?>assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?=base_url()?>assets/css/style.css">
	<script src="<?=base_url()?>assets/js/jquery-1.11.3.min.js"></script>
	<script src="<?=base_url()?>assets/js/popper.min.js"></script>

	<script src="<?=base_url()?>assets/js/bootstrap.min.js"></script>	

	<?php if($this->session->userdata('session_admin')){?>
		<link rel="stylesheet" href="<?=base_url()?>assets/css/dataTables.bootstrap4.min.css">
		<script src="<?=base_url()?>assets/js/jquery.dataTables.js"></script>
		<script src="<?=base_url()?>assets/js/dataTables.bootstrap.js"></script>

		<script type="text/javascript">
            $(document).ready(function() {
                $('#dataTable').DataTable();
            });
        </script>
	<?php } ?>
</head>
<body>
	<header>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h1 class="page-title">Business Finder</h1>
				</div>
			</div>
			<?php
				if($this->session->flashdata('fail')): ?>
		            <div class="row">
						<div class="col-lg-12 text-center">        
		                    <div class="alert alert-danger alert-dismissible" role="alert">
		                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		                        	<span aria-hidden="true">&times;</span>
		                        </button><?= $this->session->flashdata('fail') ?>
		                    </div>
		                </div>
	                </div>
            <?php endif; ?>

            <?php
				if($this->session->flashdata('success')): ?>
		            <div class="row">
						<div class="col-lg-12 text-center">        
		                    <div class="alert alert-success alert-dismissible" role="alert">
		                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		                        	<span aria-hidden="true">&times;</span>
		                        </button><?= $this->session->flashdata('success') ?>
		                    </div>
		                </div>
	                </div>
            <?php endif; ?>


		</div>
	</header>
