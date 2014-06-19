using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;
using Tower;

namespace Xtests
{
    public class MyTests
    {
        [Fact]
        public void TestOrder()
        {
            var myTower = new Tower.Program();
            var testArray = myTower.OrderPieces(5);
            // Todo: find way to test whole array
            Assert.Equal(testArray[0], 5);
        }

        [Fact]
        public void ValidMove()
        {
            var myTower = new Tower.Program();
            var result = myTower.ValidEvenOrOdd(1, 2);
            Assert.Equal(result, true);
        }

        [Fact]
        public void InValidMove()
        {
            var myTower = new Tower.Program();
            var result = myTower.ValidEvenOrOdd(2, 2);
            Assert.Equal(result, false);
        }

        [Fact]
        public void MovePiece0To1()
        {
            var myTower = new Tower.Program();
            Tower.Program.Rod0 = new int[] { 4, 2, 3 };
            Tower.Program.Rod1 = new int[] { 5, 6, 2 };
            var move = myTower.MovePiece(0, 1, "");
            Assert.Equal(Tower.Program.Rod0.Last(), 2);
            Assert.Equal(Tower.Program.Rod1.Last(), 3);
            //Console.WriteLine(Tower.Program.Rod0.ToString());


        }
    }

}
    
