using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Runtime.InteropServices;
using System.Security.Permissions;

namespace peace
{
    class Program
    {
        public static object Dispatcher { get; private set; }

        [DllImport("user32.dll", EntryPoint = "keybd_event")]

        public static extern void keybd_event(

               byte bVk,    //虚拟键值

               byte bScan,// 一般为0

               int dwFlags,  //这里是整数类型  0 为按下，2为释放

               int dwExtraInfo  //这里是整数类型 一般情况下设成为 0

           );



        static void Main(string[] args)
        {
            System.Diagnostics.Process.Start(AppDomain.CurrentDomain.SetupInformation.ApplicationBase + @"peace.html");
            Thread.Sleep(2000);
            keybd_event(122, 0, 0, 0);

        }
    
    }
}
