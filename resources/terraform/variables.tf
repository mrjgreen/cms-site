# The region to deploy the resources
variable "region" {
    default = "eu-west-1"
}

# This needs to be different for every deployment within a region
variable "application" {
    default = "cms-site"
}

# A link to this repo - will be added as a tag on all resources
variable "provisionersrc" {
    default = "github.com/mrjgreen/cms-site"
}

# The owner - will be added as a tag on all resources
variable "owner" {
    default = "Joe Green"
}

# Set up a key pair in AWS and add the name here
variable "domain" {
    default = "joeg.uk"
}
