echo 'Running Spark install...'
sudo apt update
sudo apt -y upgrade
sudo apt-get install -y openjdk-8-jdk
#sudo apt update
sudo add-apt-repository --force-yes ppa:webupd8team/java
#sudo apt update
sudo update-java-alternatives -s java-1.8.0-openjdk-amd64
echo "export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64/" >> ~/.profile
#echo "export PATH=$PATH:/usr/lib/jvm/java-1.8.0-openjdk-amd64/" >> ~/.profile
source ~/.profile
#sudo apt install oracle-java8-installer oracle-java8-set-default
#sudo apt-get install openjdk-8-jdk
echo "export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64/" >> ~/.profile
echo "export SPARK_HOME=/opt/spark" >> ~/.profile
echo "export PATH=$PATH:/usr/lib/jvm/java-1.8.0-openjdk-amd64:/opt/spark/bin:/opt/spark/sbin" >> ~/.profile
echo "export PYSPARK_PYTHON=/usr/bin/python3" >> ~/.profile
source ~/.profile


wget https://downloads.apache.org/spark/spark-2.4.6/spark-2.4.6-bin-hadoop2.7.tgz
tar -xvf spark-2.4.6-bin-hadoop2.7.tgz
sudo mv spark-2.4.6-bin-hadoop2.7/ /opt/spark

echo 'Done.'