package p195z1;

import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import p117p0.E;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f31701c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f31702d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final E f31703a = new E();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringBuilder f31704b = new StringBuilder();

    public static String a(E e8, StringBuilder sb) {
        boolean z7 = false;
        sb.setLength(0);
        int i8 = e8.f28036b;
        int i9 = e8.f28037c;
        while (i8 < i9 && !z7) {
            char c8 = (char) e8.f28035a[i8];
            if ((c8 < 'A' || c8 > 'Z') && ((c8 < 'a' || c8 > 'z') && !((c8 >= '0' && c8 <= '9') || c8 == '#' || c8 == '-' || c8 == '.' || c8 == '_'))) {
                z7 = true;
            } else {
                i8++;
                sb.append(c8);
            }
        }
        e8.M(i8 - e8.f28036b);
        return sb.toString();
    }

    public static String b(E e8, StringBuilder sb) {
        c(e8);
        if (e8.a() == 0) {
            return null;
        }
        String strA = a(e8, sb);
        if (!strA.isEmpty()) {
            return strA;
        }
        return HttpUrl.FRAGMENT_ENCODE_SET + ((char) e8.z());
    }

    public static void c(E e8) {
        while (true) {
            for (boolean z7 = true; e8.a() > 0 && z7; z7 = false) {
                int i8 = e8.f28036b;
                byte[] bArr = e8.f28035a;
                byte b8 = bArr[i8];
                char c8 = (char) b8;
                if (c8 == '\t' || c8 == '\n' || c8 == '\f' || c8 == '\r' || c8 == ' ') {
                    e8.M(1);
                } else {
                    int i9 = e8.f28037c;
                    int i10 = i8 + 2;
                    if (i10 <= i9) {
                        int i11 = i8 + 1;
                        if (b8 == 47 && bArr[i11] == 42) {
                            while (true) {
                                int i12 = i10 + 1;
                                if (i12 >= i9) {
                                    break;
                                }
                                if (((char) bArr[i10]) == '*' && ((char) bArr[i12]) == '/') {
                                    i10 += 2;
                                    i9 = i10;
                                } else {
                                    i10 = i12;
                                }
                            }
                            e8.M(i9 - e8.f28036b);
                        }
                    }
                }
            }
            return;
        }
    }
}
