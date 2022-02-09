<?php
include('includes/mustlogin.php');
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with a Design System for Bootstrap 4.">
    <meta name="author" content="Creative Tim">
    <title>ELMS | Electronic Leave Management System</title>
    <!-- Favicon -->
    <link rel="icon" href="icon.png" type="image/png">
    <!-- Fonts -->
    <!--<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">-->
    <!-- Icons -->
    <link href="assets/template/vendors/nucleo/css/nucleo.css" rel="stylesheet">
    <link href="assets/template/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- Argon CSS -->
    <link href="assets/template/css/argon.css?v=1.0.1" rel="stylesheet">

    <style>
    .errorWrap {
        padding: 10px;
        margin: 0 0 20px 0;
        background: #fff;
        border-left: 4px solid #dd3d36;
        -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
        box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    }
    .succWrap{
        padding: 10px;
        margin: 0 0 20px 0;
        background: #fff;
        border-left: 4px solid #5cb85c;
        -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
        box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    }
    </style>

</head>

<body>
<header class="footer" style="background-color:  #c0bdb0;">
<div class="container" >
    <div class="row align-items-center justify-content-md-between pb-0 ">
        <div class="col-md-12 col-xs-12 my_footer">
            <div class="copyright">
            </div>
        </div>

    </div>
 </div>
</header>

<main>
    <section class="section  section-lg">
        <div class="shape shape-style-1 bg-gradient-default">
            <span></span>
            <span></span>
            <span></span>
        </div>
        <div class="container pt-lg-md">
            <div class="row justify-content-center">
                <div class="col-lg-3 site_detail"> </div>
                <div class="col-lg-6">
                    <div class="card bg-secondary shadow border-0">
                        <div class="card-header bg-white pb-1">

                            <div class="row justify-content-md-center mu_logo">

                                <div class="text-muted text-center mb-3 navbar-brand">

                                    <img src="assets/template/images/logo.jpeg">

                                </div>

                            </div>

                        </div>
                        <div class="card-body px-lg-5 py-lg-5">
                            <div class="text-center text-muted mb-4">
                                <large>Reset your pasword</large>
                            </div>

                          <form  method="post" action ="production/reset_pass.php" class="form-horizontal form-label-left" >

                                <?php if(isset($_SESSION['msg'])){?><div class="errorWrap"><strong>Error</strong> : <?php echo $_SESSION['msg']; ?> </div><?php }?>
                                <p></p>

                                <div class="form-group mb-3 ">
                                    <div class="input-group input-group-alternative">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="ni ni-single-02"></i></span>
                                        </div>
                                        <input class="form-control" placeholder="Old Password" type="password" name="olpassword"
                                               required autofocus>
                                    </div>
                                </div>

                                <div class="form-group mb-3 ">
                                    <div class="input-group input-group-alternative">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="ni ni-single-02"></i></span>
                                        </div>
                                        <input class="form-control" placeholder="New Password" type="password" name="newpassword"
                                               required autofocus>
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <div class="input-group input-group-alternative">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                        </div>
                                        <input class="form-control" placeholder="Re-Password" type="password" name="renewpassword"
                                              required autofocus>
                                    </div>
                                </div>
                                <div class="form-group mb-3 ">
                                  <label class="control-label" > Answer this security Question </label>
                                    <div class="input-group input-group-alternative">

                                      <input class="form-control"   type="text" name="funqz" disabled
                                               value="<?PHP if(isset($_SESSION['funqz'])){echo $_SESSION['funqz'];}?>" >
                                    </div>
                                </div>


                                <div class="form-group mb-3 ">
                                    <div class="input-group input-group-alternative">
                                        <input class="form-control" placeholder="Enter your security answer here" type="text" name="funans"
                                               value="" required autofocus>
                                    </div>
                                </div>

                                <div class="text-center form-group">
                                    <button type="submit" name="submit" class="btn btn-block btn-success ">Save Changes</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                  <div class="col-lg-3"></div>

                </div>
            </div>
        </div>

    </section>
</main>
<footer class="footer" style="background-color:  #C0BBB3;">
            <div class="container">
                <div class="row align-items-center justify-content-md-between pb-0 ">
                    <div class="col-md-12 col-xs-12 my_footer">
                        <div class="copyright text-center">
                            &copy; <?php echo date ('Y'); ?>
                            <a href="http://www.bancabc.co.tz/" target="_blank">BankAbc Tanzania</a>.
                        </div>
                    </div>

                </div>

            </div>
 </footer>

<!-- Core -->
<script src="assets/template/vendors/jquery/dist/jquery.min.js"></script>
<script src="assets/template/vendors/popper/popper.min.js"></script>
<script src="assets/template/vendors/bootstrap4/bootstrap.min.js"></script>
<script src="assets/template/vendors/headroom/headroom.min.js"></script>
<!-- Argon JS -->
<script src="assets/template/js/argon.js" type="text/javacsript"></script>

<script>
  $(document).ready( function (){
    $("$flash-msg").delay(300).fadeout("slow");
  });

</script>
</body>

</html>
