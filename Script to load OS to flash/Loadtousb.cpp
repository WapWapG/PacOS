#include <iostream>
#include <string>
using namespace std;

int main()
{
    string drive;
    string image;
    system("lsblk");
    cout << "Enter name of drive where you need to load PacOS" << endl;
    cout << "Введите название накопителя куда нужно загрузить PacOs" << endl;
    cout << "# /dev/name" << endl;
    cin >> drive;
    string command1 = "sudo dd if=Loader.bin of=" + drive + "bs=512 seek=0";
    string command2 = "sudo dd if=Core.bin of=" + drive + "bs=512 seek=1";
    string command3 = "sudo dd if=" + drive + " of=PacOS.img";
    system(command1.c_str());
    system(command2.c_str());
    cout << "Writing complete" << endl;
    cout << "Note that if you entered the wrong device, this cannot be calculated" << endl;
    cout << "Запись завершена" << endl;
    cout << "Учтите если вы ввели неправильное устройство то это невозможно считать" << endl;
    cout << "This is code for me WapWapG, to make img.  To make image write: img" << endl;
    cin >> image;
    if (image == "img"){
        system(command3.c_str());
        cout << "Img create" << endl;
    }
    return 0;
}
