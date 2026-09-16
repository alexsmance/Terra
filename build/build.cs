var source = args[0];
var output = args[1];

// var content = File.ReadAllText(source);
// content.Replace();
// var content = await reader.ReadToEndAsync();

// Console.WriteLine(" ");
// using var outputStream = File.Stream

using var inputStream = new StreamReader("../assets/terra.css");
using var outputStream = new StreamWriter("../dist/terra.min.css");

string line;
while ((line = input.ReadLine()) != null)
{
  Regex.Replace(line, @"\s+", string.Empty);
  // line = line.Replace(string, string.Empty);
  line = line.Replace(Environment.NewLine, string.Empty);
}
