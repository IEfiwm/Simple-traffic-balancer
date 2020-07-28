# Simple-traffic-balancer

Consider that you have two servers, server A and server B
The server A has an upload or download limit, and for example, you must have 4 gigs uploaded for every gig of downloads
But server B does not have this limitation
By using this script on server B and placing a file on server A, you can balance this traffic as needed and your storage space on server B will not be full.

<h4>For run script on ubuntu use this<h4>
<code>sudo wget https://raw.githubusercontent.com/IEfiwm/Simple-traffic-balancer/master/start.sh && sudo chmod 777 download.sh && sudo bash download.sh</code>
