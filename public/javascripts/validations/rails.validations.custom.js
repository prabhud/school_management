// The validator variable is a JSON Object
// The selector variable is a jQuery Object
clientSideValidations.validators.local['email_format'] = function(element, options) {
  // Your validator code goes in here
  if (!/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i.test(element.val())) {
    // When the value fails to pass validation you need to return the error message.
    // It can be derived from validator.message
    return options.message;
  }
}
