<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>Employee Attendance Data Print</title>
<style>
  th , tr , td , thead , tbody{
    border: 1.5px outset black;
  }
</style>
<div class="text" style="text-transform: uppercase; margin-bottom: 20px; font-size: 1.5em;" >
  <img src="{{ URL::asset('image/pimsat_logo.jpg') }}" alt="" width="50px;">
  Pimsat Employee Attendance Data</div>
<div class="container">
    <table class="table">
        <thead class="thead-dark">
          <tr>
            <th scope="col">Employee ID</th>
            <th scope="col">Name</th>
            <th scope="col">Date</th>
            <th scope="col">Time In</th>
            <th scope="col">Time Out</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($attendances as $attendance)
            <tr>
              <th>{{ $attendance->employeeid }}</th>
                <td scope="row">{{ $attendance->firstname }} {{ $attendance->middlename }} {{ $attendance->lastname }}</td>
                <td>{{ $attendance->date }}</td>
                <td>{{ date('g:i a', strtotime($attendance->time_in)) }}</td>
                <td>{{ date('g:i a', strtotime($attendance->time_out))  }}</td>
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