<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        <?php if(isset($title)){
            echo $title;
        }else{
            echo 'Latis Education';
        } ?>

    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.6.0/css/all.min.css" integrity="sha512-ykRBEJhyZ+B/BIJcBuOyUoIxh0OfdICfHPnPfBy7eIiyJv536ojTCsgX8aqrLQ9VJZHGz4tvYyzOM0lkgmQZGw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <link rel="stylesheet" href="<?= base_url('assets/css/style.css'); ?>">

  </head>
  <body>

  
    <div class="sidebar">
        <div class="pt-4">
            <div class="h5 text-center mb-3 fw-bold text-primary">Latis Education</div>

            <ul class="list-unstyled">
                <li class="p-2 ps-5 mb-2"><a href="<?= base_url('siswa'); ?>" class="d-block text-primary <?= ($sidebar=='siswa') ? 'active': ''; ?>"><i class="fas text-primary fa-users fa-fw me-2"></i> Siswa</a></li>
                <li class="p-2 ps-5 mb-2"><a href="<?= base_url('profile'); ?>" class="d-block text-primary <?= ($sidebar=='profile') ? 'active': ''; ?>"><i class="fas text-primary fa-user fa-fw me-2"></i> Profile</a></li>
                <li class="p-2 ps-5 mb-2"><a href="<?= base_url('logout'); ?>" class="d-block text-primary"><i class="fas text-primary fa-sign-out-alt fa-fw me-2"></i> Keluar</a></li>
            </ul>
        </div>
    </div>

    <div class="main-content">

    <div class="d-flex justify-content-between px-4 py-3">
        <div class="h5 text-primary">
            <?php if(isset($titlePage)){
                echo $titlePage;
            } ?>
        </div>
        <div>
            <?= $this->session->userdata('emailLogin'); ?>
        </div>
    </div>

    
