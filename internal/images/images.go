package images

type Images interface {
	Generate(string, []byte) error
}

type images struct{}

func NewIMages() Images {
	return &images{}
}

func (i images) Generate(string, []byte) error {
	//TODO implement me
	return nil
}
