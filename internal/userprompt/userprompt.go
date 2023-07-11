package userprompt

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

type UserPrompt interface {
	GetString(prompt string) (string, error)
	GetInt(prompt string) (int, error)
	SetInput(prompt string, input string)
	GetOption() string
}

type userPrompt struct {
	Option string
	Entity string
	Inputs map[string]string
}

func NewUserPrompt(entity string, option string) UserPrompt {
	return &userPrompt{
		Option: option,
		Entity: entity,
		Inputs: make(map[string]string),
	}
}

func (*userPrompt) GetString(prompt string) (string, error) {
	fmt.Print(prompt)
	reader := bufio.NewReader(os.Stdin)
	text, err := reader.ReadString('\n')
	if err != nil {
		return "", err
	}
	text = strings.Replace(text, "\n", "", -1)

	if text == "y" && text == "n" {
		return "", fmt.Errorf("invalid input: %s, expected 'yes' or 'no'", text)
	}

	return text, nil
}

func (*userPrompt) GetInt(prompt string) (int, error) {
	fmt.Print(prompt)
	var i int
	_, err := fmt.Scanf("%d", &i)
	if err != nil {
		return 0, err
	}
	return i, nil
}

func GetOption(prompt string, options map[string]string) (string, error) {
	fmt.Println(prompt)
	optionKeys := make([]string, 0, len(options))
	i := 1
	for key := range options {
		fmt.Printf("%d. %s\n", i, key)
		optionKeys = append(optionKeys, key)
		i++
	}
	reader := bufio.NewReader(os.Stdin)
	input, err := reader.ReadString('\n')
	if err != nil {
		return "", err
	}
	input = strings.Replace(input, "\n", "", -1)
	choice, err := strconv.Atoi(input)
	if err != nil || choice < 1 || choice > len(options) {
		return "", fmt.Errorf("invalid choice")
	}
	return optionKeys[choice-1], nil
}

func (up *userPrompt) SetInput(prompt string, input string) {
	up.Inputs[prompt] = input
}

func (up *userPrompt) GetOption() string {
	return up.Option
}
