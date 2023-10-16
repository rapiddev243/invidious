#!/bin/sh

psql youtube_remastered -c "ALTER TABLE channels DROP COLUMN subscribed"
psql youtube_remastered -c "ALTER TABLE channels ADD COLUMN subscribed timestamptz"
psql youtube_remastered -c "UPDATE channels SET subscribed = '2019-01-01 00:00:00+00'"
