const express = require('express');
const exec = require('../db/mysql/mysql');
const mysql = require('../db/mysql/mysql').pool;

//console.log ('5 models: ' );
//console.log ('6 models: ' +process.env.MYSQL_USER);
//console.log ('7 models: ' +process.env.MYSQL_PORT);
//console.log ('8 models: ' +process.env.MYSQL_PASSWORD);


exports.getName = (name) => {
//exports.getName = function (name) {
    try {
        return new Promise((resolve, reject) => {
            mysql.getConnection((error, conn) => {
                if (error) { 
                    return error.message };                
                var sql = "SELECT his_ID, his_cpf, his_nome FROM score_historico WHERE his_nome LIKE '%"+name+"%';";
                exec.exec( sql, conn,(err, rows ) => {
                if (err) {
                    reject(err);
                }
                    resolve(rows);            
                });
            });
        });
    } catch (error) {
        return { error: error.message };
    }
}
