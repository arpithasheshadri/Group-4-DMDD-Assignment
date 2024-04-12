import React, { useState } from "react";
import axios from "axios";
import { TextField, Button, Grid, Typography, Paper } from "@mui/material";

const CreateUserForm = ({ callback }) => {
  const [AccountID, setAccountId] = useState("");
  const [Username, setUsername] = useState("");
  const [Password, setPassword] = useState("");

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post("http://localhost:3003/api/accounts", {
        AccountID,
        Username,
        Password,
      });
      console.log("User created successfully:", response.data);
      setAccountId("");
      setUsername("");
      setPassword("");
      callback();
    } catch (error) {
      setAccountId("");
      setUsername("");
      setPassword("");
      console.error("Error creating user:", error);
    }
  };

  return (
    <Grid container justifyContent="center">
      <Grid item xs={12} sm={8} md={6} lg={4}>
        <Paper elevation={3} sx={{ padding: 2 }}>
          <Typography variant="h5" align="center" gutterBottom>
            Create New User
          </Typography>
          <form onSubmit={handleSubmit}>
            <TextField
              label="Account ID"
              variant="outlined"
              fullWidth
              margin="normal"
              value={AccountID}
              onChange={(e) => setAccountId(e.target.value)}
              required
            />
            <TextField
              label="Username"
              variant="outlined"
              fullWidth
              margin="normal"
              value={Username}
              onChange={(e) => setUsername(e.target.value)}
              required
            />
            <TextField
              label="Password"
              type="password"
              variant="outlined"
              fullWidth
              margin="normal"
              value={Password}
              onChange={(e) => setPassword(e.target.value)}
              required
            />
            <Button
              type="submit"
              variant="contained"
              color="primary"
              fullWidth
              sx={{ marginTop: 2 }}
            >
              Create User
            </Button>
          </form>
        </Paper>
      </Grid>
    </Grid>
  );
};

export default CreateUserForm;
