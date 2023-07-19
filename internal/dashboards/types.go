package dashboards

type RequiredProviders struct {
	Lightstep Provider `json:"lightstep" yaml:"lightstep"`
}

type Provider struct {
	Source  string `json:"source" yaml:"source"`
	Version string `json:"version" yaml:"version"`
}

type Resource struct {
	LightstepDashboard LightstepDashboard `json:"lightstep_dashboard" yaml:"lightstep_dashboard"`
}

type LightstepDashboard struct {
	OtelCollectorDashboard OtelCollectorDashboard `json:"otel_collector_activemq_dashboard" yaml:"otel_collector_activemq_dashboard"`
}

type OtelCollectorDashboard struct {
	ProjectName          string  `json:"project_name" yaml:"project_name"`
	DashboardName        string  `json:"dashboard_name" yaml:"dashboard_name"`
	DashboardDescription string  `json:"dashboard_description" yaml:"dashboard_description"`
	Chart                []Chart `json:"chart" yaml:"chart"`
}

type Chart struct {
	Name  string  `json:"name" yaml:"name"`
	Rank  string  `json:"rank" yaml:"rank"`
	Type  string  `json:"type" yaml:"type"`
	Query []Query `json:"query" yaml:"query"`
}

type Query struct {
	QueryName   string `json:"query_name" yaml:"query_name"`
	Display     string `json:"display" yaml:"display"`
	Hidden      bool   `json:"hidden" yaml:"hidden"`
	QueryString string `json:"query_string" yaml:"query_string"`
}
