### Context.IO webhooks consumer

This is an example Rails app to show how to consume webhooks from a third party API, in this case, the Context.IO API.

This app simply:

* handles the webhook callback
* saves the data to a database
* displays the received callback

### Receiving webhooks in localhost

To test webhooks in localhost, I am using [ngrok](https://ngrok.com/) to open a tunnel to localhost.
