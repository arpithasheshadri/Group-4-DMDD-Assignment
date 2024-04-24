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
import CreateCustomer from "./Create";

const Customer = () => {
  const [customers, setCustomers] = useState([]);
  const [selectedCustomer, setSelectedCustomer] = useState(null);
  const [isEditMode, setIsEditMode] = useState(false);

  const fetchCustomers = async () => {
    try {
      const response = await axios.get("http://localhost:3003/api/customers");
      setCustomers(response.data);
    } catch (error) {
      console.error("Error fetching customers:", error);
    }
  };

  useEffect(() => {
    fetchCustomers();
  }, []);

  const handleEdit = (customer) => {
    console.log(customer);
    setSelectedCustomer(customer);
    setIsEditMode(true);
  };

  const handleDelete = async (customerId) => {
    try {
      await axios.delete(`http://localhost:3003/api/customers/${customerId}`);
      fetchCustomers();
    } catch (error) {
      console.error("Error deleting customer:", error);
    }
  };

  const handleUpdate = () => {
    setIsEditMode(false);
    setSelectedCustomer(null);
    fetchCustomers();
  };

  return (
    <>
      {!isEditMode ? (
        <CreateCustomer callback={fetchCustomers} />
      ) : (
        <CreateCustomer
          callback={handleUpdate}
          initialCustomer={selectedCustomer}
        />
      )}
      <TableContainer component={Paper}>
        <Table aria-label="customer table">
          <TableHead>
            <TableRow>
              <TableCell>Customer ID</TableCell>
              <TableCell>Account ID</TableCell>
              <TableCell>First Name</TableCell>
              <TableCell>Last Name</TableCell>
              <TableCell>Email</TableCell>
              <TableCell>Contact Info</TableCell>
              <TableCell>City</TableCell>
              <TableCell>Address Line 1</TableCell>
              <TableCell>Zipcode</TableCell>
              <TableCell>Actions</TableCell> {/* New column for actions */}
            </TableRow>
          </TableHead>
          <TableBody>
            {customers.map((customer) => (
              <TableRow key={customer.CustomerID}>
                <TableCell>{customer.CustomerID}</TableCell>
                <TableCell>{customer.AccountID}</TableCell>
                <TableCell>{customer.FirstName}</TableCell>
                <TableCell>{customer.LastName}</TableCell>
                <TableCell>{customer.Email}</TableCell>
                <TableCell>{customer.ContactInfo}</TableCell>
                <TableCell>{customer.City}</TableCell>
                <TableCell>{customer.AddressLine1}</TableCell>
                <TableCell>{customer.Zipcode}</TableCell>
                <TableCell>
                  <Tooltip title="Edit">
                    <IconButton
                      aria-label="edit"
                      onClick={() => handleEdit(customer)}
                    >
                      <Edit />
                    </IconButton>
                  </Tooltip>
                  <Tooltip title="Delete">
                    <IconButton
                      aria-label="delete"
                      onClick={() => handleDelete(customer.CustomerID)}
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

export default Customer;
