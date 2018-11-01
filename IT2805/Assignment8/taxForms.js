const taxForms = [
  {
    realName: "Bruce Wayne",
    income: 750000,
    wealth: 300000
  },
  {
    realName: "John Blake",
    income: 440000,
    wealth: 832000
  },
  {
    realName: "Selina Kyle",
    income: 640000,
    wealth: 432000
  }
];


function getNamesWithIncomeAbove500k()
{
  var newTaxForms = [];
  for (let i = 0; i < taxForms.length; i++)
  {
    if (taxForms[i].income > 500000)
    {
      newTaxForms.push(taxForms[i].realName);
    }
  }
  return newTaxForms;
}

