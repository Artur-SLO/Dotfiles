function venv --wraps='python -m venv .venv && source .venv/bin/activate.fish' --description 'alias venv=python -m venv .venv && source .venv/bin/activate.fish'
    python -m venv .venv && source .venv/bin/activate.fish $argv

    echo (set_color green)"Venv environment activated!"(set_color normal)
end
