import express from "express";
import cors from "cors";
import databaseRouter from "./routers/index.js";
import accountRouter from "./routers/account.js";
import { Sequelize, DataTypes } from "sequelize";

const app = express();

export const sequelizeConst = new Sequelize({
  dialect: "mssql",
  dialectOptions: {
    options: {
      encrypt: true,
    },
  },
  database: "EcoWorld",
  username: "SA",
  password: "HpSeF%%ZD$\u0026H*2B",
  host: "localhost",
  port: 1433,
});

export const Customer = sequelizeConst.define(
  "Customer",
  {
    CustomerID: {
      type: DataTypes.INTEGER,
      primaryKey: true,
    },
    AccountID: DataTypes.INTEGER,
    FirstName: DataTypes.STRING,
    LastName: DataTypes.STRING,
    Email: {
      type: DataTypes.STRING,
      validate: {
        isEmail: true,
      },
    },
    ContactInfo: DataTypes.STRING,
    City: DataTypes.STRING,
    AddressLine1: DataTypes.STRING,
    Zipcode: DataTypes.STRING,
  },
  {
    tableName: "Customer",
    timestamps: false,
  }
);

export const Account = sequelizeConst.define(
  "Account",
  {
    AccountID: {
      type: DataTypes.INTEGER,
      primaryKey: true,
    },
    Username: DataTypes.STRING,
    Password: DataTypes.STRING,
  },
  {
    tableName: "Account",
    timestamps: false,
  }
);

const setUpDatabase = async () => {
  try {
    await sequelizeConst.authenticate();
    await sequelizeConst.sync({ force: false });
    console.log("connected to DB");
  } catch (e) {
    console.log("ERRRROR ", e);
  }
};

const initialize = (server) => {
  server.use(cors());
  server.use(express.json());
  server.use(express.urlencoded({ extended: true }));
  setUpDatabase().then(() => {
    server.use("/api/accounts", accountRouter);
    server.use("/api/customers", databaseRouter);

    server.use((req, res) => {
      res.status(404).send();
    });
  });
};

initialize(app);
app.listen(3003, () => console.log(`Server ready at port 3003`));

export default app;
