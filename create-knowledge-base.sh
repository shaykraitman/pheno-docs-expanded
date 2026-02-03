#!/bin/bash

# Create a combined knowledge base from all website content

OUTPUT="pheno_knowledge_base_expanded/knowledge-base-context.txt"

echo "Creating knowledge base from website content..."
echo "" > "$OUTPUT"

echo "=== HUMAN PHENOTYPE PROJECT DOCUMENTATION ===" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# Add main documentation files
echo "## ABOUT THE PROJECT" >> "$OUTPUT"
cat pheno_knowledge_base_expanded/about.qmd 2>/dev/null >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "## PARTICIPANT JOURNEY" >> "$OUTPUT"
cat pheno_knowledge_base_expanded/participant_journey.md 2>/dev/null >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "## FAQ" >> "$OUTPUT"
cat pheno_knowledge_base_expanded/faq.md 2>/dev/null >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "## DATA FORMAT" >> "$OUTPUT"
cat pheno_knowledge_base_expanded/data_format.qmd 2>/dev/null >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "## DATASETS DESCRIPTION" >> "$OUTPUT"
cat pheno_knowledge_base_expanded/datasets_description.md 2>/dev/null >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "## PLATFORM TUTORIAL" >> "$OUTPUT"
cat pheno_knowledge_base_expanded/platform_tutorial.md 2>/dev/null >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "## PHENO UTILS" >> "$OUTPUT"
cat pheno_knowledge_base_expanded/pheno_utils.md 2>/dev/null >> "$OUTPUT"
echo "" >> "$OUTPUT"

# Note: If you need detailed dataset markdown files, 
# you can read them from the original repo at:
# /home/ec2-user/workspace/pheno-docs/markdowns/

echo "✅ Knowledge base created: $OUTPUT"
echo "Size: $(du -h $OUTPUT | cut -f1)"









