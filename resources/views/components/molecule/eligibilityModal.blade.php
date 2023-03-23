<div class="modal fade" id="eligibilityModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">+ Add Employee Document</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form action="{{ url('employee/page/eligibility')}}" enctype="multipart/form-data" method="POST">
                @csrf
                <input type="hidden" name="employee_id" value="{{ session::get('loginId') }}" >

                  <div class="form-group">
                    <label>Eligibility Type:</label>
                    <input type="type" name="eligibility_type" class="form-control" required>
                  </div>
                  <div class="form-group">
                    <label>Rating:</label>
                    <input type="number" name="rating" class="form-control" required>
                  </div>
                  <div class="form-group">
                    <label>Date Of Exam:</label>
                    <input type="date" name="date_of_exam" class="form-control" required>
                  </div>
                  <div class="form-group">
                    <label>Place Of Exam</label>
                    <input type="type" name="place_of_exam" class="form-control" required>
                  </div>
                  <div class="form-group">
                    <label>Date Of Validity:</label>
                    <input type="date" name="date_of_validity" class="form-control" required>
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