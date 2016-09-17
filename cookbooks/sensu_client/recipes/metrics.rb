sensu_check "cpu_metrics" do
  type "metric"
  command "metrics-cpu.rb"
  interval 60
  standalone true
  handlers ["influxdb"]
end

sensu_check "memory_metrics" do
  type "metric"
  command "metrics-memory.rb"
  interval 60
  standalone true
  handlers ["influxdb"]
end

sensu_check "disk_usage_metrics" do
  type "metric"
  command "metrics-disk-usage.rb"
  interval 60
  standalone true
  handlers ["influxdb"]
end

sensu_check "load_metrics" do
  type "metric"
  command "metrics-load.rb"
  interval 60
  standalone true
  handlers ["influxdb"]
end
