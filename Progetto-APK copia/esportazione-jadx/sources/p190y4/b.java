package p190y4;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements l {
    public int a(int i8, CharSequence charSequence) {
        int length = charSequence.length();
        k.t(i8, length);
        while (i8 < length) {
            if (b(charSequence.charAt(i8))) {
                return i8;
            }
            i8++;
        }
        return -1;
    }

    @Override // p190y4.l
    public final boolean apply(Object obj) {
        return b(((Character) obj).charValue());
    }

    public abstract boolean b(char c8);
}
