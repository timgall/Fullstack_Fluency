import express from "express";
import pg, { Pool } from "pg";
import dotenv from "dotenv";
// import axios from "axios";

dotenv.config();

const server = express();
const PORT = 3050;
server.use(express.static("public"));
server.use(express.json());

const db = new pg.Pool({
  connectionString: process.env.DATABASE_URL,
});

server.get("/api/userInfo", (req, res) => {
  db.query("SELECT * FROM users")
    .then((result) => {
      res.send(result.rows);
    })
    .catch((err) => {
      res.status(500).send("Iternal Server Error");
    });
});
server.get("/api/userInfo/:id", (req, res) => {
  db.query("SELECT * FROM users WHERE id = $1", [id])
    .then((result) => {
      res.send(result.rows[0]);
    })
    .catch((err) => {
      res.send(500).send("Internal Server Error");
    });
});

server.patch("/api/userInfo/:id", (req, res) => {
  const { id } = req.params;
  const { author, experience, linkedIn, adminVerifier } = req.body;
  Pool.query(
    "UPDATE userInfo SET author=COALESCE($1, author), experience=COALESCE($2, experience), linkedIn=COALESCE($3,linkedIn), adminVerifier=COALESCE($4,adminVerifier) WHERE id=$5 RETURNING *",

    [author, experience, linkedIn, adminVerifier, id]
  )
    .then((result) => {
      res.send(result.rows[0]);
    })
    .catch(next);
});
server.delete("/api/userInfo/:id", (req, res) => {
  const { id } = req.params;
  Pool.query("SELECT * FROM userInfo WHERE id = $1", [id])
    .then((result) => {
      res.send(result.rows[0]);
    })
    .catch(next);
});
server.use((err, req, res, next) => {
  console.error(err.message);
  res.sendStatus(500);
});
server.listen(PORT, () => {
  console.log(`Listening on port: ${PORT}`);
});
// async function getAllUserInfo(){
//   const response= await axios.get("http://localhost:3050/userInfo");
//   return response.data
// }
// getAllUserInfo();
