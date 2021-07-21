const { createClient } = require("@astrajs/rest");
const { ContactsOutlined } = require("@material-ui/icons");

exports.handler = async function(event,context) {
  const username = event.queryStringParameters.username;
  // create an {astra_db} client
  const astraClient = await createClient({
    astraDatabaseId: process.env.ASTRA_DB_ID,
    astraDatabaseRegion: process.env.ASTRA_DB_REGION,
    applicationToken: process.env.ASTRA_DB_APPLICATION_TOKEN,
  });

  const basePath = `/api/rest/v2/keyspaces/${process.env.ASTRA_DB_KEYSPACE}/users`

  try{
    const {data,status} = await astraClient.get(`${basePath}/${username}`);
    return {
      statusCode: status,
      body: JSON.stringify(data[0].account_id),
    };
  } catch(e) {
    console.error(e);
    return {
      statusCode: 500,
      body: JSON.stringify(false),
    }
  }

  
}