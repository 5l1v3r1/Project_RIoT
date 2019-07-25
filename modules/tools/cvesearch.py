#!/usr/bin/env python3

# Thank you for this module highmeh
import argparse
import os.path
import untangle
from requests import get


local_cve_db = "cve_db.xml"
bold_text = "\033[1m"
normal_text = "\033[0m"

def downloaddb():
	print("\033[93m=>\033[0m Downloading cve_db.xml. This may take a few minutes.")
	with open(local_cve_db, 'wb') as file:
		response = get('https://cve.mitre.org/data/downloads/allitems.xml')
		file.write(response.content)
		print("[+] Complete!")
		file.close()

def cvenumber_search(cvenumber):
	print("\033[93m=>\033[0m Searching for \'{0}\', this may take several minutes please be patient...".format(cvenumber))
	obj = untangle.parse(local_cve_db)

	o = untangle.parse(local_cve_db)
	for item in o.cve.item:
		name = item['name']
		desc = item.desc.cdata
		reference = item.refs

		if cvenumber in name.lower():
			print(bold_text + "\n\033[96m[\033[91m+\033[96m]\033[0m Match found:\n----------------")
			print(bold_text + "\033[96m[\033[91m+\033[96m]\033[0m CVE ID: " + normal_text + "{0}".format(name))
			print(bold_text + "\033[96m[\033[91m+\033[96m]\033[0m CVE Description: " + normal_text + "{0}".format(desc))
			try:
				for url in reference.ref:
					print(bold_text + "\033[96m[\033[91m+\033[96m]\033[0m Reference: " + normal_text + "{0}".format(url.cdata))
			except:
				print("\033[96m[\033[91m-\033[96m]\033[0m No references available for {0}".format(name))


def keyword_search(searchtext):
	print("\033[93m=>\033[0m Searching for \'{0}\', this may take several minutes please be patient...".format(searchtext))
	obj = untangle.parse(local_cve_db)

	o = untangle.parse(local_cve_db)
	for item in o.cve.item:
		name = item['name']
		desc = item.desc.cdata
		reference = item.refs

		if searchtext in desc.lower():
			print(bold_text + "\n\033[96m[\033[91m+\033[96m]\033[0m Match found:\n----------------")
			print(bold_text + "\033[96m[\033[91m+\033[96m]\033[0m CVE ID: " + normal_text + "{0}".format(name))
			print(bold_text + "\033[96m[\033[91m+\033[96m]\033[0m CVE Description: " + normal_text + "{0}".format(desc))
			try:
				for url in reference.ref:
					print(bold_text + "\033[96m[\033[91m+\033[96m]\033[0m Reference: " + normal_text + "{0}".format(url.cdata))
			except:
				print(bold_text + "\033[96m[\033[91m-\033[96m]\033[0m No references available for " + normal_text + "{0}".format(name))


progdesc = "cvesearch allows for offline searching of CVEs."
parser = argparse.ArgumentParser(description=progdesc)
parser.add_argument('-d', action='store_true', default='False', 
                    help='Download the CVE Database.')
parser.add_argument('-c', metavar='CVE Number', action='store', 
                    help='Search by CVE Number')
parser.add_argument('-s', metavar='Search Term', action='store', 
					help='Search by CVE keyword')
args = parser.parse_args()

if args.d is True:
	downloaddb()

if args.c:
	cvenumber = args.c
	if os.path.isfile(local_cve_db):
		cvenumber_search(cvenumber.lower())
	if not os.path.isfile(local_cve_db):
		print("[-] CVE Database is missing. Downloading...")
		downloaddb()

elif args.s:
	searchtext = args.s.lower()
	if os.path.isfile(local_cve_db):
		keyword_search(searchtext)
	if not os.path.isfile(local_cve_db):
		print("[-] CVE Database is missing. Downloading...")
		downloaddb()

else:
	parser.print_help()