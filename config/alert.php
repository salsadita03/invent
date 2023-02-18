<script>
        swal('Error', '<?php echo $response['alert'] ?>', 'error');
    </script>?>
    <script>
        swal({
        title: "Berhasil",
        text: "",
        type: "success",
        showCancelButton: false,
        confirmButtonText: "Yes",
        closeOnConfirm: false,
        closeOnCancel: true
      }, function(isConfirm) {
        if (isConfirm) {
          window.location.href= "<?php echo $response['redirect'] ?>";
        }
      });
    </script>