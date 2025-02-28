local xml_fragment = [===[
<![CDATA[
  Hello world
]]>
]===]
print(xml_fragment)

xml_fragment = "<![CDATA[\n\z
\032\032Hello world\n\z
]]>"
print(xml_fragment)
