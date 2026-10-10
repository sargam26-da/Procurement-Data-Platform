import xml.etree.ElementTree as ET, copy, time, random, pathlib

SRC = r"C:\Users\sarga\Desktop\Procurement-Data-Platform\silver\Cleansing\invoices_clean.xml"                      # your existing source XML
OUT = pathlib.Path(r"C:\Users\sarga\Desktop\Procurement-Data-Platform\landing\invoices\incoming")

root = ET.parse(SRC).getroot()
records = list(root)
n = 100000                                            # new IDs start above existing ones

while True:
    new_root = ET.Element(root.tag)
    for r in random.sample(records, 5):
        r2 = copy.deepcopy(r)
        n += 1
        r2.find(".//Invoice_ID").text = f"INV{n:06d}"
        new_root.append(r2)
    tmp = OUT / f"inv_{int(time.time())}.tmp"
    ET.ElementTree(new_root).write(tmp, encoding="utf-8", xml_declaration=True)
    tmp.rename(tmp.with_suffix(".xml"))               # rename last, so Pentaho never reads a half-written file
    print("dropped", tmp.name)
    time.sleep(20)