import org.apache.spark.sql.{SparkSession, DataFrame}

object Datavalidator {
  def main(args: Array[String]): Unit = {
    val spark = SparkSession
      .builder
      .appName("Datavalidator")
      .getOrCreate()

    // TODO
    println("SparkSession started...")

    spark.stop()
  }
}
