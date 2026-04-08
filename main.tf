module "vpc" {
  source     = "./modules/vpc"
  vpc_config = var.vpc_config
  region     = var.region
}

module "subnet" {
  source        = "./modules/subnet"
  vpc_id        = module.vpc.vpc_id
  subnet_config = var.subnet_config
}

module "igw" {
  source = "./modules/igw"
  vpc_id = module.vpc.vpc_id
}

module "rt" {
  source          = "./modules/rt"
  vpc_id          = module.vpc.vpc_id
  igw_id          = module.igw.igw_id
  public_subnets  = module.subnet.public_subnets
  private_subnets = module.subnet.private_subnets
}
