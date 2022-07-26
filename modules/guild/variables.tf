variable "guild_enable" {
  type        = bool
  default     = true
  description = "Enable or Disable the guild team."
}

variable "guild_members" {
  type        = list(string)
  default     = []
  description = "This list of members of the guild team."
}

variable "guild_name" {
  type        = string
  description = "The guild team name."
}
