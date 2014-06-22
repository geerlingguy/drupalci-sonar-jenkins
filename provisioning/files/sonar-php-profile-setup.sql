# Finish PHP SonarQube profile setup after new SonarQube restarts.
#
# This must be run AFTER SonarQube has been restarted (after the new PHP rules
# are added, so rules are in place in the proper tables.
#
# Command: mysql -u root -ppass sonar < sonar-php-profile-setup.sql

# Add Drupal rules to active rule set (3 = Drupal profile).
INSERT INTO active_rules
SELECT NULL, 3, id, 2, NULL
FROM rules
WHERE language = 'php' AND plugin_rule_key REGEXP 'Drupal';

# Make the Drupal 7 Rules the default profile for PHP projects.
UPDATE properties SET text_value = 'Drupal' WHERE prop_key = 'sonar.profile.php';
