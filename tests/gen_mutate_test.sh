#!/bin/sh

flatc -c --strict-json --gen-mutable --scoped-enums mutate_test.fbs
