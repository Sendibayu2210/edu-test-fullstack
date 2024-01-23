<div class="container mt-3">    

    <div class="card">
        <div class="card-body">
            <div class="d-flex justify-content-between mb-3">
                <div class="d-flex">
                    <a href="<?= base_url('siswa/add'); ?>" class="btn btn-primary me-2"><i class="fas fa-plus me-1"></i> Tambah Siswa</a>                   
                </div>
                <div class="d-flex">

                    <form action="<?= base_url('siswa'); ?>" method="get" id="form-search">
                        <div class="d-flex">    
                            <div class="input-group">
                                <input type="text" name="search" class="form-control" value="<?= (isset($_GET['search'])) ? $_GET['search'] : ''; ?>" placeholder="Cari data siswa..">
                                <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>
                            </div>                    
                            <div class="mx-2">
                                <select name="lembaga" id="lembaga" class="form-control" style="width: 150px;">
                                    <option value="">Pilih Lembaga</option>
                                    <?php foreach($lembaga as $dt) : ?> 
                                        <option value="<?= $dt->id; ?>" <?= (isset($_GET['lembaga']) && $_GET['lembaga']==$dt->id) ? 'selected' : ''; ?>>
                                            <?= $dt->nama_lembaga; ?>
                                        </option>
                                    <?php endforeach; ?>
                                </select>				
                            </div>                                                
                        </div>    
                    </form>
                    <form action="<?= base_url('siswa/download'); ?>" method="post" class="mx-2">
                        <input type="hidden" name="lembaga" id="download-siswa" value="<?= (isset($_GET['lembaga'])) ? $_GET['lembaga'] : ""; ?>">
                        <button type="submit" class="btn btn-light me-2 px-3"><i class="fas fa-file-excel text-success me-1"></i> Export Excel</button>
                    </form>
                </div>
            </div>

            <div class="table-responsive">
                <table class="table table-bordered table-striped table-hover small">
                    <thead>
                        <tr>
                            <th width="30">No</th>
                            <th>NIS</th>
                            <th>Nama</th>
                            <th>Email</th>
                            <th>Lembaga</th>
                            <th width="60">Foto</th>
                            <th width="50">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if(sizeof($siswa) > 0) : ?> 
                        <?php foreach($siswa as $index => $dt) : ?>
                            <tr>
                                <td><?= $startNumber++; ?></td>
                                <td><?= $dt->nis; ?></td>
                                <td><?= $dt->nama; ?></td>
                                <td><?= $dt->email; ?></td>
                                <td><?= $dt->nama_lembaga; ?></td>
                                <td>
                                    <img src="<?= base_url('assets/upload/foto/'.$dt->foto); ?>" alt="..." style="height: 30px;" onclick="showFoto(this)">
                                </td>
                                <td>
                                    <div class="d-flex">
                                        <a href="<?= base_url('siswa/edit/'. $dt->id); ?>" class="btn btn-light btn-sm me-1 text-primary"><i class="fas fa-edit"></i></a>
                                        <form action="<?= base_url('siswa/delete'); ?>" method="post">
                                            <input type="hidden" name="id" value="<?= $dt->id; ?>">
                                            <button type="button" class="btn btn-light btn-sm btn-delete"><i class="fas fa-trash-alt text-primary"></i></button>
                                        </form>
                                    </div>
                                </td>
                            </tr>
                            <?php endforeach; ?>
                            <?php else: ?>
                                <tr>
                                    <td colspan="7" class="text-center">Data tidak ditemukan</td>
                                </tr>
                            <?php endif; ?>
                    </tbody>
                </table>
                <div class="d-flex justify-content-end">
                    <div class="pagination-links">
                        <?= $links; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="show-foto" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Lihat Foto</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="position-relative text-center">
            <img src="" alt="" class="" style="height: 300px;">
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-light" data-bs-dismiss="modal">Tutup</button>        
      </div>
    </div>
  </div>
</div>

<script>
    $("select#lembaga").change(function(){
        let lembaga = $(this).val();
        $('#download-siswa').val(lembaga)

        $('#form-search').submit();
    })

    $('.btn-delete').click(function(){
        let btn = $(this)

        Swal.fire({
        title: "Konfirmasi?",
        text: "Yakin akan menghapus data ini ?",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#6e6446",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, delete it!"
        }).then((result) => {
        if (result.isConfirmed) {
           btn.parent().submit();
        }
        });
    })

    function showFoto(e){
        let img = $(e).attr('src');
        $("#show-foto .modal-body img").attr('src', img);
        $("#show-foto").modal('show')
    }
</script>