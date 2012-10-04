var checkRegex = module.exports = function(string, regex) {
  var containsStarMatcher = regex.charAt(1) === "*";

  var headCharactersMatch = function (a, b) {
    return a.charAt(0) === b.charAt(0);
  };

  if (regex.length <= 0) {
    if (string.length === 0) {
      return true;
    }
    else {
      return false;
    }
  }

  if (!containsStarMatcher) {
    if (headCharactersMatch(string, regex)) {
      return checkRegex(string.slice(1), regex.slice(1));
    }
    else {
      return false;
    }
  }
  else {
    if (headCharactersMatch(string, regex)) {
      return checkRegex(string.slice(1), regex) || checkRegex(string, regex.slice(2));
    }
    else {
      return checkRegex(string, regex.slice(2));
    }
  }
};
