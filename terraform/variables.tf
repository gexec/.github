variable "members" {
  default = [
    {
      name = "gexecz"
      role = "admin"
    },
    {
      name = "tboerger"
      role = "admin"
    },
    {
      name = "LukasHirt"
      role = "member"
    },
  ]
}

variable "teams" {
  default = [
    {
      name       = "admins"
      privacy    = "closed"
      permission = "admin"
      members = [
        {
          name = "gexecz"
          role = "maintainer"
        },
        {
          name = "tboerger"
          role = "maintainer"
        },
      ]
    },
    {
      name       = "bots"
      privacy    = "closed"
      permission = "admin"
      members = [
        {
          name = "gexecz"
          role = "maintainer"
        },
      ]
    },
    {
      name       = "members"
      privacy    = "closed"
      permission = "maintain"
      members = [
        {
          name = "tboerger"
          role = "maintainer"
        },
        {
          name = "LukasHirt"
          role = "member"
        },
      ]
    },
  ]
}
