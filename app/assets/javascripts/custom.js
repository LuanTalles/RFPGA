
    $(document).ready(function(){
        $(".side-nav-profile-close").click(function(){
            $("#slide-out").hide();
            $(".contact-region, .have_an_account").css({"margin-left": "20%","margin-right": "20%"});
            $("header, main ,footer").css("padding-left","0px");
            $("#menu").show();
        });
        $("#menu").click(function(){
            $("#slide-out").show();
            $("header, main ,footer").css("padding-left","300px");
            $("#menu").hide();

        });

        $('select').material_select();

        // $('.dropdown-button').dropdown({
        //   hover: false
        // });

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
    });

    $("#btn_use_seat").bind('click', function() {
      $("#link_use").click();
    });

    $("#path1371, #path1372, #path1373, #path1374").bind('click', function() {
      if ( $(this).css("transform") == "matrix(1, 0, 0, -1, 0, 0)") {
        $(this).css("transform","matrix(1, 0, 0, 1, 0, 0)");
      }
      else
      {
        $(this).css("transform","matrix(1, 0, 0, -1, 0, 0)");
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
            break;
          case 's':
            $("#button2").trigger("mousedown");
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
        current_page = document.documentURI;
        if(current_page == "http://localhost:3000/seat3")
        {
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
