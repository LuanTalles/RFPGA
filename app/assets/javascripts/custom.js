
    $(document).ready(function(){
        $(".side-nav-profile-close").click(function(){
            $("#slide-out").hide();
            $(".contact-region, .have_an_account").css({"margin-left": "20%","margin-right": "20%"});
            $("header, main ,footer").css("padding-left","0px");
            $("#menu").show();
        });
        $("#menu").click(function(){
            $("#slide-out").show();
            $(".contact-region, .have_an_account").css({"margin-left": "10%","margin-right": "10%"});
            $("header, main ,footer").css("padding-left","300px");
            $("#menu").hide();

        });
        //
        // $("#slid_out").onchange(function(){
        //   if ( $(this).css("transform") == "-100%") {
        //     $(".side-nav-profile-close").trigger('click');
        //   }
        // });

        $('select').material_select();

        // $(".button-collapse").sideNav();

        $(".dropdown-trigger").dropdown({
              inDuration: 300,
              outDuration: 225,
              constrain_width: false, // Does not change width of dropdown to that of the activator
              hover: false, // Activate on click
              alignment: 'left', // Aligns dropdown to left or right edge (works with constrain_width)
              gutter: 0, // Spacing from edge
              belowOrigin: false // Displays dropdown below the button
            });

            // $("a").click(function(){
            //   current_page = document.documentURI;
            //   if(current_page == "http://localhost:3000/seat3"){
            //
            //   }
            // });

            $("#slide-out > li > div > ul > li > a, #edit, #logout_header").click(function(){
              var str = document.documentURI;
              var l = str.length;
              var sub = str.substring(l-3, l);
              if(sub == "use")
              {
                if (window.confirm('Do you really want to leave the seat?'))
                {
                  $("#free_seat").trigger('click');
                  return true;
                }
                else {
                  // $("#appearance-select").val() = "";
                  return false;
                }
              }
            });

    });

    $("#start_seat").bind('click', function() {
      $("#slid_out > li").css({"pointer-events": "none","-webkit-text-emphasis-color": "white"});
    });

    $("#path1373, #path1374").bind('click', function() {
      if ( $(this).css("transform") == "matrix(1, 0, 0, -1, 0, 0)") {
        $(this).css("transform","matrix(1, 0, 0, 1, 0, 0)");
      }
      else
      {
        $(this).css("transform","matrix(1, 0, 0, -1, 0, 0)");
      }
    });

    $("#path1371").bind('click', function() {
      if ( $(this).css("transform") == "matrix(1, 0, 0, -1, 0, 0)") {
        $(this).css("transform","matrix(1, 0, 0, 1, 0, 0)");
        $("#flash_msp_seat").trigger("click");
      }
      else
      {
        $(this).css("transform","matrix(1, 0, 0, -1, 0, 0)");
        $("#flash_msp_seat").trigger("click");
      }
    });

    $("#path1372").bind('click', function() {
      if ( $(this).css("transform") == "matrix(1, 0, 0, -1, 0, 0)") {
        $(this).css("transform","matrix(1, 0, 0, 1, 0, 0)");
        $("#flash_msp2_seat").trigger("click");
      }
      else
      {
        $(this).css("transform","matrix(1, 0, 0, -1, 0, 0)");
        $("#flash_msp2_seat").trigger("click");
      }
    });

    $("#path1375, #path1376, #path1377, #path1378").bind('click', function() {
      if ( $(this).css("transform") == "matrix(-1, 0, 0, -1, 0, 0)") {
        $(this).css("transform","matrix(-1, 0, 0, 1, 0, 0)");
      }
      else
      {
        $(this).css("transform","matrix(-1, 0, 0, -1, 0, 0)");
      }
    });


      $(document).keydown( function(e) {
        switch(e.key) {
          case 'a':
            $("#button1").trigger("mousedown");
            // $("#flash_msp_seat").click(function() {return true;});
            // $.ajax({
            //   type: "GET",
            //   url: "http://localhost:3000/seat/9/flash_msp",
            //   success: function(msg) {
            //   // Do something interesting here.
            //   }
            // });
            break;
          case 's':
            $("#button2").trigger("mousedown");
            // $.ajax({
            //   type: "GET",
            //   url: "http://localhost:3000/seat/9/flash_msp",
            //   success: function(msg) {
            //     // Do something interesting here.
            //   }
            // });
            break;
          case 'd':
            $("#button3").trigger("mousedown");
            break;
          case 'f':
            $("#button4").trigger("mousedown");
            break;
        }
      });

      $(document).keyup( function(e) {

          switch(e.key) {
            case 'a':
              $("#button1").trigger("mouseup");
              break;
            case 's':
              $("#button2").trigger("mouseup");
              break;
            case 'd':
              $("#button3").trigger("mouseup");
              break;
            case 'f':
              $("#button4").trigger("mouseup");
              break;

        }
      });

      // $(document).keydown( function(e) {
      //   if(e.key == 'a'){
      //     $("#inpt").val("1");
      //     alert("oi");
      //   }
      // });


      $("#button1, #button2, #button3, #button4").bind('mousedown', function() {
        opc = $(this).attr("id");
        $("#" + opc + " > svg > g > g > #path1574").attr("style","fill: #ee6e73");
      });

      $("#button1, #button2, #button3, #button4").bind('mouseup', function() {
        opc = $(this).attr("id");
        $("#" + opc + " > svg > g > g > #path1574").attr("style","fill: #000000");
      });

      $("#img").bind('click',function(){
          $("#image_src").click();
        });

      // $(function() {
        $('#appearance-select').on('change', function() {
        var url = $(this).val(); // get selected value
        if (url) { // require a URL
          var str = document.documentURI;
          var l = str.length;
          var sub = str.substring(l-3, l);
          if(sub == "use")
            if(!window.confirm('Do you really want to leave the seat?'))
            return false;

          $("#free_seat").trigger('click');
          window.location = url; // redirect
          return true;
          }
        });
      // });

      // function execute(command) {
      //   const exec = require('child_process').exec
      //
      //   exec(command, (err, stdout, stderr) => {
      //     process.stdout.write(stdout)
      //   })
      // }
