windowHeight = ->
  Math.max $(window).height(), window.innerHeight

documentHeight = ->
  Math.max $(document).height(), document.documentElement.clientHeight

scrollBottom = ->
  documentHeight() - windowHeight() - $(window).scrollTop()

scrollRatio = ->
  totalScroll = ($(window).scrollTop() + scrollBottom())
  ($(window).scrollTop()) / totalScroll

$(document).ready ->
  $(".path").each ->
    $pathobj = $(this)
    pathOffset = 110
    pathTotal = documentHeight() - 2500 + 22
    $(window).scroll ->
      ratio = scrollRatio()
      yPos = pathTotal * ratio + pathOffset + "px"
      $pathobj.css top: yPos

    $(window).resize ->
      ratio = scrollRatio()
      yPos = pathTotal * ratio + pathOffset + "px"
      $pathobj.css top: yPos

  $(".target").each ->
    # grab the object
    $targetobj = $(this)
    # set the offsets
    targetYOffset = 170
    targetXOffset = 90

    # set the total scroll for the object
    targetTotal = (documentHeight() - 316)
    $(window).scroll ->

      # current ration that has been scrolled
      ratio = scrollRatio()

      # set the yPos based on the percentage that has been scrolled
      yPos = targetTotal * ratio + targetYOffset + "px"

      # custom xPos to produce oscillation
      b = 2 * Math.PI / (targetTotal / 3)
      xPos = -72 * Math.sin(b * targetTotal * ratio) + targetXOffset

      # set the target's new position
      $targetobj.css
        top: yPos
        left: xPos


    $(window).resize ->

      # current ration that has been scrolled
      ratio = scrollRatio()

      # set the yPos based on the percentage that has been scrolled
      yPos = targetTotal * ratio + targetYOffset + "px"

      # custom xPos to produce oscillation
      b = 2 * Math.PI / (targetTotal / 3)
      xPos = -72 * Math.sin(b * targetTotal * ratio) + targetXOffset

      #set the target's new position
      $targetobj.css
        top: yPos
        left: xPos


#$('.windowStats').each(function(){
#        $windowStatsobj = $(this);
#        $(window).scroll(function(){
#            $windowStatsobj.text("Doc:"+documentHeight()+"|Win:"+windowHeight()+"|ScrollTop:"+$(window).scrollTop()+"|ScrollBottom:"+scrollBottom());
#        });
#    });