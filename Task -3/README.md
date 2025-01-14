Infrastructure Provisioning and Monitoring with Terraform & Prometheus

1. Prerequisites
- Terraform
- AWS CLI
- Docker (for Prometheus and Grafana)

2. Provision Infrastructure with Terraform

 Clone the repository:
  1. git clone <repository url>
  2. cd <project-directory>


3.   Run the following command to provison the infrastructure. 

     1. terraform init
     2. terraform plan
     3. terraform apply

4.  Set Up Prometheus and Grafana

 login to the EC2 instance and runthe following command to start prometheus and Node Exporter 

    1. docker run -d -p 9090:9090 --name prometheus prom/prometheus
    2. docker run -d -p 9100:9100 --name node_exporter prom/node-exporter

5. On your local machine, run Grafana

    1. docker run -d -p 3000:3000 --name grafana grafana/grafana

6. View Metrics

   1. Access Prometheus at http://<EC2_PUBLIC_IP>:9090
   2. Access Grafana at http://<EC2_PUBLIC_IP>:3000      