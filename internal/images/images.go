package images

type Images interface {
	TemplateRender(string, []byte) error
}

type images struct{}

func NewIMages() Images {
	return &images{}
}

func (i images) TemplateRender(string, []byte) error {
	//TODO implement me
	return nil
}
