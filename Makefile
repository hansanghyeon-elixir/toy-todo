# Makefile

# mix 명령어에 전달된 모든 인자를 받아서 실행하는 타겟
mix:
	@export $(shell grep -v '^#' .env | xargs); mix $(filter-out $@,$(MAKECMDGOALS))

%:
	@: