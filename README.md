# [Fakebook](https://fm-fakebook.herokuapp.com/)

A social network clone built with Ruby on Rails. View it on [Heroku](https://fm-fakebook.herokuapp.com/).

Explore the app by logging in with one of theprepopulated accounts, or start from scratch with a blank guest account.

**Prepopulated account logins:**

```
email: jeanclaude@vandamne.com

password: kickboxer
```

```
email: chuck@norris.com

password: deltaforce
```

## Features

### Profile Information


### Finding and Adding Friends


### Posting and Commenting


### Photos

com/blackwright/tracebook/blob/master/screenshots/photos.jpg?raw=true)


### Technical Notes

- Postgresql database seeded with Faker gem.
- Posts, comments, and likes processed through AJAX request.
- Utilizes flash notices from native Rails and AJAX.
- Image attachments with Carrierwave gem, hosted on Amazon S3.
- User search handled through SQL query.
- SASS styling with Bootstrap components.
