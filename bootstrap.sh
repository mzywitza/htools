if [ -e ./.venv ]
then 
    rm -rf ./.venv
fi
python3.13 -m venv .venv
source ./.venv/bin/activate
pip install --upgrade pip
if [ -e requirements.txt ]
then
    pip install -r requirements.txt
fi
