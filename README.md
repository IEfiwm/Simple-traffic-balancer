# Simple-traffic-balancer

Consider that you have two servers, server A and server B
The server A has an upload or download limit, and for example, you must have 4 gigs uploaded for every gig of downloads
But server B does not have this limitation
By using this script on server B and placing a file on server A, you can balance this traffic as needed and your storage space on server B will not be full.

## Setup on ubuntu

     sudo wget https://raw.githubusercontent.com/IEfiwm/Simple-traffic-balancer/master/start.sh && sudo chmod 777 start.sh && sudo bash start.sh
and then script ask you "How many times you want download this file ?!" and then ask "Give me url file:" You should enter url of file then script ask about filename for delete file automaticly after download.
