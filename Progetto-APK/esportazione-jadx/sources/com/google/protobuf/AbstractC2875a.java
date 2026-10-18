package com.google.protobuf;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: renamed from: com.google.protobuf.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2875a implements P1 {
    public static void a(Iterable iterable, List list) {
        Charset charset = AbstractC2960v1.f24524a;
        iterable.getClass();
        if (iterable instanceof A1) {
            List listJ = ((A1) iterable).j();
            A1 a8 = (A1) list;
            int size = list.size();
            for (Object obj : listJ) {
                if (obj == null) {
                    String str = "Element at index " + (a8.size() - size) + " is null.";
                    for (int size2 = a8.size() - 1; size2 >= size; size2--) {
                        a8.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                if (obj instanceof r) {
                    a8.g((r) obj);
                } else {
                    a8.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof InterfaceC2898f2) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
        }
        int size3 = list.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                String str2 = "Element at index " + (list.size() - size3) + " is null.";
                for (int size4 = list.size() - 1; size4 >= size3; size4--) {
                    list.remove(size4);
                }
                throw new NullPointerException(str2);
            }
            list.add(obj2);
        }
    }
}
