package alerts

type Alerts interface {
	Generate(string, []byte) error
}

type alerts struct{}

func NewAlerts(string) Alerts {
	return &alerts{}
}

func (a alerts) Generate(string, []byte) error {
	//TODO implement me
	panic("implement me")
}
