package collector

type TLS struct {
	CAFile string `json:"ca_file" yaml:"ca_file"`
}

type DB struct {
	Nodes    []string `json:"nodes" yaml:"nodes"`
	Endpoint string   `json:"endpoint" yaml:"endpoint"`
	TLS      *TLS     `json:"tls,omitempty" yaml:"tls,omitempty"`
	Username string   `json:"username" yaml:"username"`
	Password string   `json:"password" yaml:"password"`
}

type Prometheus struct {
	JobName              string   `json:"job_name" yaml:"job_name"`
	ScrapeInterval       string   `json:"scrape_interval" yaml:"scrape_interval"`
	MetricsPath          string   `json:"metrics_path" yaml:"metrics_path"`
	Scheme               string   `json:"scheme" yaml:"scheme"`
	InsecureSkipVerify   bool     `json:"insecure_skip_verify" yaml:"insecure_skip_verify"`
	Targets              []string `json:"targets" yaml:"targets"`
	UseStartTimeMetric   bool     `json:"use_start_time_metric" yaml:"use_start_time_metric"`
	StartTimeMetricRegex string   `json:"start_time_metric_regex" yaml:"start_time_metric_regex"`
}

type JMX struct {
	JarPath            string `json:"jar_path" yaml:"jar_path"`
	Endpoint           string `json:"endpoint" yaml:"endpoint"`
	TargetSystem       string `json:"target_system" yaml:"target_system"`
	CollectionInterval string `json:"collection_interval" yaml:"collection_interval"`
}

type TimerHistogramMapping struct {
	StatsdType   string `json:"statsd_type" yaml:"statsd_type"`
	ObserverType string `json:"observer_type" yaml:"observer_type"`
}

type Statsd struct {
	Endpoint              string                  `json:"endpoint" yaml:"endpoint"`
	AggregationInterval   string                  `json:"aggregation_interval" yaml:"aggregation_interval"`
	EnableMetricType      bool                    `json:"enable_metric_type" yaml:"enable_metric_type"`
	IsMonotonicCounter    bool                    `json:"is_monotonic_counter" yaml:"is_monotonic_counter"`
	TimerHistogramMapping []TimerHistogramMapping `json:"timer_histogram_mapping" yaml:"timer_histogram_mapping"`
}
