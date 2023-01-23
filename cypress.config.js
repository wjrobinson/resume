const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    supportFile: false,
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
    baseUrl: "https://pplknkln88.execute-api.ca-central-1.amazonaws.com"
  },
});