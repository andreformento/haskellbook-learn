open:
	@docker run -v $(pwd)/:/app:ro -w /app --rm -it haskell:8
