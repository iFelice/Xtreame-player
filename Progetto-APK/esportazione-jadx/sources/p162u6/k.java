package p162u6;

import java.util.Collection;
import p027d2.v;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k extends v {
    public static int v(Iterable iterable) {
        q0.h(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return 10;
    }
}
