import express from "express";
import pg from "pg";
import dotenv from "dotenv";

dotenv.config();

const server = express();
const PORT = 3050;
server.use(express.static("public"));
server.use(express.json());

const db = new pg.Pool({
  connectionString: process.env.DATABASE_URL,
});

server.listen(PORT, () => {
  console.log(`Listening on port: ${PORT}`);
});
