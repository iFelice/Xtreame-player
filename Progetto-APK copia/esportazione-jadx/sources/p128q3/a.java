package p128q3;

import android.app.Activity;
import android.content.Context;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.AbstractC1812p8;
import com.google.android.gms.internal.ads.C1932ra;
import com.google.android.gms.internal.ads.Q7;
import p043f3.f;
import p079k.RunnableC3015g;
import p090l3.C3099q;
import p120p3.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static void a(Context context, String str, f fVar, b bVar) {
        c.i(context, "Context cannot be null.");
        c.i(str, "AdUnitId cannot be null.");
        c.i(fVar, "AdRequest cannot be null.");
        c.d("#008 Must be called on the main UI thread.");
        Q7.a(context);
        if (((Boolean) AbstractC1812p8.f20427g.l()).booleanValue()) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.xa)).booleanValue()) {
                b.f28201a.execute(new RunnableC3015g(context, str, fVar, bVar, 4, 0));
                return;
            }
        }
        new C1932ra(context, str).c(fVar.f25163a, bVar);
    }

    public abstract void b(Activity activity);
}
