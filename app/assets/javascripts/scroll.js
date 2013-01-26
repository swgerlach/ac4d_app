function windowHeight () {
    return Math.max(
        $(window).height(),
        /* For opera: */
        window.innerHeight
    );
}

function documentHeight () {
    return Math.max(
        $(document).height(),
        /* For opera: */
        document.documentElement.clientHeight
    );
}

function scrollBottom() {
    return documentHeight() - windowHeight() - $(window).scrollTop();
}

function scrollRatio () {
    var totalScroll = ($(window).scrollTop() + scrollBottom());
    return ($(window).scrollTop())/totalScroll;
}