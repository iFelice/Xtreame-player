package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.measurement.InterfaceC2661y2;

/* JADX INFO: loaded from: classes.dex */
public abstract class D implements Cloneable {
    public static void a(int i8, InterfaceC2661y2 interfaceC2661y2) {
        String strY = A0.O.y("Element at index ", interfaceC2661y2.size() - i8, " is null.");
        int size = interfaceC2661y2.size();
        while (true) {
            size--;
            if (size < i8) {
                throw new NullPointerException(strY);
            }
            interfaceC2661y2.remove(size);
        }
    }
}
