class CardItem {
  CardItem(this.value);
  final String value;
  bool isSelected = false;
  setSelected(bool value) => isSelected = value;
}
