docker run -t -v "${PWD}:/data" osrm/osrm-backend osrm-extract -p /opt/foot.lua /data/dhct.pbf
docker run -t -v "${PWD}:/data" osrm/osrm-backend osrm-partition /data/dhct.osrm
docker run -t -v "${PWD}:/data" osrm/osrm-backend osrm-customize /data/dhct.osrm
docker run -t -i -p 5000:5000 -v "${PWD}:/data" osrm/osrm-backend osrm-routed --algorithm mld /data/dhct.osrm
