using System;
using System.Diagnostics;

namespace Perl_Test
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            var result = CallPerlScript();
            Console.WriteLine("The result is: " + result);
            Console.WriteLine("Press any key to stop...");
            Console.ReadKey();
        }

        private static string CallPerlScript()
        {
            ProcessStartInfo perlStartInfo = new ProcessStartInfo(@"C:\Users\lauri\Strawberry\perl\bin\perl.exe");
            perlStartInfo.Arguments = @"C:\Users\lauri\Repos\PerlTest\PerlTest\perlTest.pl" ;
            perlStartInfo.UseShellExecute = false;
            perlStartInfo.RedirectStandardOutput = true;
            perlStartInfo.RedirectStandardError = true;
            perlStartInfo.CreateNoWindow = false;

            Process perl = new Process();
            perl.StartInfo = perlStartInfo;
            perl.Start();
            perl.WaitForExit();
            string output = perl.StandardOutput.ReadToEnd();
            return output;
        }
    }
}
