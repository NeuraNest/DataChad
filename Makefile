.PHONEY: build run all run_local

build:
	@echo "Building..."
	@docker build -t datachad .

run:
	@echo "Running..."
	@docker run -it --name datachad datachad

run_local:
	@echo "Running..."
	@pip install -r requirements.txt -q
	@streamlit run app.py

all: build run
