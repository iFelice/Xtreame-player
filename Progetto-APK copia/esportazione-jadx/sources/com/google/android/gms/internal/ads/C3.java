package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class C3 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C2065u2 f12561d = new C2065u2(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f12562a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f12563b = new ArrayList(64);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12564c = 0;

    public final synchronized void a(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length;
            if (length <= 4096) {
                this.f12562a.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.f12563b, bArr, f12561d);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.f12563b.add(iBinarySearch, bArr);
                this.f12564c += length;
                c();
            }
        }
    }

    public final synchronized byte[] b(int i8) {
        for (int i9 = 0; i9 < this.f12563b.size(); i9++) {
            byte[] bArr = (byte[]) this.f12563b.get(i9);
            int length = bArr.length;
            if (length >= i8) {
                this.f12564c -= length;
                this.f12563b.remove(i9);
                this.f12562a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i8];
    }

    public final synchronized void c() {
        while (this.f12564c > 4096) {
            byte[] bArr = (byte[]) this.f12562a.remove(0);
            this.f12563b.remove(bArr);
            this.f12564c -= bArr.length;
        }
    }
}
