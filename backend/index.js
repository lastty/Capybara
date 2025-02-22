const express = require("express");
const cors = require("cors");

const app = express();
const PORT = 5001;

app.use(cors()); // Allows frontend to communicate with backend

// Default Route
app.get("/", (req, res) => {
    res.send("Capybara Backend is running! 🚀");
});

// New API Route
app.get("/api/data", (req, res) => {
    const sampleData = {
        message: "Welcome to the Capybara API!",
        version: "1.0",
        timestamp: new Date().toISOString(),
        data: [
            { id: 1, name: "Capybara One", type: "Friendly" },
            { id: 2, name: "Capybara Two", type: "Lazy" },
            { id: 3, name: "Capybara Three", type: "Adventurous" }
        ]
    };
    res.json(sampleData);
});

// Start the server
app.listen(PORT, () => {
    console.log(`🚀 Backend running on http://localhost:${PORT}`);
});