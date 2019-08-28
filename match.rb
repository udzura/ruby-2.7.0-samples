require 'json'
data = JSON.parse (<<JSON), symbolize_names: true
{
  "events" : {
    "date": "2019-08-28",
    "title": "devsumi",
    "tags": ["dev", "ruby"]
  }
}
JSON

case data
in {events: {date: "2019-08-28", title: title, tags: tags}}
  p title, tags
else
  p "invalid form"
end
