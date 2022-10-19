<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<div class="container-fluid"> <!--2nd Container-->
    <div class="row">
       <div class="col-3"></div>
        <div class="col-6">
            <h3 class="display-3">Registration Form For New Clients</h3>

<form action="submission.php" method="POST">   <!--Start of FORM for New Clients-->
    <div class="row mb-3">
        <label for="" class="col-sm-2 col-form-label">
            Email:
        </label>
        <div class="col-sm-8">
            <input type="email" name="email" class="form-control">
        </div>
    </div>
    <div class="row mb-3">
        <label for="" class="col-sm-2 col-form-label">
            Password:
        </label>
        <div class="col-sm-8">
            <input type="password" name="password" class="form-control">
        </div>
    </div>
    <div class="row mb-3">
        <label for="" class="col-sm-2 col-form-label">
            Confirm Password:
        </label>
        <div class="col-sm-8">
            <input type="password" name="confirm_password" class="form-control">
        </div>
    </div>
    <div class="row mb-3">
       <label for="" class="col-sm-3 col-form-label">
           Firstname:
       </label>
       <div class="col-sm-6">
           <input type="text" name="firstname" class="form-control">
       </div>
    </div>
    <div class="row mb-3">
       <label for="" class="col-sm-3 col-form-label">
           Middlename:
       </label>
       <div class="col-sm-6">
           <input type="text" name="middlename" class="form-control">
       </div>
    </div>
    <div class="row mb-3">
       <label for="" class="col-sm-3 col-form-label">
           Lastname:
       </label>
       <div class="col-sm-6">
           <input type="text" name="lastname" class="form-control">
       </div>
    </div>
    <div class="mb-3 row">
        <label for="" class="col-sm-3">Address:</label>
        <div class="col-sm-6">
            <input type="text" name="address" class="form-control">
        </div>
    </div>
    <div class="mb-3 row">
        <label for="" class="col-sm-3">Gender:</label>
        <div class="col-sm-6">
            <div class="form-check">
          <input class="form-check-input" name="optGender" type="radio" value="male" id="flexCheckDefault">
          <label class="form-check-label" for="flexCheckDefault">
            Male
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" name="optGender" type="radio" value="female" id="flexCheckChecked" >
          <label class="form-check-label" for="flexCheckChecked">
           Female
          </label>
        </div>
        </div>
    </div>
        <div class="row mb-3">
       <label for="" class="col-sm-3 col-form-label">
           Birthdate:
       </label>
       <div class="col-sm-2">
           <select name="birth_month" id="" class="form-select">
               <option value="0">Month</option>
               <option value="1">Jan</option>
               <option value="2">Feb</option>
               <option value="3">Mar</option>
               <option value="4">Apr</option>
               <option value="5">May</option>
               <option value="6">Jun</option>
               <option value="7">Jul</option>
               <option value="8">Aug</option>
               <option value="9">Sep</option>
               <option value="10">Oct</option>
               <option value="11">Nov</option>
               <option value="12">Dec</option>
           </select>
       </div>
       <div class="col-sm-2">
           <select name="birth_date" id="" class="form-select">
               <option value="0">Day</option>
               <option value="1">1</option>
               <option value="2">2</option>
               <option value="3">3</option>
               <option value="4">4</option>
               <option value="5">5</option>
               <option value="6">6</option>
               <option value="7">7</option>
               <option value="8">8</option>
               <option value="9">9</option>
               <option value="10">10</option>
               <option value="11">11</option>
               <option value="12">12</option>
               <option value="13">13</option>
               <option value="14">14</option>
               <option value="15">15</option>
               <option value="16">16</option>
               <option value="17">17</option>
               <option value="18">18</option>
               <option value="19">19</option>
               <option value="21">21</option>
               <option value="22">22</option>
               <option value="23">23</option>
               <option value="24">24</option>
               <option value="25">25</option>
               <option value="26">26</option>
               <option value="27">27</option>
               <option value="28">28</option>
               <option value="29">29</option>
               <option value="30">30</option>
               <option value="31">31</option>
           </select>
       </div>
       <div class="col-sm-2">
           <select name="birth_year" id="" class="form-select">
                <option value="0">Year</option>
                <option value="1987">1984</option>
                <option value="1987">1985</option>
                <option value="1987">1986</option>
                <option value="1987">1987</option>
                <option value="1988">1988</option>
                <option value="1989">1989</option>
                <option value="1990">1990</option>
                <option value="1991">1991</option>
                <option value="1992">1992</option>
                <option value="1993">1993</option>
                <option value="1994">1994</option>
                <option value="1995">1995</option>
                <option value="1996">1996</option>
                <option value="1997">1997</option>
                <option value="1998">1998</option>
                <option value="1999">1999</option>
                <option value="2000">2000</option>
                <option value="2001">2001</option>
                <option value="2002">2002</option>
                <option value="2003">2003</option>
                <option value="2004">2004</option>
                <option value="2005">2005</option>
                <option value="2005">2006</option>
                <option value="2005">2007</option>
                <option value="2005">2008</option>
                <option value="2005">2009</option>
                <option value="2005">2010</option>
           </select>
       </div>
    </div>
    <div class="row mb-3">
        <label for="" class="col-sm-3 col-form-label">
            Fitness Level:
        </div>
            <div class="col-sm-2">
                <div class="form-check">
              <input class="form-check-input" name="optFitness" type="radio" value="beginner" id="flexCheckDefault">
              <label class="form-check-label" for="flexCheckDefault">
                Beginner
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" name="optFitness" type="radio" value="intermediate" id="flexCheckChecked" >
              <label class="form-check-label" for="flexCheckChecked">
               Intermediate
              </label>
            </div>
        </div>
        <div class="form-check">
          <input class="form-check-input" name="optFitness" type="radio" value="expert" id="flexCheckChecked" >
          <label class="form-check-label" for="flexCheckChecked">
           Expert
          </label>
        </div>
     </div>

     <div class="row mb-3">
        <label for="" class="col-sm-3 col-form-label">
            Length of Workout:
        </label>
            <div class="col-sm-3">
                <div class="form-check">
              <input class="form-check-input" name="optLengthofworkout" type="radio" value="10 minutes" id="flexCheckDefault">
              <label class="form-check-label" for="flexCheckDefault">
                10 minutes
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" name="optLengthofworkout" type="radio" value="20 minutes" id="flexCheckChecked" >
              <label class="form-check-label" for="flexCheckChecked">
               20 minutes
              </label>
            </div>
        <div class="form-check">
          <input class="form-check-input" name="optLengthofworkout" type="radio" value="30 minutes" id="flexCheckChecked" >
          <label class="form-check-label" for="flexCheckChecked">
           30 minutes
          </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" name="optLengthofworkout" type="radio" value="40 minutes" id="flexCheckChecked" >
            <label class="form-check-label" for="flexCheckChecked">
             40 minutes
            </label>
          </div>
     </div>

     <div class="row mb-3">
        <label for="" class="col-sm-3 col-form-label">
            Workout Goals:
        </label>
            <div class="col-sm-3">
                <div class="form-check">
              <input class="form-check-input" name="optWorkoutgoals" type="radio" value="Basic Fitness" id="flexCheckDefault">
              <label class="form-check-label" for="flexCheckDefault">
                Basic Fitness
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" name="optWorkoutgoals" type="radio" value="Weight Loss" id="flexCheckChecked" >
              <label class="form-check-label" for="flexCheckChecked">
               Weight Loss
              </label>
            </div>
        <div class="form-check">
          <input class="form-check-input" name="optWorkoutgoals" type="radio" value="Muscle Gain" id="flexCheckChecked" >
          <label class="form-check-label" for="flexCheckChecked">
           Muscle Gain
          </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" name="optWorkoutgoals" type="radio" value="Cardio and Martial Arts" id="flexCheckChecked" >
            <label class="form-check-label" for="flexCheckChecked">
             Cardio and Martial Arts
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" name="optWorkoutgoals" type="radio" value="Muscle Endurance" id="flexCheckChecked" >
            <label class="form-check-label" for="flexCheckChecked">
             Muscle Endurance
            </label>
          </div>
     </div>
     <div class="row mb-3">
        <label for="" class="col-sm-3 col-form-label">
            Do you have access to equipment?
        </label>
            <div class="col-sm-3">
                <div class="form-check">
              <input class="form-check-input" name="optEquipment" type="radio" value="yes" id="flexCheckDefault">
              <label class="form-check-label" for="flexCheckDefault">
                Yes
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" name="optEquipment" type="radio" value="no" id="flexCheckChecked" >
              <label class="form-check-label" for="flexCheckChecked">
               No
              </label>
        </div>
     </div>
    <div class="mb-r row">
        <input type="submit" value="submit" name="ok_btn" class="btn btn-primary col-2">
    </div>
    </form>
</body>
<script src="js/bootstrap.js"></script>
</html>