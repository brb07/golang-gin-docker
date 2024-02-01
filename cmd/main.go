package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()
	router.GET("/", healthCheckHandler)
	router.Run(":1337")
}

func healthCheckHandler(c *gin.Context) {

	c.JSON(http.StatusOK, gin.H{
		"health": "OK",
	})
}
