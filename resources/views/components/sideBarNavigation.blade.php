<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
<div class="sidebar">
    <img src="{{ url("../images/sca_logo.png") }}" 
        alt="" style="width:50px; height:50px;">
    <div class="logo-details">
        <div class="logo_name">Saint Charles Academy E-Learning CMS</div>
        <i class='bx bx-menu' id="btn" ></i>
    </div>
    <ul class="nav-list" style="padding-left:0;">
      {{-- <li>
          <i class='bx bx-search' ></i>
         <input type="text" placeholder="Search...">
         <span class="tooltip">Search</span>
      </li> --}}
      <li>
        <a href="{{ url('/admin') }}">
          <i class='bx bx-grid-alt'></i>
          <span class="links_name">Dashboard</span>
        </a>
         <span class="tooltip">Dashboard</span>
      </li>
      <li>
        <a href="#" style="background-color:#1d1010;">
          <span class="links_name">Master List</span>
        </a>
        <span class="tooltip">Master List</span>
      </li>
      <li>
       <a href="{{ route('admin.page' , 'student') }}">
         <i class='bx bx-user' ></i>
         <span class="links_name">Students</span>
       </a>
       <span class="tooltip">Students</span>
     </li>
     <li>
       <a href="{{ route('admin.page' , 'faculty') }}">
         <i class='bx bx-chat' ></i>
         <span class="links_name">Faculty</span>
       </a>
       <span class="tooltip">Faculty</span>
     </li>
     <li>
       <a href="{{ route('admin.page' , 'class') }}">
         <i class='bx bx-pie-chart-alt-2' ></i>
         <span class="links_name">Class</span>
       </a>
       <span class="tooltip">Class</span>
     </li>
     <li>
        <a href="#" style="background-color:#1d1010;">
          <span class="links_name">Maintenance List</span>
        </a>
        <span class="tooltip">Maintenance List</span>
      </li>
     <li>
       <a href="#">
         <i class='bx bx-folder' ></i>
         <span class="links_name">Academic Year</span>
       </a>
       <span class="tooltip">Academic Year</span>
     </li>
     <li>
       <a href="{{ route('admin.page' , 'announcement') }}">
         <i class='bx bx-cart-alt' ></i>
         <span class="links_name">Announcements</span>
       </a>
       <span class="tooltip">Announcements</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-heart' ></i>
         <span class="links_name">Section</span>
       </a>
       <span class="tooltip">Section</span>
     </li>
     <li>
       <a href="{{ route('admin.page' , 'profile') }}">
         <i class='bx bx-cog' ></i>
         <span class="links_name">Profile</span>
       </a>
       <span class="tooltip">Profile</span>
     </li>
     <li>
        <a href="{{ route('logout') }}">
          <i class='bx bx-log-out' ></i>
          <span class="links_name">Logout</span>
        </a>
        <span class="tooltip">Logout</span>
      </li>
     {{-- <li class="profile">
         <div class="profile-details">
           <img src="{{ url('../images/sca_logo.png') }}" alt="profileImg">
           <div class="name_job">
             <div class="name">Copyright © 2023. </div>
             <div class="name">All rights reserved.</div>
           </div>
         </div>
     </li> --}}
    </ul>
  </div>
  <script>
  let sidebar = document.querySelector(".sidebar");
  let closeBtn = document.querySelector("#btn");
  let searchBtn = document.querySelector(".bx-search");

  closeBtn.addEventListener("click", ()=>{
    sidebar.classList.toggle("open");
    menuBtnChange();//calling the function(optional)
  });

  searchBtn.addEventListener("click", ()=>{ // Sidebar open when you click on the search iocn
    sidebar.classList.toggle("open");
    menuBtnChange(); //calling the function(optional)
  });

  // following are the code to change sidebar button(optional)
  function menuBtnChange() {
   if(sidebar.classList.contains("open")){
     closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
   }else {
     closeBtn.classList.replace("bx-menu-alt-right","bx-menu");//replacing the iocns class
   }
  }
  </script>
@yield('sideBarNavigation')