package com.google.android.gms.internal.ads;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public final class YN {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceC1581km f17605c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SparseArray f17604b = new SparseArray();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f17603a = -1;

    public YN(GH gh) {
        this.f17605c = gh;
    }

    public final Object a(int i8) {
        SparseArray sparseArray;
        if (this.f17603a == -1) {
            this.f17603a = 0;
        }
        while (true) {
            int i9 = this.f17603a;
            sparseArray = this.f17604b;
            if (i9 <= 0 || i8 >= sparseArray.keyAt(i9)) {
                break;
            }
            this.f17603a--;
        }
        while (this.f17603a < sparseArray.size() - 1 && i8 >= sparseArray.keyAt(this.f17603a + 1)) {
            this.f17603a++;
        }
        return sparseArray.valueAt(this.f17603a);
    }
}
