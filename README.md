## Integrations

```shell
go build .
```

```shell
./integrations init --spec=./spec.yaml
```

### Scaffolding the Spec

```shell
{{servicename}}
|- README.md
|- examples/
   |- compose/
      |- docker-compose.yml
      |- collector.yml
   |- helm/
      |- Values.yaml
      |- Chart.yaml
      |- templates/
   |- k8s
      |- templates/
|- dashboards/
   |- overview/
      |- main.tf
|- alerts
   |- mem/
|- images/
   |- dashboards-overview.png
```

### Use of User Prompting Lib

```go
package main

import "github.com/lightstep/integrations/internal/userprompt"

var (
    optionsPrompt   = "Please select an integration option:"
    componentPrompt = "Do you want to generate component '%s'? (yes/no): "
)

// UserPromptList
// Please select an integration option:
// 1. Collector Prometheus
// 2. Collector JMX
// 3. Collector Statsd
// 4. AWS
// 5. Azure
// 6. Collector
// 2
func UserPromptList() {
    selectedOption, err := userprompt.GetOption(optionsPrompt, config.Options)
    if err != nil {
    fmt.Println("Error: ", err)
    }
    fmt.Println("You selected:", selectedOption)
}

// SingleUserPrompt
// Do you want to generate component 'cassandra'? (yes/no): yes
func SingleUserPrompt() {
    userPrompt := userprompt.NewUserPrompt(component.Name, config.Options[selectedOption])
    choice, err := userPrompt.GetString(fmt.Sprintf(componentPrompt, component.Name))
    if err != nil {
        fmt.Print("error reading input: %v", err)
    }
}
```