window.onload = function () {
    var NIPA = document.getElementById('play_nipa')
    console.log(NIPA)
    NIPA.addEventListener('click', function (e) {
        e.preventDefault();
        document.getElementById('audio').play();
    });
}