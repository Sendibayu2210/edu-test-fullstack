<div class="container mt-3">
    <div class="row justify-content-center">
	<h5 class="mb-4 text-primary">Formulir Siswa</h5>

	<?php echo form_open_multipart('siswa/add/check'); ?>
	<div class="row">
		<div class="col-lg-3 mb-3">
			<div class="card">
				<div class="card-body">
					<div class="position-relative">
						<img src="" alt="..." class="w-100" id="fotoPreview" required>
					</div>
				</div>
			</div>

			<!-- Foto -->
			<div class="my-3">
				<label for="foto" class="form-label">Foto</label>
				<input type="file" class="form-control <?php echo form_error('foto') ? 'is-invalid' : ''; ?>" id="foto" name="foto" accept=".jpg, .png" onchange="previewFoto(event)" required>
				<?php echo form_error('foto', '<div class="invalid-feedback">', '</div>'); ?>
			</div>

		</div>
		<div class="col-lg-6">        
			
			<!-- ID Lembaga -->
			<div class="mb-3">
				<label for="lembaga" class="form-label">ID Lembaga</label>
	
				<select name="lembaga" id="lembaga" class="form-control  <?php echo form_error('lembaga') ? 'is-invalid' : ''; ?>" required>
					<option value="">Pilih Lembaga</option>
					<?php foreach($lembaga as $dt) : ?> 
						<option value="<?= $dt->id; ?>" <?php echo set_select('lembaga', $dt->id); ?>>
							<?= $dt->nama_lembaga; ?>
						</option>
					<?php endforeach; ?>
				</select>								
			</div>			
			
			<!-- NIS -->
			<div class="mb-3">
				<label for="nis" class="form-label">NIS</label>
				<input type="number" class="form-control <?php echo form_error('nis') ? 'is-invalid' : ''; ?>" id="nis" name="nis" value="<?php echo set_value('nis'); ?>" required>
				<?php echo form_error('nis', '<div class="invalid-feedback">', '</div>'); ?>
			</div>
	
			<!-- Nama -->
			<div class="mb-3">
				<label for="nama" class="form-label">Nama</label>
				<input type="text" class="form-control <?php echo form_error('nama') ? 'is-invalid' : ''; ?>" id="nama" name="nama" value="<?php echo set_value('nama'); ?>" required>
				<?php echo form_error('nama', '<div class="invalid-feedback">', '</div>'); ?>
			</div>
	
			<!-- Email -->
			<div class="mb-3">
				<label for="email" class="form-label">Email</label>
				<input type="email" class="form-control <?php echo form_error('email') ? 'is-invalid' : ''; ?>" id="email" name="email" value="<?php echo set_value('email'); ?>" required>
				<?php echo form_error('email', '<div class="invalid-feedback">', '</div>'); ?>
			</div>				
	
			<!-- Tombol Submit -->
			<button type="submit" class="btn btn-light w-100 mt-3">Submit</button>
	
			<?php echo form_close(); ?>
		</div>
	</div>
	<?php echo form_error('lembaga', '<div class="invalid-feedback">', '</div>'); ?>

    </div>
</div>

<script>
	function previewFoto(event) {
		var input = event.target;

		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function (e) {
				$('#fotoPreview').attr('src', e.target.result);
				// $('#fotoPreview').show();
			};

			reader.readAsDataURL(input.files[0]);
		}
	}

</script>