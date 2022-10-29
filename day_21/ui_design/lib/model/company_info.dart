class CompanyInfo {
  String logoUrl;
  String company;
  String title;
  String location;
  String fullTime;
  List<String> req;
  CompanyInfo(this.logoUrl, this.company, this.title, this.location,
      this.fullTime, this.req);
  static List<CompanyInfo> generatedCompanyList() {
    return [
      CompanyInfo("images/google.png", "Google", "Product Design",
          "417,Marian Plaza,Texas,United States", "fullTime", [
        'Creative with an Eye for shape and color\n',
        'Understand Different Material and Production\nMethod'
            'Creative with an Eye for shape and color\n',
        'Understand Different Material and Production\nMethod'
            'Creative with an Eye for shape and color\n',
        'Understand Different Material and Production\nMethod'
      ]),
    ];
  }
}
