var i = 0;
var j = 0;
var squaresPerSide = false;
var divSide = 0;

$(document).ready(function () {
    makeGrid();
    draw();
    $('#button').click(reset);
});

/*This builds the grid with a 16 block x 16 block when page first loaded*/
function makeGrid() {
    for (i = 0; i < 16; i++) {
        for (j = 0; j < 16; j++) {
            $('.container').append('<div class="square"></div>');
        }
    }
}

function draw() {
    $('.square').hover(function () {
        $(this).addClass('coloredPixel');
    });
}

/*This function resets the grid with user-specified parameter "squares per Side" */
function reset() {
    /*Resets color to original*/
    $('.square').removeClass('coloredPixel');
    /*Gets input from user*/
    squaresPerSide = prompt("Enter how many squares per side you need:");
    /*Removes all divs inside div class "container"*/
    $('.container').empty();

    /*Determines square width in pixels*/
    divSide = (960 / squaresPerSide);

    /*The following for loop builds grid*/
    for (i = 0; i < squaresPerSide; i++) {
        for (j = 0; j < squaresPerSide; j++) {
            $('.container').append('<div class="square"></div>');
        }
    }

    /*This modifies the height and width from 60px (declared in css) to the new, user-defined value*/
    $('.square').height(divSide + "px");
    $('.square').width(divSide + "px");

    /*The grid needs to be interactive once again*/
    draw();
}
