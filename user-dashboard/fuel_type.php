<?php $title = "Fuel" ?>
<?php include('includes/sidebar.php'); ?>
<div class="main_container">
    <?php

        $fuel_type =  mysqli_query($conn, "SELECT fuel_type.*, user.first_name, user.last_name
        FROM user, fuel_type
        WHERE (((fuel_type.added_by) = user.user_id))");

    ?>   
    <div class="container">
        <?php include('includes/messages.php'); ?>
    </div>
    <div class="row animated--grow-in">
        <div class="col-xl-12">
            <div class="card card-body">
                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Fuel Type</h1>
                    <button class="d-none d-sm-inline-block btn vms-btn btn-sm shadow-sm" data-toggle="modal"
                        data-target="#fuelType">New Fuel Type <i class="fa fa-plus fa-sm"></i> </button>
                </div>
                <hr style="margin-top: -1rem" >
                <?php include('includes/messages.php'); ?>
                <div class="table-responsive">
                    <table class="table table-striped table-hover dt-responsive display nowrap" id="dataTable2" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>S/N</th>
                                <th>Added By</th>
                                <th>Type</th>
                                <th>date</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $sn = 1;
                            while ($fuel_type_row = mysqli_fetch_array($fuel_type)) { ?>
                            <tr>
                                <td><?php echo $sn++ ?></td>
                                <td><?php echo "$fuel_type_row[first_name] $fuel_type_row[last_name]" ?></td>
                                <td><?php echo $fuel_type_row['fuel_type'] ?></td>
                                <td><?php echo date('d-m-Y', strtotime($fuel_type_row['date'])) ?></td>
                                <td>
                                    <button class="btn text-warning btn-sm btn-circle shadow-sm" data-toggle="modal"
                                        data-target="#edit_fuel<?php echo $fuel_type_row['id'] ?>">
                                        <b><i class="fas fa-pencil-alt fa-lg"></i></b>
                                    </button>
                                    <a type="button" class="btn text-danger btn-sm btn-circle shadow-sm" data-toggle="modal"
                                        data-target="#delete_fuel<?php echo $fuel_type_row['id'] ?>">
                                        <i class="fas fa-trash fa-lg"></i>
                                    </a>
                                </td>
                                <div>
                                    <!-- modal for edit and delete fuel type-->
                                    <?php include('modals/car_fuel_crude_modal.php'); ?>
                                </div>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- modal for adding new car component such as fuel type car-capacity and brand  -->
<?php include('modals/car_component_modal.php'); ?>
<?php include('includes/footer.php'); ?>