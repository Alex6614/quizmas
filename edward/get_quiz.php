<?php require('init.php');

$sql = "SELECT * FROM quiz";
$result = $conn->query($sql);

if ($result->num_rows > 0){
    // Should be one result only
    while($row = $result->fetch_assoc()) {
        $questions_raw = $row["questions"];
        $options_raw = $row["options"];
        $contract = $row["contract"];
    }
}
else
    echo "0 results";

// Split the raw array by delimiter
$questions_arr = explode('<>', $questions_raw);
$options_arr = explode('||||', $options_raw);

$json_output = array();
$json_output["contract"] = utf8_encode($contract);
for($i=0; $i<10; $i++){
    $options_arr_foreach_question = explode('<>', $options_arr[$i]);
    $json_output["story_".$i]["question"] = $questions_arr[$i];
    for($j=0; $j<4; $j++)
        $json_output["story_".$i]["options"] = $options_arr_foreach_question;
}

echo json_encode($json_output,JSON_PRETTY_PRINT);

$conn->close();
?>