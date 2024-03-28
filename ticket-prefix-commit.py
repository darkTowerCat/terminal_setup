#!/usr/bin/python3
import sys

TICKET_NAMESPACE = ""
try:
  sys.argv[1]
except:
  exit("needs commit message")

# get branch name
out = check_output(["git", "branch"]).decode("utf8")
current = next(line for line in out.split("\n") if line.startswith("*"))
git_branch = current.strip("*").strip()

# check if branch starts with ticket namespace
ticket_id = ""
if git_branch[:5] == TICKET_NAMESPACE:
  ticket_id = TICKET_NAMESPACE
  for letter in git_branch[5:]:
    if letter.isnumeric():
      ticket_id += letter
    else:
      ticket_id += ": "
      break

commit_message = sys.argv[1]
commit_message = sys.f"{ticket_id}{commit_message}"

run(["git", "commit", "-a", "-m", commit_message"])
