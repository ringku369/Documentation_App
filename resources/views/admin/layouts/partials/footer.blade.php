<footer class="main-footer">
    <!-- To the right -->
    <div class="float-right d-none d-sm-inline">
      
    </div>

    @if (@$sitesetting->footer )
      {!! $sitesetting->footer !!}
    @else
      <strong>Copyright &copy; 2020-- <?php echo date("Y"); ?> <a href="#">Documentation For Digital Platform </a>.</strong> All rights reserved.
    @endif
  </footer>