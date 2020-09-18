CMD_ARGS=

JAR_PATH=target/scala-2.11/datavalidator_2.11-1.0.jar
# JAR_PATH=target/scala-2.11/datavalidator-assembly-1.0.jar
CLASS_NAME=Datavalidator


run:
	SPARK_MAJOR_VERSION=2 nohup spark-submit \
		--master local \
		--class $(CLASS_NAME) \
		$(JAR_PATH) $(CMD_ARGS) \
		>out.log 2>&1 &


# Recommended to build using separate sbt process.
build:
	sbt package
	# sbt assembly

