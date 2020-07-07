variable "github_token" {
  type        = string
  description = "The GitHub API token."
}

variable "github_organization" {
  type        = string
  description = "The GitHub Organization slug name."
}

variable "chapter_enable" {
  type        = bool
  default     = true
  description = "Enable or Disable the chapter team."
}

variable "chapter_members" {
  type        = list(string)
  default     = []
  description = "This list of members of the chapter team."
}

variable "chapter_name" {
  type        = string
  description = "The chapter team name."
}

variable "chapter_tribe" {
  type = object({
    id   = number
    slug = string
  })
  description = "The tribe the chapter team belongs to."
}
