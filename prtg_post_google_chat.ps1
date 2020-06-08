param(
    $message
)

# Google Chat webhook URL
$url = 'https://chat.googleapis.com/v1/spaces/....<YOURUNIQUEIDENTIFIERS>'
$headers = @{'Content-Type'='application/json; charset=UTF-8'}

# Builds the message object that will be posted to the api. This will take the message variable that is passed in from the prtg params field
$message = @"
{
    "text":"${message}"
}
"@

# Invoke the APi call to post the message to the google chat api via the webhook url
Invoke-RestMethod $url -Method POST -Headers $Headers -UseBasicParsing -Body $message

