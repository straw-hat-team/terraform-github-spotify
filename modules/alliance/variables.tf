variable "alliance_enable" {
  type        = bool
  default     = true
  description = "Enable or Disable the alliance team."
}

variable "alliance_members" {
  type        = list(string)
  default     = []
  description = "This list of members of the alliance team."
}

variable "alliance_name" {
  type        = string
  description = "The alliance team name."
}
