Cyan<input type="checkbox" name="color[]" value="cyan">
    Magenta<input type="checkbox" name="color[]" value="Magenta">
    Yellow<input type="checkbox" name="color[]" value="yellow">
    Black<input type="checkbox" name="color[]" value="b


    $name = $_GET['color'];

// optional
// echo "You chose the following color(s): <br>";

foreach ($name as $color){ 
    echo $color."<br />";
}