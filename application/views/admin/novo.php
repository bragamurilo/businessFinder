<div class="container">
	<?= form_open('admin/novo');?>
		<h4>Add Business</h4>
		<div class="form-group">
			<label for="titulo">Title</label>
			<input type="text" name="titulo" id="titulo" class="form-control" required="required" value="<?=set_value('titulo
l')?>">
		</div>

		<div class="form-group">
			<label for="telefone">Phone</label>
			<input type="number" name="telefone" id="telefone" class="form-control" required="required" value="<?=set_value('telefone
l')?>">
		</div>

		<div class="form-group">
			<label for="endereco">Adress</label>
			<input type="text" name="endereco" id="endereco" class="form-control" required="required" value="<?=set_value('endereco
l')?>">
		</div>

		<div class="form-group">
			<label for="cep">Zipcode</label>
			<input type="number" name="cep" id="cep" class="form-control" required="required" value="<?=set_value('cep
l')?>">
		</div>

		<div class="form-group">
			<label for="cidade">City</label>
			<select class="form-control" name="cidade" id="cidade">
				{cidades}
					<option value="{nome}">{nome}</option>
				{/cidades}
			</select>
		</div>

		<div class="form-group">
			<label for="estado">State</label>
			<select class="form-control" name="estado" id="estado">
				{estados}
					<option value="{sigla}">{nome}</option>
				{/estados}
			</select>
		</div>

		<div class="form-group">
			<label for="descricao">Description</label>
			<textarea type="text" name="descricao" id="descricao" class="form-control" required="required" rows="3"><?=set_value('descricao
l')?></textarea>
		</div>

		<div class="form-group">
			<label for="id_categoria">Category</label>
			<select class="form-control" name="id_categoria" id="id_categoria">
				{categorys}
					<option value="{id}">{titulo}</option>
				{/categorys}
			</select>
		</div>
		<div class="form-group text-center">
			<button type="submit" class="btn btn-success">Save</button>
		</div>
	<?= form_close();?>
</div>