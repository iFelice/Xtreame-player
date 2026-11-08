package p000a;

import D.a;
import E1.C0181p;
import O1.J;
import Y.C;
import android.app.Activity;
import android.app.Notification;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.view.View;
import androidx.work.impl.foreground.SystemForegroundService;
import com.google.android.gms.internal.cast.BinderC2486q;
import com.google.android.gms.internal.cast.C2490r0;
import com.google.android.gms.internal.cast.C2494s0;
import com.google.android.gms.internal.cast.N;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.WeakHashMap;
import p016c.c;
import p016c.d;
import p039f.S;
import p050g2.j;

/* JADX INFO: loaded from: classes.dex */
public final class g implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f8566G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f8567H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f8568I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f8569J;

    public /* synthetic */ g(Object obj, int i8, Object obj2, int i9) {
        this.f8566G = i9;
        this.f8568I = obj;
        this.f8567H = i8;
        this.f8569J = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        c cVar;
        switch (this.f8566G) {
            case 0:
                h hVar = (h) this.f8568I;
                Object obj = ((J) this.f8569J).f5274H;
                String str = (String) hVar.f10546b.get(Integer.valueOf(this.f8567H));
                if (str == null) {
                    return;
                }
                d dVar = (d) hVar.f10550f.get(str);
                if (dVar == null || (cVar = dVar.f10543a) == null) {
                    hVar.f10552h.remove(str);
                    hVar.f10551g.put(str, obj);
                    return;
                } else {
                    if (hVar.f10549e.remove(str)) {
                        ((C) cVar).b(obj);
                        return;
                    }
                    return;
                }
            case 1:
                ((h) this.f8568I).a(this.f8567H, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", (IntentSender.SendIntentException) this.f8569J));
                return;
            case 2:
                ((p109o.d) this.f8568I).f27585H.e(this.f8567H);
                return;
            case 3:
                String[] strArr = (String[]) this.f8569J;
                int[] iArr = new int[strArr.length];
                Activity activity = (Activity) this.f8568I;
                PackageManager packageManager = activity.getPackageManager();
                String packageName = activity.getPackageName();
                int length = strArr.length;
                for (int i8 = 0; i8 < length; i8++) {
                    iArr[i8] = packageManager.checkPermission(strArr[i8], packageName);
                }
                ((a) activity).onRequestPermissionsResult(this.f8567H, strArr, iArr);
                return;
            case 4:
                Object obj2 = ((S) this.f8569J).f24988H;
                return;
            case 5:
                ((j) this.f8569J).a(this.f8567H, (Intent) this.f8568I);
                return;
            case 6:
                ((SystemForegroundService) this.f8568I).f9800K.notify(this.f8567H, (Notification) this.f8569J);
                return;
            case 7:
                BinderC2486q binderC2486q = (BinderC2486q) this.f8569J;
                C0181p c0181p = (C0181p) this.f8568I;
                int i9 = this.f8567H;
                synchronized (binderC2486q.f22783J) {
                    binderC2486q.v0(c0181p, i9);
                    break;
                }
                return;
            case 8:
                N n7 = (N) this.f8569J;
                C2494s0 c2494s0 = (C2494s0) this.f8568I;
                n7.getClass();
                C2490r0 c2490r0N = C2494s0.n(c2494s0);
                c2490r0N.d();
                C2494s0 c2494s1 = (C2494s0) c2490r0N.f22745H;
                String str2 = n7.f22499d;
                C2494s0.v(c2494s1, str2);
                c2490r0N.d();
                C2494s0.w((C2494s0) c2490r0N.f22745H, str2);
                Long l4 = n7.f22500e;
                if (l4 != null) {
                    int iLongValue = (int) l4.longValue();
                    c2490r0N.d();
                    C2494s0.x((C2494s0) c2490r0N.f22745H, iLongValue);
                }
                C2494s0 c2494s2 = (C2494s0) c2490r0N.b();
                int i10 = n7.f22503h;
                int i11 = i10 - 1;
                R2.a aVar = null;
                if (i10 == 0) {
                    throw null;
                }
                int i12 = this.f8567H;
                if (i11 == 0) {
                    aVar = new R2.a(Integer.valueOf(i12 - 1), c2494s2, R2.c.f6286H);
                } else if (i11 == 1) {
                    aVar = new R2.a(Integer.valueOf(i12 - 1), c2494s2, R2.c.f6285G);
                }
                N.f22494i.b("analytics event: %s", aVar);
                com.bumptech.glide.c.h(aVar);
                p109o.j jVar = n7.f22502g;
                if (jVar != null) {
                    jVar.b(aVar);
                    return;
                }
                return;
            default:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f8568I;
                T.c cVar2 = bottomSheetBehavior.f24124m;
                if (cVar2 == null || !cVar2.f()) {
                    bottomSheetBehavior.v(this.f8567H);
                    return;
                }
                View view = (View) this.f8569J;
                WeakHashMap weakHashMap = N.N.f4843a;
                view.postOnAnimation(this);
                return;
        }
    }

    public /* synthetic */ g(Object obj, Object obj2, int i8, int i9) {
        this.f8566G = i9;
        this.f8569J = obj;
        this.f8568I = obj2;
        this.f8567H = i8;
    }

    public /* synthetic */ g(Object obj, Object obj2, int i8, int i9, int i10) {
        this.f8566G = i9;
        this.f8568I = obj;
        this.f8569J = obj2;
        this.f8567H = i8;
    }
}
