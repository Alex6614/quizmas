<?php require('init.php');

$sql = "SELECT * FROM token_and_id WHERE token_key = '1JgZi1qJ3bPfzTpXutZvt9u8ZRSXtTpGHw'";
$result = $conn->query($sql);

if ($result->num_rows > 0){
    // Should be one result only
    while($row = $result->fetch_assoc()) {
        $sql2 = "SELECT * FROM quiz WHERE id =" . $row['quiz_id'];
        $result2 = $conn->query($sql2);
        while($row2 = $result2->fetch_assoc()){
            $questions_raw = $row2["questions"];
            $options_raw = $row2["options"];
            $contract = $row2["contract"];
        }
    }
}
else
    echo "Cannot find a valid match between quiz and token!";

// Split the raw array by delimiter
$questions_arr = explode('<>', $questions_raw);
$options_arr = explode('||||', $options_raw);

$edward = array();
$json_output = array();
$json_output["quizzes"] = array();
$json_output["contract"] = utf8_encode($contract);
for($i=0; $i<10; $i++){
    $options_arr_foreach_question = explode('<>', $options_arr[$i]);
    $edward["question"] = $questions_arr[$i];
    for($j=0; $j<4; $j++)
        $edward["options"] = $options_arr_foreach_question;

    array_push($json_output["quizzes"], $edward);
}

echo json_encode($json_output,JSON_PRETTY_PRINT);

$conn->close();
?>