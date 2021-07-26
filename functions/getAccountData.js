const { createClient } = require("@astrajs/collections");
const { ContactsOutlined } = require("@material-ui/icons");

exports.handler = async function(event,context) {

  const userid = event.queryStringParameters.userid;

  // create an {astra_db} client
  const astraClient = await createClient({
    astraDatabaseId: process.env.ASTRA_DB_ID,
    astraDatabaseRegion: process.env.ASTRA_DB_REGION,
    applicationToken: process.env.ASTRA_DB_APPLICATION_TOKEN,
  });

  const basePath = `/api/rest/v2/keyspaces/${process.env.ASTRA_DB_KEYSPACE}/`

  try{
    const {accounts,status} = await astraClient.get(`{basePath}/accounts/${userid}`);
    return {
      statusCode: 200,
      body: JSON.stringify(accounts),
    };
  } catch(e) {
    console.error(e);
    return {
      statusCode: 500,
      body: JSON.stringify(e),
    }
  }

  
}