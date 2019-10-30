const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const { Pool, Client } = require('pg');

const app = express();
const connection = 'postgres://AbbieN:confessor@localhost:5432/Teamworkdb';

const client = new Client({
  connectionString: connection,
});

client.connect()
  .then(() => {
    console.log('Connection succesful!');
  }).catch(() => {
    console.log('Unable to connect!');
    console.error('error');
  });

module.exports = app;
