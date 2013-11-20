#!/bin/bash
/bin/sleep `expr $RANDOM % 1000`

/usr/bin/yum -y  update --disablerepo=*  <% @enable.each do |val| -%> --enablerepo=<%=val -%> <% end -%>  <% @exclude.each do |val1| -%> --exclude=<%=val1 -%> <% end -%>
