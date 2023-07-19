package alerts

type Expression struct {
	EvaluationWindow   string     `json:"evaluation_window" yaml:"evaluation_window"`
	EvaluationCriteria string     `json:"evaluation_criteria" yaml:"evaluation_criteria"`
	IsMulti            bool       `json:"is_multi" yaml:"is_multi"`
	Operand            string     `json:"operand" yaml:"operand"`
	Thresholds         Thresholds `json:"thresholds" yaml:"thresholds"`
}

type Thresholds struct {
	Warning  int `json:"warning" yaml:"warning"`
	Critical int `json:"critical" yaml:"critical"`
}

type GroupBy struct {
	AggregationMethod string   `json:"aggregation_method" yaml:"aggregation_method"`
	Keys              []string `json:"keys" yaml:"keys"`
}

type MetricQuery struct {
	Metric             string  `json:"metric" yaml:"metric"`
	QueryName          string  `json:"query_name" yaml:"query_name"`
	TimeseriesOperator string  `json:"timeseries_operator" yaml:"timeseries_operator"`
	Hidden             bool    `json:"hidden" yaml:"hidden"`
	Display            string  `json:"display" yaml:"display"`
	GroupBy            GroupBy `json:"group_by" yaml:"group_by"`
}

type LightstepMetricCondition struct {
	LightstepAlerts LightstepAlerts `json:"alerts" yaml:"alerts"`
}

type LightstepAlerts struct {
	ProjectName string      `json:"project_name" yaml:"project_name"`
	Name        string      `json:"name" yaml:"name"`
	Expression  Expression  `json:"expression" yaml:"expression"`
	MetricQuery MetricQuery `json:"metric_query" yaml:"metric_query"`
}

type AlertResource struct {
	LightstepMetricCondition LightstepMetricCondition `json:"lightstep_metric_condition" yaml:"lightstep_metric_condition"`
}
