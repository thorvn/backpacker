# Backpacker

A website to connect people love backpacking.
You can post a trip, introduce somewhere you want to go and find someone want to go with you. Or find help from someone

## Teachnogogy

- Ruby On Rails (Backend)
- ReactJS (frontend)
- Postgresql (database)
- Redis to cache session and query

## Contributing

1. Fork it! (maybe and start it ^^)
2. Create your feature branch: git checkout -b my-new-feature
3. Commit your changes: git commit -am 'Add some feature'
4. Push to the branch: git push origin my-new-feature
5. Submit a pull request to develop branch :D

## How to run

Make sure you install `yarn` and install all package dependent. You will need Bundler, Ruby, and PostgreSQL.

```bash
yarn install
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

Run
```bash
bin/server
```

Open your browser: [localhost:3000](http://localhost:3000/)
