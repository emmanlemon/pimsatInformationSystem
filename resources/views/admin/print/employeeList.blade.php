<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>Pimsat Employee List Data</title>
<style>
  th , tr , td , thead , tbody{
    border: 1.5px outset black;
  }
</style>
<div class="text" style="text-transform: uppercase; margin-bottom: 20px; font-size: 1.5em;" >
  <img src="{{ URL::asset('image/pimsat_logo.jpg') }}" alt="" width="50px;">
  Pimsat Employee List Data</div>
<div class="container" style="width:100%;">
    <table class="table">
        <thead class="thead-dark">
             <tr>
                <th scope="col">Employee ID</th>
                <th scope="col">First Name</th>
                <th scope="col">Middle Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">Sex</th>
                <th scope="col">Civil Status</th>
                <th scope="col">Height</th>
                <th scope="col">Weight</th>
                <th scope="col">Address</th>
                <th scope="col">Mobile</th>
              </tr>
            </thead>
            <tbody>
                @foreach ($employee as $employee)
                <tr>
                    <th scope="row">{{ $employee->employeeid }}</th>
                    <td>{{ $employee->firstname }}</td>
                    <td>{{ $employee->middlename  }}</td>
                    <td>{{ $employee->lastname  }}</td>
                    <td>{{ $employee->sex  }}</td>
                    <td>{{ $employee->civilstatus  }}</td>
                    <td>{{ $employee->height  }} cm</td>
                    <td>{{ $employee->weight  }} Kl</td>
                    <td>{{ $employee->address  }}</td>
                    <td>{{ $employee->mobile }}</td>
                    </td>
                 </tr>
            @endforeach
        </tbody>
    <table>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
jQuery(document).ready(function($) {
           window.print();
});
  </script>