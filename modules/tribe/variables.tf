variable "tribe_enable" {
  type        = bool
  default     = true
  description = "Enable or Disable the tribe team."
}

variable "tribe_members" {
  type        = list(string)
  default     = []
  description = "This list of members of the tribe team."
}

variable "tribe_maintainers" {
  type        = list(string)
  default     = []
  description = "Members of the tribe team with the maintainer role. GitHub reports organization owners as maintainers of every team they are in, so an owner belongs here rather than in tribe_members."

  validation {
    condition     = length(setintersection(var.tribe_maintainers, var.tribe_members)) == 0
    error_message = "A user cannot be in both tribe_members and tribe_maintainers."
  }
}

variable "tribe_name" {
  type        = string
  description = "The tribe team name."
}
