sgs = ServiceGroup.where(entity_type: 'ZoneToZoneFlatFares', entity_id: 0).where("group_name like 'chicago%'")
sgs.map(&:group_name).uniq
sgs.last.groupable
ServiceGroup.where(entity_type: 'ZoneToZoneFlatFares', entity_id: 0, group_name: 'chicago').map(&:groupable).map(&:code)