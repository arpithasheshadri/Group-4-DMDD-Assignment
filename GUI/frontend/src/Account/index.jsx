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
  IconButton,
  Tooltip,
} from "@mui/material";
import { Edit, Delete } from "@mui/icons-material";
import CreateUserForm from "./Create";

const Account = () => {
  const [accounts, setAccounts] = useState([]);
  const [selectedAccount, setSelectedAccount] = useState(null);
  const [isEditMode, setIsEditMode] = useState(false);

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

  const handleEdit = (account) => {
    setSelectedAccount(account);
    setIsEditMode(true);
  };

  const handleDelete = async (accountId) => {
    try {
      await axios.delete(`http://localhost:3003/api/accounts/${accountId}`);
      fetchAccounts();
    } catch (error) {
      console.error("Error deleting account:", error);
    }
  };

  const handleUpdate = () => {
    setIsEditMode(false);
    setSelectedAccount(null);
    fetchAccounts();
  };

  return (
    <>
      {!isEditMode ? (
        <CreateUserForm callback={fetchAccounts} />
      ) : (
        <CreateUserForm
          callback={handleUpdate}
          initialAccount={selectedAccount}
        />
      )}
      <TableContainer component={Paper}>
        <Table aria-label="account table">
          <TableHead>
            <TableRow>
              <TableCell>Account ID</TableCell>
              <TableCell>User Name</TableCell>
              <TableCell>Actions</TableCell> {/* New column for actions */}
            </TableRow>
          </TableHead>
          <TableBody>
            {accounts.map((account) => (
              <TableRow key={account.AccountID}>
                <TableCell>{account.AccountID}</TableCell>
                <TableCell>{account.Username}</TableCell>
                <TableCell>
                  <Tooltip title="Edit">
                    <IconButton
                      aria-label="edit"
                      onClick={() => handleEdit(account)}
                    >
                      <Edit />
                    </IconButton>
                  </Tooltip>
                  <Tooltip title="Delete">
                    <IconButton
                      aria-label="delete"
                      onClick={() => handleDelete(account.AccountID)}
                    >
                      <Delete />
                    </IconButton>
                  </Tooltip>
                </TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </TableContainer>
    </>
  );
};

export default Account;
