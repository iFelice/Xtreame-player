package G0;

import B0.C0041c;
import C0.C0082g;
import android.net.Uri;
import com.google.android.gms.internal.ads.AbstractC1349gB;
import com.google.android.gms.internal.measurement.H1;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import p094m0.AbstractC3124g;
import p094m0.I;
import p141s0.C3191p;
import p141s0.InterfaceC3183h;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f3364a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p094m0.B f3365b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public i f3366c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public InterfaceC3183h f3367d;

    public final i a(p094m0.B b8) {
        InterfaceC3183h interfaceC3183h = this.f3367d;
        InterfaceC3183h interfaceC3183h2 = interfaceC3183h;
        if (interfaceC3183h == null) {
            C3191p c3191p = new C3191p();
            c3191p.f29987b = null;
            interfaceC3183h2 = c3191p;
        }
        Uri uri = b8.f26660b;
        C0041c c0041c = new C0041c(uri == null ? null : uri.toString(), b8.f26663e, interfaceC3183h2);
        AbstractC1349gB it = b8.f26661c.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            str.getClass();
            str2.getClass();
            synchronized (((Map) c0041c.f916J)) {
                ((Map) c0041c.f916J).put(str, str2);
            }
        }
        HashMap map = new HashMap();
        UUID uuid = AbstractC3124g.f26852a;
        U4.b bVar = new U4.b();
        UUID uuid2 = b8.f26659a;
        C0082g c0082g = z.f3389d;
        uuid2.getClass();
        boolean z7 = b8.f26662d;
        int[] iArrG0 = p190y4.k.g0(b8.f26664f);
        for (int i8 : iArrG0) {
            boolean z8 = true;
            if (i8 != 2 && i8 != 1) {
                z8 = false;
            }
            H1.d(z8);
        }
        i iVar = new i(uuid2, c0082g, c0041c, map, false, (int[]) iArrG0.clone(), z7, bVar, 300000L);
        H1.i(iVar.f3351R.isEmpty());
        iVar.f3360a0 = 0;
        iVar.f3361b0 = null;
        return iVar;
    }

    public final r b(I i8) {
        i iVar;
        i8.f26702b.getClass();
        p094m0.B b8 = i8.f26702b.f26677c;
        if (b8 == null) {
            return r.f3378d;
        }
        synchronized (this.f3364a) {
            try {
                if (!b8.equals(this.f3365b)) {
                    this.f3365b = b8;
                    this.f3366c = a(b8);
                }
                iVar = this.f3366c;
                iVar.getClass();
            } catch (Throwable th) {
                throw th;
            }
        }
        return iVar;
    }
}
