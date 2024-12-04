import xml.etree.ElementTree as ET

# Parse the XML
tree = ET.parse('substack1.rss')
root = tree.getroot()

# Find the channel element
channel = root.find('channel')

# Iterate through the items and remove those with "AMA highlight" and "Podcast:" in the title
for item in channel.findall('item'):
    title = item.find('title').text
    if "AMA highlight" in title:
        channel.remove(item)
    if "Podcast:" in title:
        channel.remove(item)
    if "[Reddit Roundup]" in title:
        channel.remove(item)

# Write the updated XML back to the file
tree.write('substack1-clean.rss')
