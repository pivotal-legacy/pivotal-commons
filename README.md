# Pivotal Commons

Apply for desk space at Pivotal Labs.

## Deploying

Make sure to set the FORM_URL environment variable to be an iframe-embeddable form url (e.g. google docs form).

To do set the environment variable via [CloudFoundry command line tool](http://docs.cloudfoundry.com/docs/dotcom/getting-started.html#install-cf):

    $ cf set-env APP-NAME FORM_URL <embeddable url>
    $ cf push
