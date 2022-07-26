variable "trio_enable" {
  type        = bool
  default     = true
  description = "Enable or Disable the trio team."
}

variable "trio_members" {
  type        = list(string)
  default     = []
  description = "This list of members of the trio team."
}

variable "trio_name" {
  type        = string
  description = "The trio team name."
}
