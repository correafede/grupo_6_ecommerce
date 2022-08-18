window.addEventListener("load", function() {

    const slidesContainer = document.getElementById('products');
    const slide = document.getElementById("slide");
    const nextButton = document.getElementById('nxt-btn');
    const prevButton = document.getElementById('pre-btn');

        nextButton.addEventListener("click", () => {
            const slideWidth = slide.clientWidth;
            slidesContainer.scrollLeft += slideWidth;
        });
    
        prevButton.addEventListener("click", () => {
            const slideWidth = slide.clientWidth;
            slidesContainer.scrollLeft -= slideWidth;
        });
    });