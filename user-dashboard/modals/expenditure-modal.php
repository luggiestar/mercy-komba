<div class="modal fade" id="expenditure-modal" tabindex="-1" role="dialog" aria-labelledby="user" aria-hiden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-success">
                <h3 class="modal-title text-white" id="user">Expanditure</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="text-white">&times;</span>
                </button>
            </div>
            <form action="exipanditure/new-exipanditure.php" method="POST" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="row mt-3">
                        <div class="col-xl-12">
                            <label>Exipenditure Type</label>
                            <select name="exipandure_type" class="form-control" required>
                                <option>---Select Expenditure Type---</option>
                                <?php foreach($exipanditure_type_list as $ex_type): ?>
                                    <option value="<?php echo $ex_type['expenditure_type_id'] ?>">
                                        <?php echo $ex_type['expenditure_type_name'] ?>
                                    </option>
                                <?php endforeach ?>
                            </select>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-xl-12">
                            <label>Exipenditure Amount</label>
                            <input type="number" name="exipandure_amount" class="form-control" placeholder="Exipenditure Amount" required>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-xl-12">
                            <label>Description</label>
                           <textarea name="description" class="form-control" placeholder="Description" required></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    <button type="submit" name="save_exipanditure" class="btn btn-success">Register</button>
                </div>
            </form>
        </div>
    </div>
</div>