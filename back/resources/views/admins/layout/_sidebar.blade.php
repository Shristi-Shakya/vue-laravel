<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
        <div class="user-panel">
          <div class="pull-left image">
            <img src="{{ Auth::user()->getImageUrl() }}" class="img-circle" alt="User Image">
          </div>
          <div class="pull-left info">
            <p>{{ Auth::user()->getFullName() }}</p>
            {{-- <a href="#"><i class="fa fa-circle text-success"></i> Online</a> --}}
          </div>
        </div>
        

          <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
          <li class="{{ Request::is('admin/dashboard') ? "active":"" }}"><a href="{{ route('admin.dashboard') }}"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>          
          <li class="{{ Request::is('admin/slider') ? "active":"" }}{{ Request::is('admin/slider/*') ? "active":"" }}">
            <a href="{{ route('admin.slider.index') }}"><i class="fa fa-image"></i> <span>Slider</span></a>
          </li>
          <li class="header">General</li>
          <li class="{{ Request::is('admin/notice') ? "active":"" }}{{ Request::is('admin/notice/*') ? "active":"" }}">
            <a href="{{ route('admin.notice.index') }}"><i class="fa fa-bullhorn"></i> <span>Notice</span></a>
          </li>
          <li class="{{ Request::is('admin/news') ? "active":"" }}{{ Request::is('admin/news/*') ? "active":"" }}">
            <a href="{{ route('admin.news.index') }}"><i class="fa fa-newspaper-o"></i> <span>News</span></a>
          </li>
          <li class="{{ Request::is('admin/file') ? "active":"" }}{{ Request::is('admin/file/*') ? "active":"" }}">
            <a href="{{ route('admin.file.index') }}"><i class="fa fa-cloud-download"></i> <span>File</span></a>
          </li>
          <li class="{{ Request::is('admin/resource') ? "active":"" }}{{ Request::is('admin/resource/*') ? "active":"" }}">
            <a href="{{ route('admin.resource.index') }}"><i class="fa fa-globe"></i> <span>Resource</span></a>
          </li>
          <li class="{{ Request::is('admin/calendar') ? "active":"" }}{{ Request::is('admin/event') ? "active":"" }}{{ Request::is('admin/event/*') ? "active":"" }}">
            <a href="{{ route('admin.event.calendar') }}"><i class="fa fa-calendar"></i> <span>Calendar/Event</span></a>
          </li>
          <li class="{{ Request::is('admin/gallery') ? "active":"" }}{{ Request::is('admin/gallery/*') ? "active":"" }}">
            <a href="{{ route('admin.gallery.index') }}"><i class="fa fa-image"></i> <span>Gallery</span></a>
          </li>
          <li class="{{ Request::is('admin/contact') ? "active":"" }}{{ Request::is('admin/contact/*') ? "active":"" }}">
            <a href="{{ route('admin.contact.index') }}"><i class="fa fa-user"></i> <span>Contact</span></a>
          </li>
          <li class="header">Student</li>
          <li class="{{ Request::is('admin/student') ? "active":"" }}{{ Request::is('admin/student/*') ? "active":"" }}">
            <a href="{{ route('admin.student.index') }}"><i class="fa fa-users"></i> <span>Student</span></a>
          </li>
          <li class="{{ Request::is('admin/class') ? "active":"" }}{{ Request::is('admin/class/*') ? "active":"" }}">
            <a href="{{ route('admin.class.index') }}"><i class="fa fa-cube"></i> <span>Class</span></a>
          </li>

          <li class="{{ Request::is('admin/attendance') ? "active":"" }}{{ Request::is('admin/attendance/*') ? "active":"" }}">
            <a href="#">
                <i class="fa fa-dashboard"></i> <span>Attendance</span> <small class="label bg-green">NEW</small><i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="{{ route('admin.attendance.class') }}"><i class="fa fa-circle-o"></i> Attendance By Class</a></li>
                <li><a href="{{ route('admin.attendance.student') }}"><i class="fa fa-circle-o"></i> Attendance By Student</a></li>
              </ul>
          </li>
          <li class="{{ Request::is('admin/teacher') ? "active":"" }}{{ Request::is('admin/teacher/*') ? "active":"" }}">
            <a href="{{ route('admin.teacher.index') }}"><i class="fa fa-mortar-board"></i> <span>Teacher</span><small class="label pull-right bg-green">NEW</small></a>
          </li>
          <li class="{{ Request::is('admin/leave') ? "active":"" }}{{ Request::is('admin/leave/*') ? "active":"" }}">
            <a href="{{ route('admin.leave.index') }}"><i class="fa fa-mail-forward"></i> <span>Leave Request</span><small class="label pull-right bg-green">NEW</small></a>
          </li>

          <li class="header">Settings</li>
          
          
          <li class="{{ Request::is('admin') ? "active":"" }}">
            <a href="{{ route('admin.edit') }}"><i class="fa fa-gear"></i> <span>Profile</span></a>
          </li>
          <li class="{{ Request::is('client') ? "active":"" }}">
            <a href="{{ route('admin.client.show', str_replace(' ','-',$client->getApplicationName())) }}"><i class="fa fa-gear"></i> <span>Organization</span></a>
          </li>
         
       
        </ul>
      
    </section>
        <!-- /.sidebar -->
</aside>