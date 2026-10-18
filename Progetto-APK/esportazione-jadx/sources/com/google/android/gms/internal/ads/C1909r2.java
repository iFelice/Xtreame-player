package com.google.android.gms.internal.ads;

import java.util.regex.Pattern;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.r2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1909r2 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f20671c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f20672d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1534jr f20673a = new C1534jr();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringBuilder f20674b = new StringBuilder();

    public static String a(C1534jr c1534jr, StringBuilder sb) {
        b(c1534jr);
        if (c1534jr.o() == 0) {
            return null;
        }
        String strC = c(c1534jr, sb);
        if (!HttpUrl.FRAGMENT_ENCODE_SET.equals(strC)) {
            return strC;
        }
        char cW = (char) c1534jr.w();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(cW);
        return sb2.toString();
    }

    public static void b(C1534jr c1534jr) {
        while (true) {
            for (boolean z7 = true; c1534jr.o() > 0 && z7; z7 = false) {
                int i8 = c1534jr.f19516b;
                byte[] bArr = c1534jr.f19515a;
                byte b8 = bArr[i8];
                char c8 = (char) b8;
                if (c8 == '\t' || c8 == '\n' || c8 == '\f' || c8 == '\r' || c8 == ' ') {
                    c1534jr.k(1);
                } else {
                    int i9 = c1534jr.f19517c;
                    if (i8 + 2 <= i9) {
                        int i10 = i8 + 1;
                        if (b8 == 47) {
                            int i11 = i8 + 2;
                            if (bArr[i10] == 42) {
                                while (true) {
                                    int i12 = i11 + 1;
                                    if (i12 >= i9) {
                                        break;
                                    }
                                    if (((char) bArr[i11]) == '*' && ((char) bArr[i12]) == '/') {
                                        i9 = i11 + 2;
                                        i11 = i9;
                                    } else {
                                        i11 = i12;
                                    }
                                }
                                c1534jr.k(i9 - c1534jr.f19516b);
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            return;
        }
    }

    public static String c(C1534jr c1534jr, StringBuilder sb) {
        char c8;
        sb.setLength(0);
        int i8 = c1534jr.f19516b;
        int i9 = c1534jr.f19517c;
        loop0: while (true) {
            boolean z7 = false;
            while (true) {
                if (i8 < i9 && !z7) {
                    c8 = (char) c1534jr.f19515a[i8];
                    if ((c8 >= 'A' && c8 <= 'Z') || ((c8 >= 'a' && c8 <= 'z') || ((c8 >= '0' && c8 <= '9') || c8 == '#' || c8 == '-' || c8 == '.' || c8 == '_'))) {
                        break;
                    }
                    z7 = true;
                } else {
                    break loop0;
                }
            }
            sb.append(c8);
            i8++;
        }
        c1534jr.k(i8 - c1534jr.f19516b);
        return sb.toString();
    }
}
