import json
import os

def test_output():
    output_file = "/app/output.json"

    if not os.path.exists(output_file):
        raise Exception("output.json not found")

    with open(output_file) as f:
        data = json.load(f)

    assert data[0]["name"] == "AMAN"
    assert data[0]["age_group"] == "adult"

    print("All tests passed")

if __name__ == "__main__":
    test_output()
