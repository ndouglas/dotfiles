#!/usr/bin/python

class FilterModule(object):
  def filters(self):
    return {
      'transmission_traefik_labels': self.transmission_traefik_labels,
    }

  def transmission_traefik_labels(self, service_name, service_fqdn, domain_fqdn):
    routers_base = 'traefik.http.routers.' + service_name
    services_base = 'traefik.http.services.' + service_name
    host_rule = 'Host(`' + service_fqdn + '`, `' + domain_fqdn + '`)'
    result = {
      'traefik.enable': 'true',
      routers_base + '.rule': host_rule,
      routers_base + '.entrypoints': 'websecure',
      routers_base + '.tls': 'true',
      routers_base + '.tls.certresolver': 'hellholt',
      routers_base + '.service': service_name,
      services_base + '.loadbalancer.server.port': '9091',
      services_base + '.loadbalancer.server.scheme': 'http',
    }
    return result
