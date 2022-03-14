<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>Tip That Tab</title>
</head>
<style>
.title {

    margin: 40px 0 50px;
  font-size: 100px;
  text-align: center;
  color: blue;
  
}
img {
  width: 100px;
  height: 100px;
  object-fit: cover;
}

.container {
	display: grid;
	grid-template-columns: 300px 300px;
	grid-template-rows: 200px 200px;

}

.icons{
	display:inline-block;
	width: 80px; 
	height: 64px; 
}

.text{
	display:inline-block;
	padding-top: 15px;
	padding-left: 20px;
	width: 200px; 
	height: 50px; 
}

.textbox {
	width: 50px;
	height: 30px;
}

.result {
	display: none;
}

.textresult {
display:inline-block;
	padding-top: 15px;
	padding-left: 20px;
	width: 200px; 
	height: 50px; 
	font-size: 20px;
	color: orange;
	
}
</style>

<script type="text/javascript">
	function tipCalc() {
		var totalBill = parseFloat(document.getElementById('totalBill').value);
		var numPeople = parseFloat(document.getElementById('numPeople').value);
		var tipPercentage = parseFloat(document.getElementById('tipPercentage').value);

		var tippedBill = totalBill * (1 + tipPercentage / 100);
		var tip = totalBill * (tipPercentage / 100);
		document.getElementById("tip").innerHTML = tip;
		document.getElementById("perPerson").innerHTML = (tippedBill / numPeople).toFixed(2);

	}
</script>
<body>

	<div class="title">Tip That Tab</div>
	<form id="tipInfo" onchange="tipCalc()">
		<div class="container">
			<div class="row">

				<span class="icons"> <i class="material-icons"
					style="font-size: 60px">groups</i>
				</span> <span class="text"> <input type="number" min="1"
					class="textbox" id="numPeople" name="numPeople" value="">
				</span>


				<div class="row">
					<span class="icons"> <i class="material-icons"
						style="font-size: 60px">paid</i>
					</span> <span class="text"> <input type="text" class="textbox"
						id="totalBill" name="totalBill" value="">
					</span>
				</div>

				<div class="row">
					<span class="icons"> <i class="material-icons"
						style="font-size: 60px">percent</i>
					</span> <span class="text"> <input type="text" class="textbox"
						id="tipPercentage" name="tipPercentage" value="">
					</span>
				</div>
			</div>
		</div>

		<div class="container">

			<div class="row">
				<span class="icons"> <i class="material-icons"
					style="font-size: 60px">title</i>
				</span> <span class="textresult" id="tip"></span>

				<div class="row">

					<span class="icons"> <i class="material-icons"
						style="font-size: 60px">person</i>
					</span> <span class="textresult" id="perPerson"></span>
				</div>

			</div>
		</div>
	</form>
</body>
</html>