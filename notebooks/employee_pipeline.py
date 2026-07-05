# Databricks notebook source
rows=[(1,"Alice","IT"),(2,"Bob","HR")]
df=spark.createDataFrame(rows,["id","name","dept"])
display(df)
