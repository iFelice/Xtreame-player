package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class Lx {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f14590b = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f14591a = new ArrayList();

    public final void a(View view, EnumC2371zx enumC2371zx) {
        Kx kx;
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
        if (!f14590b.matcher("Ad overlay").matches()) {
            throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
        }
        ArrayList arrayList = this.f14591a;
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                kx = null;
                break;
            }
            kx = (Kx) it.next();
        } while (kx.f14436a.get() != view);
        if (kx == null) {
            arrayList.add(new Kx(view, enumC2371zx));
        }
    }
}
