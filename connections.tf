provider "google"{
    credentials="${file("../account.json")}"
    project="demoproject-d8294"
    region="asia-south1-a"
}

provider "aws"{
    region="ap-south-1"
}

provider "azurerm"{
    subcription_id="0"
    client_id="1"
    client_secret="2"
    tenant_id="3"
}