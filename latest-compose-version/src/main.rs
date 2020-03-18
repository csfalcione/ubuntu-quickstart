use serde_json::Value;

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let url = "https://api.github.com/repos/docker/compose/releases/latest";
    let client = reqwest::blocking::Client::new();
    let res = client.get(url)
        .header(reqwest::header::USER_AGENT, "latest-compose-version")
        .send()?
        .text()?;
        
    let parsed = serde_json::from_str::<Value>(&res)?;
    let name = parsed["name"].as_str().ok_or("Unable to get 'name' property from response")?;
    println!("{}", name);
    Ok(())
}
