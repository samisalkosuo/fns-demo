function main({name}) {

  /*
  Documentation:
  https://cloud.ibm.com/docs/openwhisk?topic=cloud-functions-getting-started
  */

  var msg = 'Hello World!';
  if (name) {
    msg = `Hello, ${name}!`
  }

  var date = new Date(); 
  var timestamp = date.toISOString();

  return {body: `<html><body><h3>${msg}</h3><p>Current time: ${timestamp}</p></body></html>`}
}
   