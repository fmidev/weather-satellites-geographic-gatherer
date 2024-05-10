# Geographic gatherer container recipe for OpenShift

This recipe is automatically built on new version tags, and the image
is available from
https://quay.io/repository/fmi/weather-satellites-geographic-gatherer

Geographic gatherer is a part of Pytroll pytroll-collectors
package. It is used to collect metadata of segmented polar satellite
data for a geographical area and then publishing that collection to be
processed by Trollflow2.

## Configuration

To use the container, mount configuration files to `/config` directory
and place the configuration for `geographic-gatherer.py` to
`/config/geographic_gatherer.ini`. In addition environment variables
are read from `/config/env-variables` and the file is thus
required.

The strictly required variables are:

* `TLES` which points to the available orbital elements
* `ADDRESSES` which is a comma s eparated list of message publishers to connect to.
* `PUBLISH_PORT` - the port number for the publishet Posttroll messages

Note that `nameserver` usage is disabled and direct port connections
are used instead.

For details on segment gatherer configuration refer to
https://github.com/pytroll/pytroll-collectors
