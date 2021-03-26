<?php

echo '
<h3>Search Page</h3>
<label>Search:</label>
<form action="" method="post">
<input name="search_term" type="text"/>
<b>By</b>
<select name="searchby" id="searchby">
    <option value="name">name</option>
    <option value="phone">phone</option>
    <option value="mobile">mobile</option>
</select>
<button>Search</button>
</form>
';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    include('./database_connection.php');
    
    $searchterm = $_POST['search_term'];
    $searchby = $_POST['searchby'];

    $sql = "SELECT * FROM s_phone_lists WHERE $searchby LIKE '%$searchterm%'";
    $result = $conn->query($sql);

    
    if ($result->num_rows > 0) {
        echo "<table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Phone</th>
            <th>Mobile</th>
        </tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>".$row["id"]."</td>";
            echo "<td>".$row["name"]."</td>";
            echo "<td>".$row["phone"]."</td>";
            echo "<td>".$row["mobile"]."</td>";
            echo "</tr>";
        }
    }else{
        echo '<b>Nothing found</b>';
    }
    echo"
    </table>
    ";
}
