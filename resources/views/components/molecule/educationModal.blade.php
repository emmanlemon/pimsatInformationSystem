<div class="modal fade" id="educationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Educational Background</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
@if(empty($education))
<form action="{{ url("employee/page/education/")}}" enctype="multipart/form-data" method="post">
  @csrf
  <input type="hidden" name="employee_id" value="{{ session::get('loginId') }}" >

    <div class="form-group">
      <label>Elementary School:</label>
      <input type="type" name="elementary" class="form-control" required>
    </div>
    <div class="form-group">
      <label>Secondary School:</label>
      <input type="type" name="secondary" class="form-control" required>
    </div>
    <div class="form-group">
      <label>Vocational:</label>
      <input type="type" name="vocational" class="form-control" required>
    </div>
    <div class="form-group">
      <label>College:</label>
      <input type="type" name="college" class="form-control" required>
    </div>
    <div class="form-group">
      <label>Grad Studies:</label>
      <input type="type" name="grad_studies"  class="form-control" required>
    </div>
    
  <div class="form-group">
    <button class="btn btn-primary upload-image" id="save" type="submit">Save</button>
    <button class="btn btn-primary upload-image" type="submit">Reset</button>
  </div>
</div>
</form>
@else
<form action="{{ url("employee/page/education/update/$education->id")}}" enctype="multipart/form-data" method="post">
  @csrf
  @method('PUT')
  <input type="hidden" name="employee_id" value="{{ session::get('loginId') }}" >

    <div class="form-group">
      <label>Elementary School:</label>
      <input type="type" name="elementary" value="{{ $education->elementary }}" class="form-control" required>
    </div>
    <div class="form-group">
      <label>Secondary School:</label>
      <input type="type" name="secondary" value="{{ $education->secondary }}" class="form-control" required>
    </div>
    <div class="form-group">
      <label>Vocational:</label>
      <input type="type" name="vocational" value="{{ $education->vocational }}" class="form-control" required>
    </div>
    <div class="form-group">
      <label>College:</label>
      <input type="type" name="college" value="{{ $education->college }}" class="form-control" required>
    </div>
    <div class="form-group">
      <label>Grad Studies:</label>
      <input type="type" name="grad_studies" value="{{ $education->grad_studies }}" class="form-control" required>
    </div>
    
  <div class="form-group">
    <button class="btn btn-primary upload-image" id="save" type="submit">Save</button>
    <button class="btn btn-primary upload-image" type="submit">Reset</button>
  </div>
</div>
</form>
@endif
        </div>
        {{-- <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div> --}}
      </div>
    </div>
  </div>