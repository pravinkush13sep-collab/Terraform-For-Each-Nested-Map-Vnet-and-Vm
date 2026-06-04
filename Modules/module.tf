module "Resource-Groups" {
  source = "../Resource-Groups"
}

module "Storage-Accounts" {
  source     = "../Storage-Accounts"
  depends_on = [module.Resource-Groups]
}

module "Virtual-Networks" {
  source     = "../Virtual-Networks"
  depends_on = [module.Resource-Groups]
}

module "SubNets" {
  source     = "../SubNets"
  depends_on = [module.Virtual-Networks]
}

module "Network-Interfaces" {
  source     = "../Network-Interfaces"
  subnet_ids = module.SubNets.subnet_ids

  depends_on = [module.SubNets]
}

module "Nic-Information" {
  source     = "../Nic-Information"
  depends_on = [module.SubNets]
}

module "Virtual-Machines" {
  source     = "../Virtual-Machines"
  depends_on = [module.Nic-Information]
}