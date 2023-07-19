package mock

const MockMetrics = `Metric,Description
Average enqueue time,"Average time (in milliseconds) from enqueue to dequeue of messages."
Average enqueue time increase,"Increase of average enqueue time counted as the delta between samples. (The wait time of messages before they’re consumed.)"
Memory usage,"Percentage usage of memory limit for NON_PERSISTENT messages."
Store usage,"Percentage usage of storage limit for PERSISTENT messages."
Temp usage,"Percentage usage of storage limit for temporary messages."
Current connections,"Number of currently open connections."
Total connections,"Number of connections since last broker restart."
Producers,"From TotalProducerCount."
Consumers,"From TotalConsumerCount."
Queue size,"Number of messages in the queue/store that haven’t been acknowledged by a consumer."
Enqueue count,"Number of messages sent to the queue since the last restart."
Dequeue count,"Number of messages removed from the queue (acknowledged by consumer) since last restart."
Dispatch count,"Number of messages sent to consumer sessions (Dequeue + Inflight)."
Expired count,"Number of messages not delivered because they expired."
In Flight count,"Number of messages sent to a consumer session that haven’t received an ack."
`
