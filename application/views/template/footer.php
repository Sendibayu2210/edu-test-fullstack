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