<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.6.0/css/all.min.css" integrity="sha512-ykRBEJhyZ+B/BIJcBuOyUoIxh0OfdICfHPnPfBy7eIiyJv536ojTCsgX8aqrLQ9VJZHGz4tvYyzOM0lkgmQZGw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="<?= base_url('assets/css/style.css'); ?>">
    <style>
        body{
            background: #d5cebb;
        }
    </style>
  </head>
  <body>
    

       <div class="container">
        <div class="row mt-5 pt-3 align-items-center">
            <div class="col-lg-6 d-lg-block d-md-none d-sm-none">
                <div class="positon-relative">
                    <img src="<?= base_url('assets/img/login.jpg'); ?>" alt="" class="w-100">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card mx-auto pb-5" style="width: 27rem; border-radius: 20px;">
                    <div class="card-body">
                        <div class="fw-bold mb-2 h5 text-primary">Welcome back</div>
                        <div class="mb-4 pb-2 border-bottom">
                            Silahkan masukan NIS atau Email dan password yang telah didaftarkan!
                        </div>


                        <form action="<?= base_url('login/check'); ?>" method="post">
                            <div class="form-group mb-3">
                                <label for=""><i class="fas fa-user fa-fw me-1 text-primary"></i> NIS atau Email</label>
                                <input type="text" name="nis-email" class="form-control mt-2" required value="<?= $this->session->flashdata('nis-email'); ?>">
                            </div>
                            <div class="form-group mb-3">
                                <label for=""><i class="fas fa-key fa-fw me-1 text-primary"></i> Kata Sandi</label>
                                <input type="password" name="password" class="form-control mt-2" required>
                            </div>

                            <div class="d-flex justify-content-center">
                                <button type="submit" class="btn btn-primary btn-login mx-auto fw-bold">Masuk</button>
                            </div>
                        </form>


                        <div class="mt-4">
                            <div>Belum Punya akun ? <a href="#" class="fw-bold text-primary">Daftar Disini</a></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
       </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

    <?php if($this->session->flashdata('success')!='') : ?> 
        <script>            
            Swal.fire({
                title: "Good job!",
                text: "<?= $this->session->flashdata('success'); ?>",
                icon: "success"
            });
        </script>
    <?php endif; ?>
    <?php if($this->session->flashdata('warning')!='') : ?> 
        <script>            
            Swal.fire({
                title: "Attention!",
                text: "<?= $this->session->flashdata('warning'); ?>",
                icon: "warning"
            });
        </script>
    <?php endif; ?>
  </body>
</html>