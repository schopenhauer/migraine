# migraine

Bash script to migrate Mongo databases to a new server with no hassle.

Official MongoDB documentation available [here](https://docs.mongodb.com/manual/installation/#mongodb-community-edition) and [here](https://docs.mongodb.com/manual/tutorial/backup-and-restore-tools/).

## Prerequisites

* Source and destination MongoDB server instances
* Admin rights to both MongoDB servers
* MongoDB with `mongodump` and `mongorestore` tools installed

## Usage

### Step 1: Dump databases on old server

First, edit `databases.txt` file to reflect the list of databases to be dumped.

```
nano databases.txt
chmod +x dump.sh && dump.sh
```

### Step 2: Transfer files to new server

Second, download the files from old server using the `scp` command.

```
scp -r <server>:<source_folder> <destination_folder>
scp -r x.x.x.x:/home/mongo/dump ./
```

### Step 3: Restore database on new server

Third, make sure the files have been downloaded to the `dump` folder and launch the restore procedure on the new server.

```
chmod +x restore.sh && restore.sh
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/schopenhauer/migraine.

## License

The module is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
