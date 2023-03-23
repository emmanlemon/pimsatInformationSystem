<div class="modal fade" id="trainingModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">+ Add Employee Training</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form action="{{ url('employee/page/training')}}" enctype="multipart/form-data" method="POST">
                @csrf
                <input type="hidden" name="employee_id" value="{{ session::get('loginId') }}" >

                  <div class="form-group">
                    <label>Type Of ID:</label>
                    <input type="type" name="type_of_id" class="form-control" required>
                  </div>
                  
                  <div class="form-group">
                    <label>Attendance Date:</label>
                    <input type="date" name="attendance_date" class="form-control" required>
                  </div>
                  
                <div class="form-group">
                  <button class="btn btn-primary upload-image" id="save" type="submit">Save</button>
                  <button class="btn btn-primary upload-image" type="submit">Reset</button>
                </div>
            </div>
          </form>
        </div>
        {{-- <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div> --}}
      </div>
    </div>
  </div>