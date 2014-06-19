using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;
using System.Collections.Generic;

namespace Tower
{
    class Program
    {
        public static int[] Rod0;
        public static int[] Rod1;
        public static int[] Rod2;

        static void Main(string[] args)
        {
            int numberOfPieces;
            int.TryParse(args.First(), out numberOfPieces);
            ShowTowers(numberOfPieces);
        }


        public int[] OrderPieces(int numberOfPieces)
        {
            var pieceArray = new int[numberOfPieces];
            for (var x = 0; x < numberOfPieces; x++)
                pieceArray[x] = numberOfPieces - x;
            return pieceArray;
        }

        public bool ValidEvenOrOdd(int a, int b)
        {
            if (a == 0)                     return false;
            if (a % 2 == 0 && b % 2 == 0)   return false;
            if (a % 2 != 0 && b % 2 != 0)   return false;
            return true;
        }

        public string MovePiece(int source, int destination, string thisMove)
        {
            var sourcePiece = 0;
            if (source == 0)
            {
                sourcePiece = Rod0.Last();
                var tmp = Rod0.AsEnumerable();
                Rod0 = tmp.Take(Rod0.Length - 1).ToArray(); 
            }
            if (source == 1)
            {
                sourcePiece = Rod1.Last();
                var tmp = Rod1.AsEnumerable();
                Rod1 = tmp.Take(Rod1.Length - 1).ToArray(); 
            }
            if (source == 2)
            {
                sourcePiece = Rod2.Last();
                var tmp = Rod2.AsEnumerable();
                Rod2 = tmp.Take(Rod2.Length - 1).ToArray(); 
            }
            if (destination == 0)   Rod0 = Rod0.AddItemToArray(sourcePiece);
            if (destination == 1)   Rod1 = Rod1.AddItemToArray(sourcePiece);
            if (destination == 2)   Rod2 = Rod2.AddItemToArray(sourcePiece);
            return thisMove;
        }

        public static void ShowTowers(int loopCount)
        {
            if (Rod0 == null)   Console.WriteLine("Rod0 is null");
            else                Console.WriteLine(Rod0.ToString());
            if (Rod1 == null)   Console.WriteLine("Rod1 is null");
            else                Console.WriteLine(Rod1.ToString());
            if (Rod2 == null)   Console.WriteLine("Rod2 is null");
            else                Console.WriteLine(Rod2.ToString());
            Console.WriteLine("loop " + loopCount.ToString() + "-------------");
        }
    }



    // found this online, needed to add an item to int[]
    public static class Extensions
    {
        public static T[] AddItemToArray<T>(this T[] original, T itemToAdd)
        {
            var finalArray = new T[original.Length + 1];
            for (int i = 0; i < original.Length; i++)
                finalArray[i] = original[i];
            
            finalArray[finalArray.Length - 1] = itemToAdd;
            return finalArray;
        }
    }
}
