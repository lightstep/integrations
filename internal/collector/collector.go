package collector

import (
	"fmt"
	"html/template"
	"log"
	"os"
)

const (
	ReceiverDB     = "db"
	ReceiverProm   = "prometheus"
	ReceiverJMX    = "jmx"
	ReceiverStatsd = "statsd"

	receiverTemplateName = "receiver"
	collectorFile        = "collector.yml"
)

type IReceiver interface {
	Generate(string, []byte) error
}

type Receiver struct {
	Type       string      `json:"type" yaml:"type"`
	Name       string      `json:"name" yaml:"name"`
	DB         *DB         `json:"db,omitempty" yaml:"db,omitempty"`
	Prometheus *Prometheus `json:"prometheus,omitempty" yaml:"prometheus,omitempty"`
	JMX        *JMX        `json:"jmx,omitempty" yaml:"jmx,omitempty"`
	Statsd     *Statsd     `json:"statsd,omitempty" yaml:"statsd,omitempty"`
}

func NewReceiver(receiverType string) IReceiver {
	switch receiverType {
	case ReceiverDB:
		return &Receiver{Type: ReceiverDB, DB: &DB{}}
	case ReceiverProm:
		return Receiver{Type: ReceiverProm, Prometheus: &Prometheus{}}
	case ReceiverJMX:
		return Receiver{Type: ReceiverJMX, JMX: &JMX{}}
	case ReceiverStatsd:
		return Receiver{Type: ReceiverStatsd, Statsd: &Statsd{}}
	default:
		log.Fatalf("Unsupported receiver type: %s", receiverType)
	}
	return Receiver{}
}

func (r Receiver) Generate(path string, content []byte) error {
	f, err := os.Create(fmt.Sprintf("%s/%s", path, collectorFile))
	if err != nil {
		return fmt.Errorf("error creating file: %v", err)
	}
	defer f.Close()

	tmpl, err := template.New(receiverTemplateName).Parse(string(content))
	if err != nil {
		return fmt.Errorf("error creating template: %v", err)
	}
	t := template.Must(tmpl, nil)
	err = t.Execute(f, r)
	if err != nil {
		return fmt.Errorf("error executing template: %v", err)
	}

	return nil
}
