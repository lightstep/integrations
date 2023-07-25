package spec

/*
With the intended behavior of Template you can scaffold an integration package with
just a few entries. Here's a speculative example of YAML you'll find to build something
like we created for couchdb in the examples repo...

```yaml
version: 0.0.1
name: CouchDB
id: couchdb
author: Nathan Slaughter
status: development
vars:
	receiver:
	  endpoint: http://couchdb:5984
	  username: otelu
	  password: otelp
	  collection_interval: 10s
	image: couchdb
	environment:
	  COUCHDB_USER: otelu
	  COUCHDB_PASSWORD: otelp
	ports:
	  metrics: 5984
	  app: 5986

# remove plural of name

----------
templates:
  - dynamically rendered with vars
assets:
  - any file that is static
----------

examples:
  vars: <the top-level vars>

  # is it static - this example .. or template

  - templates:
    - name:
      location:

dashboards:
  - 
alerts:
  -
images:
  - 
----------

templates:
  - names: ["compose/appreceiver/solo"]
    location: examples/compose/docker-compose.yml
  - names: ["compose/appreceiver/cluster"]
    vars:
    	nodes: 3
    	environment:
    		NODENAME: ``
    location: examples/compose/docker-compose.cluster.yml
assets:
  - 
```

Top-level values can be used throughout all of the templates.

- How to configure for compose
- How to configure template for app config file

This would seem valuable as it's 27 lines replacing 164 lines. But what's just as important is that every aspect of
our integration packages that we can manage through templates can now be changed in mass. This gives us flexibility
to apply the data for multiple purposes. Using concise data for each integration that captures only what's different in each case will provide us considerably

The primary use cases that I'm contemplating are for testing. But this
becomes a valuable
gathering data
*/
type Template struct {
	Name     string // used to lookup the template in project
	Location string // relative path where template is rendered
	Vars     map[string]string
}

type Spec struct {
	Version    string   `json:"version,omitempty"` // spec version - we can use this to determine how to parse the spec
	ID         string   `json:"id"`                // unique id for the service
	Name       string   `json:"name"`              // name of the service - e.g. Cassandra, MongoDB
	Author     Author   `json:"author,omitempty"`
	Categories []string `categories:"tags,omitempty"` // provides context on particular things relevant to the integration
	Status     string   `json:"status,omitempty"`     // e.g. (development|experimental|supported)
	/* TODO:
	Make an IntegrationStatus type with statuses like
	- deprecated - we will fix bugs, but the legacy package may remain temporarily as a resource while customers migrate
	- development - this integration doesn't yet include a dashboard
	- experimental - uses an unsupported approach though it is what we would recommend to a customer
	- supported - we intend to maintain
	*/
	Matrix    Matrix `json:"matrix,omitempty"`
	Vars      map[string]string
	Templates []Template `json:"templates,omitempty"`
	Assets    []Asset    `json:"assets,omitempty"`
	Changelog Changelog  `json:"changelog,omitempty"`
}

type Change struct {
	Description string `json:"description,omitempty"`
	Date        string `json:"date,omitempty"`
}

type Changelog struct {
	Path    string   `json:"path,omitempty"`
	Changes []Change `json:"changes,omitempty"`
}
