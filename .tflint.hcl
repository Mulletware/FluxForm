#########################################################
#                                        
#    TTTTT   FFFFFF   L         IIIII  N   N TTTTTTTT 
#      T     F        L           I    NN  N    T
#      T     FFFFF    L           I    N N N    T
#      T     F        L           I    N  NN    T
#      T     F        LLLLL     IIIII  N   N    T
#
##########################################################

######################################################### 
# Configure Terraform
######################################################### 
plugin "terraform" {
  enabled = true
  preset  = "recommended"
}

######################################################### 
# Configure Google Ruleset
######################################################### 
# Current enabled rules can be found here:
# https://github.com/terraform-linters/tflint-ruleset-google/blob/master/docs/rules/README.md
######################################################### 
plugin "google" {
    enabled = true
    version = "0.30.0"
    source  = "github.com/terraform-linters/tflint-ruleset-google"
}

######################################################### 
# Configure OPA (Open Policy Agent)
######################################################### 
# Ruleset plugin based on Rego (https://www.openpolicyagent.org/docs/latest/policy-language/#what-is-rego)
######################################################### 
plugin "opa" {
  enabled = true
  version = "0.7.0"
  source  = "github.com/terraform-linters/tflint-ruleset-opa"
}
