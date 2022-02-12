<?php $title = "Exipanditure" ?>

<?php include('includes/sidebar.php'); ?>

<?php include('../includes/config.php');?>

<div class="main_container">

    <?php 
        $exipanditure = $dbconnect->prepare("SELECT * FROM tbl_expenditure, tbl_expenditure_type, user
            WHERE tbl_expenditure_type.expenditure_type_id = tbl_expenditure.expenditure_type
            AND tbl_expenditure.user_expenditure = user.user_id ");
        $exipanditure->execute();
        $exipanditure_list = $exipanditure->fetchAll(PDO::FETCH_ASSOC);

        $exipanditure_type = $dbconnect->prepare("SELECT * FROM tbl_expenditure_type");
        $exipanditure_type->execute();
        $exipanditure_type_list = $exipanditure_type->fetchAll(PDO::FETCH_ASSOC);
        
    ?>
    <!-- Page Heading -->
    <div class="row animated--grow-in">
        <div class="col-xl-12">
            <div class="card card-body">
                <div class="d-sm-flex align-items-center justify-content-end mb-4">
                    <button class="d-none d-sm-inline-block btn vms-btn btn-sm shadow-sm" data-toggle="modal" data-target="#expenditure-modal">
                        New Expenditure <i class="fa fa-plus fa-sm"></i> 
                    </button>
                </div>
                <?php include('includes/messages.php'); ?>
                <div class="table-responsive">
                    <table class="table table-sm table-striped table-hover dt-responsive display nowrap" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>S/N</th>
                                <th>Exipendiure Type</th>
                                <th>Amount</th>
                                <th>Description</th>
                                <th>Date</th>
                                <th>User</th>
                                <!-- <th>Action</th> -->
                            </tr>
                        </thead>
                        <tbody>
                            <?php $sn = 1; foreach ($exipanditure_list as $exipanditure_item): ?>
                            <tr class="text-dark">
                                <td><?php echo $sn++ ?></td>
                                <td><?php echo $exipanditure_item['expenditure_type'] ?></td>
                                <td>
                                    <span class="badge bg-success text-white"><?php echo number_format($exipanditure_item['expenditure_amount'], 3) ?></span>
                                </td>
                                <td><?php echo $exipanditure_item['expenditure_descrption'] ?></td>
                                <td><?php echo date('d-m-Y',strtotime($exipanditure_item['expenditure_date'])) ?></td>
                                <td><?php echo $exipanditure_item['username'] ?></td>
                              <!--   <td>
                                    <a href="">
                                        <i class="fa fa-edit"></i>
                                       
                                    </a>
                                    <a href="">
                                        <i class="fa fa-remove"></i>
                                    </a>
                                </td> -->
                            </tr>
                            <?php endforeach ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include('includes/footer.php'); ?>
<?php include('modals/expenditure-modal.php'); ?>