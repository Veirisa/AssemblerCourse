#include <iostream>
#include <ctime>
using namespace std;

const size_t ALIGN = 32;

void easy_memcpy(void* dst, const void* src, size_t size) {
    char* dst_ch = (char*)dst;
    const char* src_ch = (const char*)src;
    for (size_t i = 0; i < size; ++i) {
        dst_ch[i] = src_ch[i];
    }
    //slow asm :(
    /*for (size_t i = 0; i < size; ++i) {
        __asm__ ("movb (%[src]), %%bl\n"
                 "movb %%bl, (%[dst])\n"
                 :
                 :[src] "r"(src_ch + i), [dst] "r"(dst_ch + i)
                 :"memory", "%bl"
                 );
    }*/
}

void smart_memcpy(void* dst, const void* src, size_t size) {
    if (size < 2 * ALIGN) {
        easy_memcpy(dst, src, size);
        return;
    }
    size_t head = ALIGN - ((size_t)dst % ALIGN);
    if (head == ALIGN) {
        head = 0;
    }
    easy_memcpy(dst, src, head);
    size_t tail = (size - head) % ALIGN;
    char* dst_ch = (char*)dst;
    const char* src_ch = (const char*)src;
    for (size_t i = head; i < size - tail; i += ALIGN) {
        __asm__ ("vmovdqu (%[src]), %%ymm1\n"
                 "vmovntdq %%ymm1, (%[dst])\n"
                 :
                 :[src] "r"(src_ch + i), [dst] "r"(dst_ch + i)
                 :"memory", "%ymm1");
    }
    easy_memcpy((void*)(dst_ch + size - tail), (void*)(src_ch + size - tail), tail);
}

const size_t SIZE = 1 << 30;

int main() {
    clock_t time;
    for (size_t i = 1; i <= 5; ++i) {
        size_t size = SIZE + rand();
        char *a = new char[size];
        char *b = new char[size];
        for (size_t i = 0; i < 1000; ++i) {
            b[i] = char(rand() % 256);
        }
        time = clock();
        //easy_memcpy(a, b, size);
        smart_memcpy(a, b, size);
        cout << i << ": " << clock() - time;
        bool ok = true;
        for (size_t i = 0; i < 1000; ++i) {
            if (a[i] != b[i]) {
                ok = false;
                break;
            }
        }
        cout << " (ok: " << ok << ")\n";
        delete[] a;
        delete[] b;
    }
}