import React, { useEffect, useState } from "react";
import axios from "axios";
import {
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Paper,
} from "@mui/material";
import CreateUserForm from "./Create.jsx";

const Account = () => {
  const [accounts, setAccounts] = useState([]);

  const fetchAccounts = async () => {
    try {
      const response = await axios.get("http://localhost:3003/api/accounts");
      setAccounts(response.data);
    } catch (error) {
      console.error("Error fetching accounts:", error);
    }
  };

  useEffect(() => {
    fetchAccounts();
  }, []);

  const refetchData = () => {
    fetchAccounts();
  };

  return (
    <>
      <CreateUserForm callback={refetchData} />
      <TableContainer component={Paper}>
        <Table aria-label="account table">
          <TableHead>
            <TableRow>
              <TableCell>Account ID</TableCell>
              <TableCell>User Name</TableCell>
            </TableRow>
          </TableHead>
          <TableBody>
            {accounts.map((account) => (
              <TableRow key={account.AccountID}>
                <TableCell>{account.AccountID}</TableCell>
                <TableCell>{account.Username}</TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </TableContainer>
    </>
  );
};

export default Account;
