package com.google.android.gms.internal.pal;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.l1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2758l1 extends AbstractC2766m1 {

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final /* synthetic */ int f23922D = 0;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public p075j3.a f23923C;

    @Override // com.google.android.gms.internal.pal.AbstractC2766m1, com.google.android.gms.internal.pal.AbstractC2750k1
    public final L4 b(Context context, View view, Activity activity) {
        return null;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2766m1, com.google.android.gms.internal.pal.AbstractC2750k1
    public final L4 d(Context context, View view, Activity activity) {
        return null;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2766m1
    public final ArrayList h(A1 a8, Context context, L4 l4, F2 f8) {
        ArrayList arrayList = new ArrayList();
        if (a8.f23426b == null) {
            return arrayList;
        }
        arrayList.add(new J1(a8, l4, a8.a(), 3));
        return arrayList;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2766m1
    public final void i(A1 a8, Context context, L4 l4, F2 f8) {
        if (!a8.f23437m) {
            AbstractC2766m1.n(h(a8, context, l4, f8));
            return;
        }
        p075j3.a aVar = this.f23923C;
        if (aVar != null) {
            String str = aVar.f25695a;
            if (!TextUtils.isEmpty(str)) {
                l4.j(C1.b(str));
                if (l4.f23476I) {
                    l4.f();
                    l4.f23476I = false;
                }
                C2765m0.b0((C2765m0) l4.f23475H);
                boolean z7 = this.f23923C.f25696b;
                if (l4.f23476I) {
                    l4.f();
                    l4.f23476I = false;
                }
                C2765m0.S((C2765m0) l4.f23475H, z7);
            }
            this.f23923C = null;
        }
    }
}
