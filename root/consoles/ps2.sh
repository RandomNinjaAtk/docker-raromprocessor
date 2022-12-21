consoleName="PlayStation 2"
consoleFolder="ps2"
consoleRomFileExt=".iso, .mdf, .nrg, .bin, .img, .dump, .gz, .cso, .chd"
raConsoleId="21"
uncompressRom="false"
compressRom="false"

# Create URL List
if [ -f templist ]; then
    rm templist
fi

# 0
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-0/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
#echo "$archiveUrl" >> templist

# A
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-A/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist

# B
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-B/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist

# C
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-C/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist

# D
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-D/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist

# E
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-E/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist

# F
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-F/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist

# G
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-G/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist

# H
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-H/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist

# I
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-I/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist

# J
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-J/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# K
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-K/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# L
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-L/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# M
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-M/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# N
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-N/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# O
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-O/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# P
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-P/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# Q
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-Q/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# R
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-R/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# S
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-S/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# T
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-T/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# U
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-U/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# V
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-V/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# W
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-W/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# X
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-X/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# Y
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-Y/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist


# Z
baseUrl="https://archive.org/download/ps2-redump-usa-chd-part-Z/"
archiveUrl="$(curl -s "$baseUrl" | grep -i "\.chd" | grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | sed 's/\///g' | sort -u | sed "s|^|$baseUrl|")"
echo "$archiveUrl" >> templist



archiveUrl=$(cat templist)
if [ -f templist ]; then
    rm templist
fi
