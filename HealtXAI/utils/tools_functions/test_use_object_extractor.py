"""Simple print-based test for the use object extractor."""

from use_object_extractor import extract_use_object


TEST_ACTIONS = [
    "sweep kitchen floor",
    "stir soup in a bowl",
    "mix sugar in a cup with a spoon",
    "cut bread with a knife",
    "pour water into a glass",
]


def main():
    print("Test estrazione oggetto per azioni di tipo use object")
    print()

    for action in TEST_ACTIONS:
        extracted_object = extract_use_object(action)
        print(f"frase   : {action}")
        print(f"oggetto : {extracted_object or '[nessun oggetto trovato]'}")
        print("-" * 50)


if __name__ == "__main__":
    main()
