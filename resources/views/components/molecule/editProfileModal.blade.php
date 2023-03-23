<div class="modal fade" id="editProfileModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Edit Profile</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form action="{{ url("employee/page/edit/profile/$id->id")}}" enctype="multipart/form-data" method="post">
                @method('PUT')
                @csrf
                <div class="form-group">
                    <label>Employee ID:</label>
                    <input type="type" name="employeeid" value="{{ $id->employeeid }}" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>First Name:</label>
                    <input type="type" name="firstname" value="{{ $id->firstname }}" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Middle Name:</label>
                    <input type="type" name="middlename" value="{{ $id->middlename }}" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Last Name:</label>
                    <input type="type" name="lastname" value="{{ $id->lastname }}" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Date Of Birth:</label>
                    <input type="date" name="dateofbirth" value="{{ $id->dateofbirth }}" class="form-control" required>
                </div>
               <div class="form-group">
                <label for="">Sex:</label>
                <select class="form-select form-select-sm" style="width: 100;" name="sex">
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                  </select>
               </div>
                <div class="form-group">
                    <label>Civil Status:</label>
                    <input type="type" name="civilstatus" value="{{ $id->civilstatus }}" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Height(cm):</label>
                    <input type="number" name="height" value="{{ $id->height }}" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Weight(Kl):</label>
                    <input type="number" name="weight" value="{{ $id->weight }}" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Blood Type:</label>
                    <input type="type" name="bloodtype" value="{{ $id->bloodtype }}" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Citizenship:</label>
                    <input type="type" name="citizenship" value="{{ $id->citizenship }}" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Address:</label>
                    <input type="type" name="address" value="{{ $id->address }}" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Mobile Number:</label>
                    <input type="number" name="mobile" value="{{ $id->mobile }}" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Email:</label>
                    <input type="email" name="email" value="{{ $id->email }}" class="form-control" required>
                </div>
                <div class="form-group">
                  <button class="btn btn-primary upload-image" id="save" type="submit">Save</button>
                  <button class="btn btn-primary upload-image" type="reset">Reset</button>
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