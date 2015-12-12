$(function () {
    $('.toggle').click(function () {
        $('.nav-list').toggleClass('active');
    });

    $(document).on('click', '#navbar li a, .nav-list li a, .navigation a', function (e) {
        var href = $(this).attr('href');
        if (href === '#' || /^http.*/.test(href)) {
            return;
        }
        e.preventDefault();
        $('.nav-list').removeClass('active');
        location.hash = href;
        $('iframe').attr('src', href);
    });

    var href = location.hash.substring(1) || '/slms/view/user_management/userList2.jsp';
    $('iframe').attr('src', href);

    $(window).on('blur', function () {
        $('.dropdown-toggle').parent().removeClass('open');
    });
});
