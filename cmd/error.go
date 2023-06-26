package cmd

import "regexp"

type CommandError struct {
	s         string
	userError bool
}

func (c CommandError) Error() string {
	return c.s
}

func (c CommandError) isUserError() bool {
	return c.userError
}

var userErrorRegexp = regexp.MustCompile("argument|flag|shorthand")

func isUserError(err error) bool {
	if cErr, ok := err.(CommandError); ok && cErr.isUserError() {
		return true
	}

	return userErrorRegexp.MatchString(err.Error())
}
