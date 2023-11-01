// Import necessary CAP modules
const { cds } = require("@sap/cds");
console.log("Inside CAPM Project!")
async function main() {
    try {
        // Connect to the CAP service
        await cds.connect();
        
        // Your CAP-related logic goes here
         // const result = await cds.run(SELECT.from("YourEntity"));

       //  console.log("Data from CAP service:", result);
       console.log("CDS Connected!");
    } catch (error) {
        console.error("Error:", error);
    } finally {
        // Disconnect from the CAP service
        await cds.disconnect();
        console.log("CDS DISConnected!");
    }
}

main();