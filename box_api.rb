class Box_API
require "rest-client"
require "json"
 
# This is the ID that you copied down in the last exercise
your_folder_id = "1234567890"
 
# Add the "body" variable here
body = {
 "description" => "I made this on Codecademy!"
 }
response = RestClient.put(
    "https://api.box.com/2.0/folders/#{your_folder_id}",
    JSON.generate(body),
    :authorization => "Bearer " << "ITiVXpOcQ8Q4GbZMabDu0JRehT0mdnLM"
)
 
JSON.parse(response.body)["description"]

end