const express = require('express');
const mysql = require('mysql');
/*
var pool = mysql.createPool({
    "host": "172.17.0.3",
    "port" : "3306",
    "database" : "score",
    "user" : "root",
    "password": "jjagf",
    "connectionLimit" : 1000    
});
*/
//console.log("13 nodemon: "+process.env.MYSQL_DATABASE);


var pool = mysql.createPool({
    "host": process.env.MYSQL_HOST,
    "port" : process.env.MYSQL_PORT,    
    "database" : process.env.MYSQL_DATABASE,    
    "user" : process.env.MYSQL_USER,
    "password": process.env.MYSQL_PASSWORD,
    "connectionLimit" : 1000    
});

exports.exec = (query, conn, params=[]) => {

    return new Promise((resolve, reject) => {
        conn.query(query, params, (error, result, fields) => {
            if (error) {
    //console.log("24 sql: "+error.message)                
                reject(error);
            } else {
                resolve(result)
            }
        });
    })
}
exports.pool = pool;