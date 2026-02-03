# Pheno Knowledge Base Expanded

This is an expanded version of the Pheno.AI Knowledge Base, independent from the original `pheno_knowledge_base`.

## How to build this site

1. Ensure [quarto](https://quarto.org/docs/get-started/) is installed.
2. Install the JupyterLab extension for Quarto (if you need to render Jupyter Notebooks):

```bash
python3 -m pip install jupyterlab-quarto
```

3. Navigate to this folder:
```bash
cd pheno_knowledge_base_expanded
```

4. Run `quarto render` to build the docs. The output will be in `../docs-expanded/`
5. Run `quarto preview` to preview the docs before publishing.

## Structure

- `_quarto.yml` - Main configuration file
- `index.qmd` - Homepage
- `about.qmd` - About page
- `styles.css` - Custom CSS styles

## Output

The rendered site will be output to `../docs-expanded/` (separate from the original site which outputs to `../docs/`).

## Customization

You can:
- Add new pages by creating `.qmd` or `.md` files
- Update `_quarto.yml` to add pages to navigation
- Copy content from the original `pheno_knowledge_base` folder as needed
- Add datasets, images, and other assets

