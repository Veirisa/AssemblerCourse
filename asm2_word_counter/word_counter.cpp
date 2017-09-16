#include <cstdint>
#include <wmmintrin.h>
#include <iostream>
#include <ctime>
using namespace std;

const size_t ALIGN = 16;

struct result {
    size_t ans;
    bool first_space;
    bool last_space;
    result(size_t ans, bool first_space, bool last_space) : ans(ans), first_space(first_space), last_space(last_space) {};
};

result easy_counter_result(const char* s, size_t size) {
    size_t ans = 0;
    bool first_space = true;
    if (size > 0) {
        first_space = s[0] == ' ';
    }
    bool last_space = true;
    for (size_t i = 0; i < size; ++i) {
        if (last_space && s[i] != ' ') {
            ++ans;
        }
        last_space = s[i] == ' ';
    }
    return result(ans, first_space, last_space);
};

size_t easy_counter(const char* s, size_t size) {
    return easy_counter_result(s, size).ans;
}

size_t smart_counter(const char* s, size_t size) {
    if (size < 4 * ALIGN) {
        return easy_counter(s, size);
    }
    size_t head = ALIGN - ((size_t) s % ALIGN);
    if (head == ALIGN) {
        head = 0;
    }
    result head_result = easy_counter_result(s, head);
    size_t tail = ((size - head) % ALIGN) + ALIGN;
    result tail_result = easy_counter_result(s + size - tail, tail);

    size_t ans = 0;
    ans += head_result.ans;
    ans += tail_result.ans;
    ans *= 2;

    if (s[head] != ' ') {
        (!head || head_result.last_space) ? ++ans : --ans;
    }

    if (s[size - tail - 1] != ' ') {
        (!tail || tail_result.first_space) ? ++ans : --ans;
    }

    __m128i save, now;
    __m128i spaces = _mm_set_epi8(32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32);

    __asm__ ("movdqa (%[s]), %[save]\n"
             "pcmpeqb %[spaces], %[save]\n"
             : [save] "=x"(save)
             : "[save]"(save), [s] "r"(s), [spaces] "x"(spaces)
             :
             );

    uint32_t reg_bit;
    for (size_t i = head + ALIGN; i < size - tail + ALIGN; i += ALIGN) {
        __asm__ ("movdqa (%[cur_s]), %%xmm1\n"
                 "pcmpeqb %[spaces], %%xmm1\n"
                 "movdqa %%xmm1, %[now]\n"
                 "palignr $1, %[save], %%xmm1\n"
                 "xorpd %[save], %%xmm1\n"
                 "movdqa %[now], %[save]\n"
                 "pmovmskb %%xmm1, %[reg_bit]\n"
                 : [save] "=x"(save), [now] "=x"(now), [reg_bit] "=r"(reg_bit)
                 : "[save]"(save), "[now]"(now), [cur_s] "r"(s + i), [spaces] "x"(spaces)
                 : "%xmm1"
                 );
        while (reg_bit) {
            reg_bit &= reg_bit - 1;
            ++ans;
        }
        //ans += __builtin_popcount(reg_bit);
    }

    return ans / 2;
}

const size_t SIZE = 1 << 30;

int main() {
    string sx = "aaa  aa   a a    aa  aaaaaa a a aa  aa a aa aaa Xxx xxx xxx xxx xxx";
    cout << easy_counter(sx.c_str(), sx.size()) << " " << smart_counter(sx.c_str(),  sx.size()) << "\n";
    string as = "aaa  aa   a a    aa  aaaaaa a a aa  aa a aa aaaA xx xxx xxx xxx xxx";
    cout << easy_counter(as.c_str(), as.size()) << " " << smart_counter(as.c_str(),  sx.size()) << "\n";
    string ss = "aaa  aa   a a    aa  aaaaaa a a aa  aa a aa aaa  xx xxx xxx xxx xxx";
    cout << easy_counter(ss.c_str(), ss.size()) << " " << smart_counter(ss.c_str(),  ss.size()) << "\n";
    string ax = "aaa  aa   a a    aa  aaaaaa a a aa  aa a aa aaaAXxx xxx xxx xxx xxx";
    cout << easy_counter(ax.c_str(), ax.size()) << " " << smart_counter(ax.c_str(),  ax.size())  << "\n\n";

    clock_t time;
    for (size_t i = 1; i <= 5; ++i) {
        string *s = new string(SIZE + rand(), ' ');
        const char* ch = s->c_str();
        size_t size = s->size();
        for (size_t j = 0; j < 100; ++j) {
            (*s)[j] = rand() % 2 ? ' ' : 'a';
            (*s)[size - j] = rand() % 2 ? ' ' : 'a';
        }
        time = clock();
        //cout << i << ": " << easy_counter(ch, size) << " " << smart_counter(ch,  size) << " " << "\n";
        //cout << i << ": " << " (" << easy_counter(ch,  size) << ") " << clock() - time << "\n";
        cout << i << ": (" << smart_counter(ch,  size) << ") " << clock() - time << "\n";
        delete s;
    }
    //51 43 52 51 49
}

