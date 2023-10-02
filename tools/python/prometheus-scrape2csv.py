"""
Generate CSV file by scraping Prometheus metrics endpoint
"""
import requests
import csv
from prometheus_client import parser


def parse_prometheus_metrics(metrics_data: str):
    metrics = parser.text_string_to_metric_families(metrics_data)
    parsed_metrics = {}
    for metric in metrics:
        metric_name = metric.name
        metric_description = metric.documentation
        metric_type = metric.type
        for sample in metric.samples:
            metric_labels = sample.labels
            if metric_name not in parsed_metrics:
                parsed_metrics[metric_name] = {
                    "Name": metric_name,
                    "Description": metric_description,
                    "Unit": "",
                    "DataType": metric_type,
                    "Attributes": ",".join(metric_labels.keys())
                }
    return parsed_metrics.values()


def fetch_prometheus_metrics(url):
    response = requests.get(url)
    if response.status_code == 200:
        return response.text
    else:
        print(f"Failed to fetch data from {url}")
        return None


def write_metrics_to_csv(metrics_list, csv_filename):
    with open(csv_filename, 'w', newline='', encoding='utf-8') as csvfile:
        csv_writer = csv.writer(csvfile, quoting=csv.QUOTE_MINIMAL)
        csv_writer.writerow(["Name", "Description", "Unit", "DataType", "Attributes"])
        for metric in metrics_list:
            csv_writer.writerow(
                [metric["Name"], metric["Description"], metric["Unit"], metric["DataType"], metric["Attributes"]])


# Example usage
if __name__ == "__main__":
    try:
        default_prometheus_url = "http://localhost:9091/metrics"
        prometheus_url = input("Enter Prometheus URL (default: %s): " % default_prometheus_url) or default_prometheus_url
        md = fetch_prometheus_metrics(prometheus_url)
        if md:
            metrics_list = parse_prometheus_metrics(md)
            write_metrics_to_csv(metrics_list, "metrics.csv")
            print("Metrics data written to metrics.csv")
        else:
            print("Failed to fetch Prometheus metrics.")
    except KeyboardInterrupt:
        print("\nExiting...")
