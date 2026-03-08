import warnings
warnings.filterwarnings("ignore")

from langchain.prompts import PromptTemplate
from langchain_ollama import ChatOllama

template = PromptTemplate.from_template(
    "convert 1 {target_unit} to {source_unit} currency"
)

ollama = ChatOllama(model="phi4-mini:3.8b",
                    temperature=0)

response = ollama.invoke(
    template.format(target_unit="USD", source_unit="BDT")
)
print(response.content)
