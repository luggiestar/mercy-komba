<?php include('includes/sidebar.php'); ?>
<?php include('includes/connection.php'); ?>
<?php include('../includes/config.php'); ?>
<div class="main_container">
    <?php 

    $mantainance = mysqli_query($conn, "SELECT mantainance.*, vehicle.veh_id, vehicle.plate_no
    FROM mantainance, vehicle
    WHERE mantainance.vehicle = vehicle.veh_id");


    $services = $dbconnect->prepare("SELECT * FROM tbl_service");
    $services->execute();
    $services_list = $services->fetchAll(PDO::FETCH_ASSOC);

    //count vahicle
    $count_v = mysqli_num_rows($mantainance);
    ?>

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Mantainance</h1>
        <button class="d-none d-sm-inline-block btn vms-btn btn-sm shadow-sm" data-toggle="modal"
            data-target="#mantainance">Add New
            Mantainance <i class="fa fa-plus fa-sm"></i> </button>
    </div>
    <div class="row animated--grow-in">
        <div class="col-xl-12">
            <div class="card card-body">
                <?php include('includes/messages.php'); ?>
                <div class="table-responsive">
                    <table class="table" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>S/N</th>
                                <th>vehicle</th>
                                <th>garage</th>
                                <th>amount</th>
                                <th>date</th>
                                <th>Description</th>
                                <th>Services</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $sn = 1;
                            while ($mantainance_row = mysqli_fetch_array($mantainance)) { ?>
                        
                            <tr>
                                <td><?php echo $sn++ ?></td>
                                <td><?php echo $mantainance_row['vehicle'] ?></td>
                                <td><?php echo $mantainance_row['garage'] ?></td>
                                <td><?php echo $mantainance_row['amount'] ?></td>
                                <td><?php echo $mantainance_row['date_mant'] ?></td>
                                <td><?php echo $mantainance_row['description'] ?></td>
                                <td>
                                    <?php echo $mantainance_row['service'] ?>   
                                </td>
                                <td>
                                    <!-- <button class="btn btn-dark btn-sm btn-circle shadow-sm" data-toggle="modal"
                                        data-target="#view_vehicle<?php echo $mantainance_row['plate_no'] ?>">
                                        <i class="fas fa-eye"></i>
                                    </button> -->
                                    <button class="btn text-warning btn-sm btn-circle shadow-sm" data-toggle="modal"
                                        data-target="#edit<?php echo $mantainance_row['mant_id'] ?>">
                                        <b><i class="fas fa-pencil-alt fa-lg"></i></b>
                                    </button>
                                    <a type="button" class="btn text-danger btn-sm btn-circle shadow-sm" data-toggle="modal"
                                        data-target="#delete<?php echo $mantainance_row['mant_id'] ?>">
                                        <i class="fas fa-trash fa-lg"></i>
                                    </a>
                                </td>
                                <?php include('modals/crude_mantainance_modal.php'); ?>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include('includes/footer.php'); ?>
<?php include('modals/mantainance_modal.php'); ?>