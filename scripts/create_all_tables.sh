#!/bin/bash
for t in user userProfile guest host propertyType address property room amenity propertyAmenity photo bookingStatus booking cancellation availability paymentMethod payment pricing review message wishlist; do
  sqlite3 data_mart.db < "sql/create/$t.sql" && echo "done! $t" || exit 1
done
