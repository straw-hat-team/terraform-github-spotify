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

variable "tribe_name" {
  type        = string
  description = "The tribe team name."
}
