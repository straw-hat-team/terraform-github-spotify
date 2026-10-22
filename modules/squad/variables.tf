variable "squad_enable" {
  type        = bool
  default     = true
  description = "Enable or Disable the squad team."
}

variable "squad_members" {
  type        = list(string)
  default     = []
  description = "This list of members of the squad team."
}

variable "squad_maintainers" {
  type        = list(string)
  default     = []
  description = "Members of the squad team with the maintainer role. GitHub reports organization owners as maintainers of every team they are in, so an owner belongs here rather than in squad_members."

  validation {
    condition     = length(setintersection(var.squad_maintainers, var.squad_members)) == 0
    error_message = "A user cannot be in both squad_members and squad_maintainers."
  }
}

variable "squad_name" {
  type        = string
  description = "The squad team name."
}

variable "squad_tribe" {
  type = object({
    id   = number
    slug = string
  })
  description = "The tribe the squad team belongs to."
}
