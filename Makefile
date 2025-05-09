.PHONY: sync
sync:
	venv\Scripts\python.exe -m pip sync

.PHONY: install-pre-commit
install-pre-commit:
	venv\Scripts\python.exe -m pre-commit uninstall && venv\Scripts\python.exe -m pre-commit install

.PHONY: lint
lint:
	venv\Scripts\python.exe -m pre-commit run --all-files

.PHONY: tailwind
tailwind:
	venv\Scripts\python.exe web\manage.py tailwind watch

.PHONY: migrations
migrations:
	venv\Scripts\python.exe web\manage.py makemigrations

.PHONE: migrate
migrate:
	venv\Scripts\python.exe web\manage.py migrate

.PHONY: runserver
runserver:
	venv\Scripts\python.exe web\manage.py runserver

.PHONY: run
run:
	venv\Scripts\python.exe web\manage.py tailwind runserver

.PHONY: superuser
superuser:
	venv\Scripts\python.exe web\manage.py createsuperuser

.PHONY: test
test:
	venv\Scripts\python.exe -m pytest -v -rs -n auto

.PHONY: update
update: sync migrate install-pre-commit;


.PHONY: kubeconfig
kubeconfig:
	export KUBECONFIG=/c/Users/user/Downloads/django-k8-program-kubeconfig.yaml

.PHONY: kube-win
kube-win:
	$Env:KUBECONFIG="C:\Users\user\Downloads\django-k8-program-kubeconfig.yaml"

.PHONY: commit
commit:
	git status
	@read -p "Enter commit message: " msg; \
	git add .; \
	git commit -m "$$msg"; \
	git push