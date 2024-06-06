# run:
# 	@uvicorn workout_api.main:app --reload

# create-migrations:
# 	@PYTHONPATH=$PYTHONPATH:$(pwd) alembic revision --autogenerate -m $(d)

# run-migrations:
# 	@PYTHONPATH=$PYTHONPATH:$(pwd) alembic upgrade head

run:
	@uvicorn workout_api.main:app --reload

create-migrations:
	@if [ -z "$(m)" ]; then echo "Missing migration message. Use 'make create-migrations m=\"message\"'"; exit 1; fi
	@PYTHONPATH=$(PWD) alembic revision --autogenerate -m "$(m)"

run-migrations:
	@PYTHONPATH=$(PWD) alembic upgrade head
