package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class T {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f16571c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f16572a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f16573b = -1;

    public final boolean a() {
        return (this.f16572a == -1 || this.f16573b == -1) ? false : true;
    }

    public final void b(Q9 q9) {
        int i8 = 0;
        while (true) {
            K9[] k9Arr = q9.f15993G;
            if (i8 >= k9Arr.length) {
                return;
            }
            K9 k9 = k9Arr[i8];
            if (k9 instanceof N0) {
                N0 n7 = (N0) k9;
                if ("iTunSMPB".equals(n7.f14838I) && c(n7.f14839J)) {
                    return;
                }
            } else if (k9 instanceof R0) {
                R0 r7 = (R0) k9;
                if ("com.apple.iTunes".equals(r7.f16188H) && "iTunSMPB".equals(r7.f16189I) && c(r7.f16190J)) {
                    return;
                }
            } else {
                continue;
            }
            i8++;
        }
    }

    public final boolean c(String str) {
        Matcher matcher = f16571c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            String strGroup = matcher.group(1);
            int i8 = Et.f13234a;
            int i9 = Integer.parseInt(strGroup, 16);
            int i10 = Integer.parseInt(matcher.group(2), 16);
            if (i9 <= 0 && i10 <= 0) {
                return false;
            }
            this.f16572a = i9;
            this.f16573b = i10;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
