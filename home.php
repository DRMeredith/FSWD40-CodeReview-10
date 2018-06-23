<?php
ob_start();
session_start();
require_once 'dbconnect.php';

// if session is not set this will redirect to login page
if( !isset($_SESSION['user']) ) {
 header("Location: index.php");
 exit;
}
// select logged-in user detail
$res=mysqli_query($conn, "SELECT * FROM user WHERE userId=".$_SESSION['user']);
$userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);

// Select query execution - Books
$sql = "SELECT * FROM books";
if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo "<table>";
            echo "<tr>";
                echo "<th>Book ID</th>";
                echo "<th>Title</th>";
                echo "<th>Image</th>";
                echo "<th>Genre</th>";
                echo "<th>ISBN Code</th>";
                echo "<th>Publish Date</th>";
                echo "<th>Description</th>";
                echo "<th>Publisher ID</th>";
                echo "<th>Author ID</th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['book_id'] . "</td>";
                echo "<td>" . $row['title'] . "</td>";
                echo "<td>" . $row['img'] . "</td>";
                echo "<td>" . $row['genre'] . "</td>";
                echo "<td>" . $row['ISBN_code'] . "</td>";
                echo "<td>" . $row['publish_date'] . "</td>";
                echo "<td>" . $row['description'] . "</td>";
                echo "<td>" . $row['fk_publisher_id'] . "</td>";
                echo "<td>" . $row['fk_author_id'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        // Free result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Not able to execute $sql. " . mysqli_error($link);
}

// Select query execution - CDs
$sql = "SELECT * FROM cds";
if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo "<table>";
            echo "<tr>";
                echo "<th>CD ID</th>";
                echo "<th>Title</th>";
                echo "<th>Image</th>";
                echo "<th>Genre</th>";
                echo "<th>ISBN Code</th>";
                echo "<th>Publish Date</th>";
                echo "<th>Description</th>";
                echo "<th>Publisher ID</th>";
                echo "<th>Author ID</th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['CD_id'] . "</td>";
                echo "<td>" . $row['title'] . "</td>";
                echo "<td>" . $row['img'] . "</td>";
                echo "<td>" . $row['genre'] . "</td>";
                echo "<td>" . $row['ISBN_code'] . "</td>";
                echo "<td>" . $row['publish_date'] . "</td>";
                echo "<td>" . $row['description'] . "</td>";
                echo "<td>" . $row['fk_publisher_id'] . "</td>";
                echo "<td>" . $row['fk_author_id'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        // Free result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Not able to execute $sql. " . mysqli_error($link);
}

// Select query execution - DVDs
$sql = "SELECT * FROM dvds";
if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo "<table>";
            echo "<tr>";
                echo "<th>DVD ID</th>";
                echo "<th>Title</th>";
                echo "<th>Image</th>";
                echo "<th>Genre</th>";
                echo "<th>ISBN Code</th>";
                echo "<th>Publish Date</th>";
                echo "<th>Description</th>";
                echo "<th>Publisher ID</th>";
                echo "<th>Author ID</th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['DVD_id'] . "</td>";
                echo "<td>" . $row['title'] . "</td>";
                echo "<td>" . $row['img'] . "</td>";
                echo "<td>" . $row['genre'] . "</td>";
                echo "<td>" . $row['ISBN_code'] . "</td>";
                echo "<td>" . $row['publish_date'] . "</td>";
                echo "<td>" . $row['description'] . "</td>";
                echo "<td>" . $row['fk_publisher_id'] . "</td>";
                echo "<td>" . $row['fk_author_id'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        // Free result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Not able to execute $sql. " . mysqli_error($link);
}

mysqli_close($link);

?>
<!DOCTYPE html>
<html>
<head>
<title>Welcome - <?php echo $userRow['userName']; ?></title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style/home.css"
</head>
<body>
<div class="container">

    Hello and welcome,  <?php echo $userRow['userName']; ?>
    <br>
    <a href="logout.php?logout">Sign Out</a>

<div class="row">
    <div class="hero-unit">
  <div class="container">
          <div class="row-fluid">
            <div class="span12">
            <div id="titlespan">
              <h1>Imperatorius Bibliotecha</h1>
              <h4>The World's Greatest Collection of Historically Important Books, CDs and DVDs</h4>
            </div>
              <p><a href="#" class="btn btn-primary btn-large">To The Collection »</a></p>
            </div>
          </div>
      </div>
</div>
</div><br>
</div>

    

</body>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</html>
<?php ob_end_flush(); ?>