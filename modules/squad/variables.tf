variable "github_token" {
  type        = string
  description = "The GitHub API token."
}

variable "github_organization" {
  type        = string
  description = "The GitHub Organization slug name."
}

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
