Write-Host `n'Welcome Get-Fitness :)'`n

$age = Read-Host -Prompt 'Please enter your age'
$gender = Read-Host -Prompt `n'Are you a male or a female'
$gender = $gender.ToUpper() 
$height = Read-Host -Prompt `n'Please enter your height in inches'
$weight = Read-Host -Prompt `n'Please enter your weight in lbs'
$bmi = [Math]::Round(($weight / $height / $height) * 703,1)  #Example formula for BMI  #(37.25 lbs / 41.5 in / 41.5 in) x 703 = 15.2
$bmrMale = [Math]::Round(4.536 * $weight + (15.88 * $height) - (5 * $age) + 5)
$bmrFemale = [Math]::Round(4.536 * $weight + (15.88 * $height) - (5 * $age) - 161)

Write-Host `n'Your BMI is' $bmi`n
if($bmi -gt 30) {
    Write-Host 'Also your BMI of' $bmi 'is considered to be within the Obese range'`n
} elseif ($bmi -gt 25 -AND $bmi -lt 30) {
    Write-Host 'Also your BMI of' $bmi 'is considered to be within the Overweight range'`n
} elseif ($bmi -gt 18 -AND $bmi -lt 25) {
    Write-Host 'Also your BMI of' $bmi 'is considered to be within the Healthy range'`n
} else {
    Write-Host 'Also your BMI of' $bmi 'is considered to be within the Underweight range'`n
}

if ($gender -eq 'F' -OR $gender -eq 'FEMALE') {
    Write-Host 'Your basic metabolic rate is ***' $bmrFemale 'calories and depending on your activity level adjust calories for weight loss or weight gain'`n 
    Write-Host 'Maintenance calories'`n
    Write-Host  'Sedentary *** ' ($bmrFemale + 342) 'calories' `n'Light Exercise ***' ($bmrFemale + 642) 'calories' `n'Moderate Exercise ***' ($bmrFemale + 941) 'calories' `n'Heavy Exercise *** ' ($bmrFemale + 1241) 'calories' `n
} else {
    Write-Host 'Your basic metabolic rate is ***' $bmrMale 'calories and depending on your activity level adjust for weight loss or weight gain'`n 
    Write-Host 'Maintenance calories'`n
    Write-Host 'Sedentary *** ' ($bmrMale + 404) 'calories' `n'Light Exercise ***' ($bmrMale + 758) 'calories' `n'Moderate Exercise ***' ($bmrMale + 1111) 'calories' `n'Heavy Exercise *** ' ($bmrMale + 1465) 'calories' `n
}



#****TODO***********
# Need to add a function for script
# Need data validation for incorrect entries
# Add foreground colors for BMI ranges, for example for Overweight highlight red 
# press enter to record your fitness stats
# calculates new PR based on previous workout
# Cardio endurance level time  three choices 30 min 45 min and 60 min
# Big four lifts
# Squat in lbs
# Military Press in lbs
# Bench Press in lbs
# Deadlift in lbs
# calculate following week workout goal increase randomly, goal could be increase weight, or time, reps, sets