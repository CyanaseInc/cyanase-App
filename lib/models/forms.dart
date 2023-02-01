// List<Country> countries = [
//   Country(
//     name: "Choose",
//     isocode: "none",
//   ),
//   Country(
//     name: "Uganda",
//     isocode: "UG",
//   ),
//   Country(
//     name: "Kenya",
//     isocode: "KE",
//   ),
//   Country(
//     name: "Tanzania",
//     isocode: "TZ",
//   ),
// ];

class SelectItem {
  final String name;
  final dynamic value;
  final bool isDefault;
  SelectItem({
    required this.name,
    this.value,
    this.isDefault = false,
  });
}
