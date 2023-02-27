$(function() {
    for (let i = 1; i <= 22; i++) {
        let $div = $("<div>", { "class": "photoDiv" });
        let $photo = $("<img>", { "class": "photo", "src": "galleryImg/zdj" + i + ".jpg" });
        $div.append($photo);
        $('.photosDiv').append($div);
    }
})