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

 <h1 class="text-center subheads">Books</h1>
        <hr>
        <section id="books">
        <?php
$sql = "SELECT
`books`.`book_id`,
`books`.`title`,
`books`.`img`,
`books`.`genre`,
`books`.`ISBN_code`,
`books`.`publish_date`,
`books`.`description`,
`publisher`.`pname`,
`author`.`aname`,
FROM `books`
LEFT JOIN `publisher`
ON `books`.`fk_publisher_id`= `publisher`.`publisher_id`
LEFT JOIN `author`
ON `books`.`fk_author_id`= `author`.`author_id` ";
        $result = mysqli_query($conn, $sql);
        
        
        echo"<table class='table table-dark table-bordered'>
                      <thead>
                        <tr>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Title</th>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Image URL</th>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Author</th>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Publisher</th> 
                          <th scope='col' style='border-color:#373737; text-align:center;'>ISBN Code</th>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Publish Date</th>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Description</th>				     
                        </tr>
                      </thead>";		
                    while($row = mysqli_fetch_array($result)) {	
               echo"<tr>
               <td>{$row['title']}</td>
               <td><{$row['img']}></td>
               <td>{$row['aname']}</td>
               <td>{$row['pname']}</td>
               <td>{$row['ISBN_code']}</td>
               <td>{$row['publish_date']}</td>
               <td>{$row['description']}</td>
               </tr>";
        };
        echo "</table>";
        ?>
        </section>
        <hr>
        <h1 class='text-center subheads'>CDs</h1>
        <hr>
        <section id="CDs">
        <?php
        $sql = "SELECT * FROM cds";
        $result = mysqli_query($conn, $sql);
        
        
        echo"<table class='table table-dark table-bordered'>
                      <thead>
                        <tr>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Title</th>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Image URL</th>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Author</th>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Publisher</th>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Publish Date</th>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Description</th>				     
                        </tr>
                      </thead>";		
                    while($row = mysqli_fetch_array($result)) {	
               echo"<tr>
               <td>{$row['title']}</td>
               <td><{$row['img']}></td>
               <td>{$row['fk_author_id']}</td>
               <td>{$row['fk_publisher_id']}</td>
               <td>{$row['publish_date']}</td>
               <td>{$row['description']}</td>
               </tr>";
               
            };
        echo "</table>";
   
        ?>

        </section>

        <hr>
        <h1 class='text-center subheads'>DVDs</h1>
        <hr>
        <section id="DVDs">
        <?php
        $sql = "SELECT * FROM dvds";
        $result = mysqli_query($conn, $sql);
        
        
        echo"<table class='table table-dark table-bordered'>
                      <thead>
                        <tr>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Title</th>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Image URL</th>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Author</th>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Publisher</th>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Publish Date</th>
                          <th scope='col' style='border-color:#373737; text-align:center;'>Description</th>				     
                        </tr>
                      </thead>";		
                    while($row = mysqli_fetch_array($result)) {	
               echo"<tr>
               <td>{$row['title']}</td>
               <td><{$row['img']}></td>
               <td>{$row['fk_author_id']}</td>
               <td>{$row['fk_publisher_id']}</td>
               <td>{$row['publish_date']}</td>
               <td>{$row['description']}</td>
               </tr>";
        };
        echo "</table>";
?>
</section>

</div>

    

</body>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</html>
<?php ob_end_flush(); ?>